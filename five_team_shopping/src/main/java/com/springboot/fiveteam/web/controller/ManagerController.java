package com.springboot.fiveteam.web.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.springboot.fiveteam.domain.user.User;
import com.springboot.fiveteam.domain.user.UserRepository;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Controller
public class ManagerController {
	
	private final UserRepository userRepository;
	private final HttpSession session;

	// 관리자 로그인
	@GetMapping("/auth/manager/signin")
	public String managerLoginForm() {
		return "auth/managerSignin";
	}
	
	// 관리자 로그인
	@PostMapping("/manger/signin")
	public String managerLogin(User user) {
		User managerEnity = userRepository.mSignin(user.getUser_id(), user.getUser_password());
		
		if(managerEnity == null) {
			return "auth/managerSignin";
		}else {
			session.setAttribute("managerPrincipal", managerEnity);
			return "redirect:/manager";
		}
	}
	
}
