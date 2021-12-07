package com.springboot.fiveteam.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class IndexController {

	@GetMapping({"/", "/index"})
	public String indexForm() {
		return "index";
	}
}
