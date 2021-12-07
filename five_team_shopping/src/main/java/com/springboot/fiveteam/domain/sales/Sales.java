package com.springboot.fiveteam.domain.sales;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Builder
@AllArgsConstructor // 매개변수 있는 생성자
@NoArgsConstructor // 기본생성자
@Data
public class Sales {
	public int sales_id;
	public String category;
	public String sales_title;
	public int sales_price;
	public String sales_content;
	public Date create_date;
	public Date update_date;
}
