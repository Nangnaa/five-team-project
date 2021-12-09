package com.springboot.fiveteam.domain.sales;

import java.util.Arrays;
import java.util.Date;
import java.util.List;

import org.springframework.data.annotation.Transient;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Builder
@AllArgsConstructor // 매개변수 있는 생성자
@NoArgsConstructor // 기본생성자
@Data
public class Sales {

	private int sales_id;
	
	 @Transient
    private List<String> categorys = Arrays.asList("outer", "top", "pants", "skirt", "jewerly", "bagandshoes");
	
	private String category;
	private String sales_title;
	private int sales_price;
	private String sales_content;
	private String salesImg;
	private String sales_size;
	private String sales_color;
	private Date create_date;
	private Date update_date;
	

}
