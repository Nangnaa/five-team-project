package com.springboot.fiveteam.domain.order;

import com.springboot.fiveteam.domain.cart.Cart;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Builder
@Data
public class Order {
	public String order_name;
	public String order_add_1;
	public String order_add_2;
	public String order_add_3;
	public int order_tel_1;
	public int order_tel_2;
	public String order_email_1;
	public String order_email_2;

	public String s_name;
	public String s_add_1;
	public String s_add_2;
	public String s_add_3;
	public int s_tel_1;
	public int s_tel_2;
	public String s_email_1;
	public String s_email_2;
	
}
