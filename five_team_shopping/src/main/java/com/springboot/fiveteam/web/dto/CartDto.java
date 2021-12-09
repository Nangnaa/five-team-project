package com.springboot.fiveteam.web.dto;

import com.springboot.fiveteam.domain.cart.Cart;
import com.springboot.fiveteam.domain.user.User;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


@Data
public class CartDto {
	public int cart_id;
	public String user_id;
	public String sales_id;
	public int cart_price;
	public int cart_qty;
	public String sales_title;
	public String option;
	public String main_origin_file_name;

	public Cart toEntity() {
		return Cart.builder()
				.cart_id(cart_id)
				.user_id(user_id)
				.sales_id(sales_id)
				.cart_price(cart_price)
				.cart_qty(cart_qty)
				.sales_title(sales_title)
				.option(option)
				.main_origin_file_name(main_origin_file_name)
				.build();
	}

}
