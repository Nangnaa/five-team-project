package com.springboot.fiveteam.web.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.springboot.fiveteam.domain.cart.Cart;
import com.springboot.fiveteam.web.dto.CartDto;

public interface CartService {
	public int writeCart(CartDto cartDto);
	public List<Cart> getCartList(int seqnum);
	public int getCartCount(int seqnum);
	public int deleteCartOne(int cart_id);
	public int deleteCartAll(String user_id);
	public int cartOnePlus(int cart_id);
	public int cartOneMinus(int cart_id);
}