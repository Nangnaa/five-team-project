package com.springboot.fiveteam.domain.cart;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Builder
@AllArgsConstructor // 매개변수 있는 생성자
@NoArgsConstructor // 기본생성자
@Data
public class Cart {
	private int cart_id;
	private String user_id;
	private int sales_id;
	private String category;
	private String salesImg;
	private String sales_title;
	private int sales_price;
	private int sales_quantity;
	private String sales_size;
	private String sales_color;
	private Date create_date;
	private int seqnum;
}