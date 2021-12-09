package com.springboot.fiveteam.web.dto;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;

import com.springboot.fiveteam.domain.order.Order;

import lombok.Data;

@Data
public class OrderDto {
	@Size(min=2, max=20) // 모든 속성에 대해서 2글자~20글자까지 허용
	@NotBlank
	private String order_name;
	@NotBlank
	private String order_add_1;
	@NotBlank
	private String order_add_2;
	@NotBlank
	private int order_tel_1;
	@NotBlank
	private int order_tel_2;
	@NotBlank
	private String order_email_1;
	@NotBlank
	private String order_email_2;
	
	public Order toEntity() { // setter
		return Order.builder()
				.order_name(order_name)
				.order_add_1(order_add_1)
				.order_add_2(order_add_2)
				.order_tel_1(order_tel_1)
				.order_tel_2(order_tel_2)
				.order_email_1(order_email_1)
				.order_email_2(order_email_2)
				.build();
	}
}
