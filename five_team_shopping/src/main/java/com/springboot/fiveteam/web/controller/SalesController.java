package com.springboot.fiveteam.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.servlet.ModelAndView;

import com.springboot.fiveteam.domain.sales.Sales;
import com.springboot.fiveteam.web.service.ReviewService;
import com.springboot.fiveteam.web.service.SalesService;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Controller
public class SalesController {
	
	private final SalesService salesService;
	private final ReviewService reviewService;
	
	@GetMapping("/category/{category}")
	public ModelAndView categoryForm(Model model, @PathVariable String category) {
		ModelAndView mav = new ModelAndView("sales/category");
		model.addAttribute("salesCategory", category);
		model.addAttribute("salesList", salesService.getSalesList(category));
		return mav;
	}
	
	@GetMapping("/category/{category}/search:{sales_title}")
	public ModelAndView categorySearchForm(Model model, @PathVariable String category, @PathVariable String sales_title) {
		ModelAndView mav = new ModelAndView("sales/category");
		model.addAttribute("salesCategory", category);
		model.addAttribute("salesList", salesService.getSalesListSearch(category, sales_title));
		return mav;
	}
	
	@GetMapping("/category/{category}/salesview/salesid:{sales_id}")
	public ModelAndView salesViewForm(Model model, @PathVariable String category, @PathVariable String sales_id) {
		ModelAndView mav = new ModelAndView("sales/salesView");
		Sales sales = salesService.getSalesOne(sales_id);
		String[] sales_color = sales.getSales_color().split(",");
		String[] sales_size = sales.getSales_size().split(",");
		model.addAttribute("currentCategory", category);
		model.addAttribute("sales", sales);
		model.addAttribute("sales_color", sales_color);
		model.addAttribute("sales_size", sales_size);
		model.addAttribute("review",reviewService.getReviewList(Integer.parseInt(sales_id)));
		model.addAttribute("reviewCount",reviewService.getReviewCount(Integer.parseInt(sales_id)));
		return mav;
	}
}