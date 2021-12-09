package com.springboot.fiveteam.domain.sold;

import java.util.Date;
import java.util.List;

import com.springboot.fiveteam.domain.sales.Sales;
import com.springboot.fiveteam.domain.user.User;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Builder
@AllArgsConstructor // 매개변수 있는 생성자
@NoArgsConstructor // 기본생성자
@Data
public class Sold {
	private int sold_id;
	private Date sold_date;
	private int sales_id;
	private String user_id;
	
	private String user_name;
	private String sales_price;
	private String sales_title;
	
	
}
