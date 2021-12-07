package com.springboot.fiveteam.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.servlet.ModelAndView;

import com.springboot.fiveteam.web.service.SalesService;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Controller
public class SalesController {
	
	private final SalesService categoryService;
	
	@GetMapping("/category/{category}")
	public ModelAndView categoryForm(Model model, @PathVariable String category) {
		ModelAndView mav = new ModelAndView("sales/category");
		model.addAttribute("salesCategory", category);
		model.addAttribute("salesList", categoryService.getSalesList(category));
		return mav;
	}
	
	@GetMapping("/category/{category}/search:{sales_title}")
	public ModelAndView categorySearchForm(Model model, @PathVariable String category, @PathVariable String sales_title) {
		ModelAndView mav = new ModelAndView("sales/category");
		model.addAttribute("salesCategory", category);
		model.addAttribute("salesList", categoryService.getSalesListSearch(category, sales_title));
		return mav;
	}
	
	@GetMapping("/category/{category}/salesview")
	public String salesViewForm() {
		return "sales/salesView";
	}
}