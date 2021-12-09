package com.springboot.fiveteam.web.service;

import org.springframework.stereotype.Service;

import com.springboot.fiveteam.domain.cart.Cart;
import com.springboot.fiveteam.domain.cart.CartRepository;
import com.springboot.fiveteam.web.dto.CartDto;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Service
public class CartServcieImpl {
	private final CartRepository cartRepository;

//	@Override
//	public int cartSave(String cart_id, Cart cart) {
//		int result = 0;

		
//		return result;
//	}
	
//	@Override
//	public int cartReset(String cart_id) {
//		int result = 0;

//		
//		return result;
//	}
	
	
}
