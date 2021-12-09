package com.springboot.fiveteam.domain.cart;

import java.util.Date;

import com.springboot.fiveteam.domain.user.User;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Builder
@AllArgsConstructor // 매개변수 있는 생성자
@NoArgsConstructor // 기본생성자
@Data
public class Cart {
	public int cart_id;
	public String user_id;
	public String sales_id;
	public int cart_price;
	public int cart_qty;
	public String sales_title; //제품이름
	public String option;
	public String main_origin_file_name;
}

