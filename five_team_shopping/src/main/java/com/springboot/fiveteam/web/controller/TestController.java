package com.springboot.fiveteam.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class TestController {
	
	@GetMapping("/itemview")
	public String itemviewForm() {
		return "item/itemview";
	}
	
	@GetMapping("/category")
	public String category() {
		return "item/category";
	}
	
	@GetMapping("/cart")
	public String cartForm() {
		return "order/cart";
	}

	
}
