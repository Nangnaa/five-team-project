package com.springboot.fiveteam.web.service;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.springboot.fiveteam.domain.user.User;
import com.springboot.fiveteam.domain.user.UserRepository;
import com.springboot.fiveteam.web.dto.SignupDto;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor // 자동으로 Autowired
@Service
public class AuthServiceImpl implements AuthService {
	
	private final UserRepository userRepository; // @RequiredArgsConstructor 사용을 위해 final 필요

	@Override
	public int signUp(SignupDto signupDto) {
		User user = signupDto.toEntity();
		int useridCheckResult = userRepository.useridCheck(user);
		
		if(useridCheckResult == 1) { // 이미 존재하는 user_id
			return 2;
		} else { // 회원가입 가능
			user.setUser_password(new BCryptPasswordEncoder().encode(user.getUser_password())); // 비밀번호는 암호화 메소드를 거쳐서
			user.setUser_role("ROLE_USER");
			int signupResult = userRepository.signup(user);
			return signupResult; // 0 또는 1 return (0: DB오류, 1: 성공)
		}
	}
}