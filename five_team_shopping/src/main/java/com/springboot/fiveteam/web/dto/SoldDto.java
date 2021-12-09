package com.springboot.fiveteam.web.dto;

import java.util.List;

import com.springboot.fiveteam.domain.sales.Sales;
import com.springboot.fiveteam.domain.sold.Sold;
import com.springboot.fiveteam.domain.user.User;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Builder
@AllArgsConstructor // 매개변수 있는 생성자
@NoArgsConstructor // 기본생성자
@Data
public class SoldDto {
	private int sold_id;

	private int sales_id;
	private String user_id;

	private String user_name;
	private String sales_price;
	private String sales_title;
	
	public Sold toEntity() {
		return Sold.builder().sold_id(sold_id).sales_id(sales_id).user_id(user_id).sales_title(sales_title).sales_price(sales_price).user_name(user_name).build();
		
	}
}
