package com.springboot.fiveteam.controller;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class NoticeController {

	@GetMapping("/notice")
	public String NoticeForm() {
		return "notice/notice";
	}
	
	@GetMapping("/notice_dtl")
	public String NoticeDtlForm() {
		return "notice/notice_dtl";
	}
	
	@GetMapping("/notice_insert")
	public String NoticeInsertForm() {
		return "notice/notice_insert";
	}
	
	@GetMapping("/notice_update")
	public String NoticeUpdateForm() {
		return "notice/notice_update";
	}
}
