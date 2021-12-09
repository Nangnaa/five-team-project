package com.springboot.fiveteam.web.dto;

import org.springframework.web.multipart.MultipartFile;

import com.springboot.fiveteam.domain.sales.Sales;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Builder
@AllArgsConstructor // 매개변수 있는 생성자
@NoArgsConstructor // 기본생성자
@Data
public class SalesDto {

	private int sales_id;
	
	private String category;
	private String sales_title;
	private int sales_price;
	private String sales_content;
	
	private MultipartFile salesImg;

	private String sales_size;
	private String sales_color;
	
	public Sales toEntity() {
		return Sales.builder().sales_id(sales_id).category(category).sales_title(sales_title).sales_price(sales_price).sales_content(sales_content).sales_size(sales_size).sales_color(sales_color).build();
	}
}
