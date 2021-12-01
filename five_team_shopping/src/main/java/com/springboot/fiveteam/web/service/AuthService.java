package com.springboot.fiveteam.web.service;

import com.springboot.fiveteam.web.dto.MyAccountDto;
import com.springboot.fiveteam.web.dto.SignupDto;

public interface AuthService {
	public int signUp(SignupDto signupDto);
	public int myAccountUpdate(String user_id, MyAccountDto myAccountDto);
	public int myAccountDelete(String user_id);
}