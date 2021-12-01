package com.springboot.fiveteam.service;

import java.util.List;

import com.springboot.fiveteam.model.dto.CartDto;

public interface CartService {
	List<CartDto> cartMoney();
    void insert(CartDto dto);
    List<CartDto> listCart(String userid);
    void delete(int cart_id);
    void deleteAll(String userid);
    void update(int cart_id);
    int sumMoney(String userid);
    int countCart(String userid, int product_id);
    void updateCart(CartDto dto);
    void modifyCart(CartDto dto);
}
