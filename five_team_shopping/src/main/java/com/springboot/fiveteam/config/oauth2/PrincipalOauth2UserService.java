package com.springboot.fiveteam.config.oauth2;

import java.util.Map;
import java.util.UUID;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.oauth2.client.userinfo.DefaultOAuth2UserService;
import org.springframework.security.oauth2.client.userinfo.OAuth2UserRequest;
import org.springframework.security.oauth2.core.OAuth2AuthenticationException;
import org.springframework.security.oauth2.core.user.OAuth2User;
import org.springframework.stereotype.Service;

import com.springboot.fiveteam.config.auth.PrincipalDetails;
import com.springboot.fiveteam.config.oauth2.provider.OAuth2UserDto;
import com.springboot.fiveteam.domain.user.User;
import com.springboot.fiveteam.domain.user.UserRepository;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class PrincipalOauth2UserService extends DefaultOAuth2UserService {

	private final UserRepository userRepository;
	
	@Override
	public OAuth2User loadUser(OAuth2UserRequest userRequest) throws OAuth2AuthenticationException {
		
		// System.out.println(userRequest.getClientRegistration());
		/*
		ClientRegistration
		{registrationId='google', 
		clientId='504527517092-esmfnq307r5o8o56g23bb0itplch25nj.apps.googleusercontent.com', 
		clientSecret='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', 
		clientAuthenticationMethod=org.springframework.security.oauth2.core.ClientAuthenticationMethod@4fcef9d3, 
		authorizationGrantType=org.springframework.security.oauth2.core.AuthorizationGrantType@5da5e9f3, 
		redirectUri='{baseUrl}/{action}/oauth2/code/{registrationId}', scopes=[email, profile], 
		providerDetails=org.springframework.security.oauth2.client.registration.ClientRegistration$ProviderDetails@61cc0061, 
		clientName='Google'}
		 */
		System.out.println(userRequest.getAccessToken()); // org.springframework.security.oauth2.core.OAuth2AccessToken@aefdf577
		System.out.println(super.loadUser(userRequest).getAttributes()); // map 형태로 있는 사용자 정보
		/*
		sub - 고유 식별자
		name, given_name, family_name - 성, 이름
		picture - 프로필 사진
		email - 이메일
		email_verified=true
		locale - 지역
		 */
		
		OAuth2User oAuth2User = super.loadUser(userRequest);
		Map<String, Object> attributes = oAuth2User.getAttributes();
		
		String provider = userRequest.getClientRegistration().getRegistrationId();
		String providerId = null;
		
		// 각 3사마다 프로필정보 키,값이 각각 다름
		if(provider.equals("google")) {
			providerId = (String)attributes.get("sub"); // 키 이름 : sub
		} else if(provider.equals("kakao")) {
			
		} else if(provider.equals("naver")) {
			attributes = (Map<String, Object>)attributes.get("response");
			providerId = (String)attributes.get("id");
		} else {
			providerId = UUID.randomUUID().toString().replaceAll("-", ""); // 임시적으로 부여
		}
		
		String user_id = provider + "_" + providerId;
		User userEntity = userRepository.getUser(user_id);
		
		if(userEntity == null) {
			// 처음 사이트 로그인
			OAuth2UserDto oAuth2UserDto = OAuth2UserDto.builder()
					.user_id(user_id)
					.user_password(new BCryptPasswordEncoder().encode(UUID.randomUUID().toString())) // 비밀번호 암호화하여 임시로 발급
					.user_name((String)attributes.get("name"))
					.user_email((String)attributes.get("email"))
					.user_role("ROLE_USER")
					.provider(provider)
					.build();
			
			userEntity = oAuth2UserDto.toEntity();
			userRepository.signup(userEntity);
		}
		return new PrincipalDetails(userEntity, attributes);
	}
}