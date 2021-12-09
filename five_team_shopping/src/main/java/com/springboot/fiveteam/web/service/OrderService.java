package com.springboot.fiveteam.web.service;

import java.util.List;
import java.util.Map;

import com.springboot.fiveteam.domain.cart.Cart;

public interface OrderService {
	//public int orderPayment(String cart_id, Cart cart);
	//public int orderReset(String cart_id);
	List<Map<String, Object>> selectBasketNo(Map<String, Object> map) throws Exception; // 구매할때 시퀀스값 가져오기
}
