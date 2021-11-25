package com.springboot.fiveteam.web.controller;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class IndexController {

	/*
	@GetMapping({"/", "/index"})
	public String indexForm() {
		return "index";
	}
	*/
	
	@GetMapping({"/", "/index"})
	public ModelAndView indexForm(HttpServletRequest request) {
		Cookie[] cookies = request.getCookies();
		if(cookies != null) {
			for(Cookie c : cookies) {
				System.out.println(c.getName());
			}
		}
		return new ModelAndView("index");
	}
	
	/*
	@RequestMapping(value="/index", method=RequestMethod.GET)
	public ModelAndView index(HttpServletRequest request) {
		Cookie[] cookies = request.getCookies();
		if(cookies != null) {
			for(Cookie c : cookies) {
				if(c.getName().equals("user_id")) {
					HttpSession session = request.getSession();
					UserDto userDto = userService.getUser(c.getValue());
					session.setAttribute("login_User", userDto);
				}
			}
		}
		return new ModelAndView("index");
	}
	*/
}
