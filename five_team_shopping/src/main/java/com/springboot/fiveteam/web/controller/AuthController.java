package com.springboot.fiveteam.web.controller;

import org.springframework.security.core.annotation.AuthenticationPrincipal;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import com.springboot.fiveteam.config.auth.PrincipalDetails;
import com.springboot.fiveteam.domain.user.User;
import com.springboot.fiveteam.domain.user.UserRepository;
import com.springboot.fiveteam.web.dto.MyAccountDto;
import com.springboot.fiveteam.web.service.AuthService;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Controller
public class AuthController {
	
	private final AuthService authService; // @RequiredArgsConstructor 사용을 위해 final 필요
	private final UserRepository userRepository;
	
	@GetMapping("/signin")
	public String loginForm() { // 로그인 진입
		return "auth/signin"; // 
	}
	
	@GetMapping("/myaccount-first")
	public String myAccountFirstForm(@AuthenticationPrincipal PrincipalDetails principalDetails) { // 최초 가입후 회원정보 진입
		if (principalDetails == null) { // 로그인 상태가 아닐경우
			return "auth/signin"; 
		} else { // 로그인 상태일경우
			if (principalDetails.getUser().user_zipcode == null || principalDetails.getUser().user_address1 == null || principalDetails.getUser().user_tel == null) {
				return "auth/myaccount";
			} else {
				return "redirect:/index";
			}
		}
	}
	
	@GetMapping("/myaccount")
	public String myAccountForm(@AuthenticationPrincipal PrincipalDetails principalDetails) { // 회원정보 진입
		if (principalDetails == null) { // 로그인 상태가 아닐경우
			return "auth/signin"; 
		} else { // 로그인 상태일경우
			return "auth/myaccount";
		}
	}
	
	@ResponseBody
	@PutMapping("/myaccountupdate/{user_id}")
	public String myAccountUpdate(@PathVariable String user_id, @RequestBody MyAccountDto myAccountDto) { // 회원정보 수정
		int result = authService.myAccountUpdate(user_id, myAccountDto);
		return Integer.toString(result);
	}
	
	@ResponseBody
	@DeleteMapping("/myaccountdelete/{user_id}")
	public String myAccountDelete(@PathVariable String user_id) { // 회원탈퇴
		int result = authService.myAccountDelete(user_id);
		return Integer.toString(result);
	}
}