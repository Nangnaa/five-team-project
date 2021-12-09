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
public class Review {
	private int review_id;
	private String review_content;
	private int review_score;
	private Date create_date;
	private String user_id;
	private String user_name;
	private int sales_id;
	private String ip;
}