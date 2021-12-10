package com.springboot.fiveteam.web.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.springboot.fiveteam.domain.cart.Cart;
import com.springboot.fiveteam.domain.cart.CartRepository;
import com.springboot.fiveteam.web.dto.CartDto;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor // 자동으로 Autowired
@Service
public class CartServiceImpl implements CartService {
	
	private final CartRepository cartRepository; // @RequiredArgsConstructor 사용을 위해 final 필요

	@Override
	public int writeCart(CartDto cartDto) {
		// TODO Auto-generated method stub
		return cartRepository.writeCart(cartDto);
	}

	@Override
	public List<Cart> getCartList(int seqnum) {
		// TODO Auto-generated method stub
		return cartRepository.getCartList(seqnum);
	}

	@Override
	public int getCartCount(int seqnum) {
		// TODO Auto-generated method stub
		return cartRepository.getCartCount(seqnum);
	}

	@Override
	public int deleteCartOne(int cart_id) {
		// TODO Auto-generated method stub
		return cartRepository.deleteCartOne(cart_id);
	}

	@Override
	public int deleteCartAll(String user_id) {
		// TODO Auto-generated method stub
		return cartRepository.deleteCartAll(user_id);
	}

	@Override
	public int cartOnePlus(int cart_id) {
		// TODO Auto-generated method stub
		return cartRepository.cartOnePlus(cart_id);
	}

	@Override
	public int cartOneMinus(int cart_id) {
		// TODO Auto-generated method stub
		return cartRepository.cartOneMinus(cart_id);
	}
}
