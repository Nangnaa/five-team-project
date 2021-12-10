package com.springboot.fiveteam.web.dto;

import com.springboot.fiveteam.domain.cart.Cart;

import lombok.Data;

@Data
public class CartDto {
	private String user_id;
	private int sales_id;
	private int sales_quantity;
	private String sales_size;
	private String sales_color;
	
	private Cart toEntity() {
		return Cart.builder()
				.user_id(user_id)
				.sales_id(sales_id)
				.sales_quantity(sales_quantity)
				.sales_size(sales_size)
				.sales_color(sales_color)
				.build();
	}
}