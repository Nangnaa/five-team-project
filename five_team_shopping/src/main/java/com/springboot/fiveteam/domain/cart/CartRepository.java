package com.springboot.fiveteam.domain.cart;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.springboot.fiveteam.web.dto.CartDto;

@Mapper
public interface CartRepository {
	public int writeCart(CartDto cartDto);
	public List<Cart> getCartList(int seqnum);
	public int getCartCount(int seqnum);
	public int deleteCartOne(int cart_id);
	public int deleteCartAll(String user_id);
	public int cartOnePlus(int cart_id);
	public int cartOneMinus(int cart_id);
}