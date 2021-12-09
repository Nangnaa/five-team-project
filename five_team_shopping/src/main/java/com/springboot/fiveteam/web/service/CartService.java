package com.springboot.fiveteam.web.service;

import org.springframework.stereotype.Service;

import com.springboot.fiveteam.domain.cart.Cart;



@Service
public interface CartService {
	public int cartSave(String cart_id, Cart cart);
	public int cartReset(String cart_id);

}