package com.springboot.fiveteam.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import com.springboot.fiveteam.config.oauth2.PrincipalOauth2UserService;

import lombok.RequiredArgsConstructor;

@EnableWebSecurity
@Configuration //IoC 등록
@RequiredArgsConstructor
public class SecurityConfig extends WebSecurityConfigurerAdapter {
	
	private final PrincipalOauth2UserService principalOauth2UserService;
	
	@Bean
	public BCryptPasswordEncoder encoder() {
		return new BCryptPasswordEncoder();
	}
	
	@Override
	protected void configure(HttpSecurity http) throws Exception {// 해당 경로들 모두 인증 요청 보내기
		http.csrf().disable(); // csrf 비활성화 (postman 등 다른 곳에서 request 받는것을 방지하는 csrf, 이와 같은 경우는 403 권한 에러 발생)
		http.authorizeRequests()
		.antMatchers("/user/**") // 해당 url 요청시 아래의 loginPage로 강제이동
		.authenticated() // 인증 필요함
		.anyRequest() // antMatcher 외에 모든요청
		.permitAll() // antMatcher 경로 외 다른 경로는 요청이 없어도 무관(모든 권한을 부여한다)
		.and()
		.formLogin() // 로그인 페이지 커스텀
		.loginPage("/signin") // 해당 로그인 페이지
		.loginProcessingUrl("/signin") // post요청(로그인 요청), 자동처리하므로 컨트롤러 따로 만들필요가 없다
		.defaultSuccessUrl("/") // 로그인 성공시 이동할 URL
		.and()
		.oauth2Login()
		.loginPage("/signin")
		.userInfoEndpoint()
		/*
		1. 코드 받아오기(인증)
		2. 액세스 토큰(권한)
		3. 사용자 프로필 정보 가져오기
		 */
		.userService(principalOauth2UserService); // 가져온 프로필 후처리(사용되어질 서비스가 필요함)
	}

}
