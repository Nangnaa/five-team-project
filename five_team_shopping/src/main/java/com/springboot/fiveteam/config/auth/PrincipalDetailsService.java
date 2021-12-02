package com.springboot.fiveteam.config.auth;

import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.springboot.fiveteam.domain.user.User;
import com.springboot.fiveteam.domain.user.UserRepository;

import lombok.RequiredArgsConstructor;

//loadUser 메소드 종료시(return할시) @AuthenticationPrincipal(세션정보를 담는 공간) 어노테이션 사용가능하도록 전환
//@AuthenticationPrincipal // (세션정보를 담는 공간)
@RequiredArgsConstructor
@Service
public class PrincipalDetailsService implements UserDetailsService {
	
	private final UserRepository userRepository;
	
	@Override
	public UserDetails loadUserByUsername(String user_id) throws UsernameNotFoundException {
		User userEntity = userRepository.getUser(user_id);
		if(userEntity == null) { // 해당 아이디 없음
			return null;
		} else {
			UserDetails principalDetails = new PrincipalDetails(userEntity);
			return principalDetails;
		}
	}	
}
