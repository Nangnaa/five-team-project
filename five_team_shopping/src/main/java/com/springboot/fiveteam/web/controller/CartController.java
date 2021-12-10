package com.springboot.fiveteam.web.controller;

import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.springboot.fiveteam.config.auth.PrincipalDetails;
import com.springboot.fiveteam.domain.sales.Sales;
import com.springboot.fiveteam.web.dto.CartDto;
import com.springboot.fiveteam.web.service.CartService;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Controller
public class CartController {
	
	private final CartService cartService;
	
	@ResponseBody
	@PostMapping("/cart/writeCart")
	public String cartWrite(@RequestBody CartDto cartDto, @AuthenticationPrincipal PrincipalDetails principalDetails) {
		if (principalDetails == null) { // 로그인 상태가 아닐경우
			return "2";
		} else { // 로그인 상태일경우
			int result = cartService.writeCart(cartDto);
			return Integer.toString(result);
		}
		
	}
	
	@GetMapping("/cart/{seqnum}")
	public ModelAndView cart(Model model, @PathVariable int seqnum, @AuthenticationPrincipal PrincipalDetails principalDetails) {
		if (principalDetails == null) { // 로그인 상태가 아닐경우
			ModelAndView mav = new ModelAndView("auth/signin");
			return mav; 
		} else { // 로그인 상태일경우
			ModelAndView mav = new ModelAndView("cart/cart");
			model.addAttribute("cartCount", cartService.getCartCount(seqnum));
			model.addAttribute("cartList", cartService.getCartList(seqnum));
			return mav;
		}
	}
	
	@ResponseBody
	@DeleteMapping("/cart/deletecart/cartid:{cart_id}")
	public String deleteCartOne(@PathVariable String cart_id) {
		int result = cartService.deleteCartOne(Integer.parseInt(cart_id));
		return Integer.toString(result);
	}
	
	@ResponseBody
	@DeleteMapping("/cart/deletecartall/userid:{user_id}")
	public String deleteCartAll(@PathVariable String user_id) {
		int result = cartService.deleteCartAll(user_id);
		return Integer.toString(result);
	}
	
	@ResponseBody
	@PutMapping("/cart/cartoneplus/cartid:{cart_id}")
	public String cartOnePlus(@PathVariable String cart_id) {
		int result = cartService.cartOnePlus(Integer.parseInt(cart_id));
		return Integer.toString(result);
	}
	
	@ResponseBody
	@PutMapping("/cart/cartoneminus/cartid:{cart_id}")
	public String cartOneMinus(@PathVariable String cart_id) {
		int result = cartService.cartOneMinus(Integer.parseInt(cart_id));
		return Integer.toString(result);
	}
}