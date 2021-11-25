package com.springboot.fiveteam.web.service;

import com.springboot.fiveteam.web.dto.SignupDto;

public interface AuthService {
	public int signUp(SignupDto signupDto);
}