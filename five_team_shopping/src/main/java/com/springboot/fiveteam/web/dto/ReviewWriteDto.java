package com.springboot.fiveteam.web.dto;

import com.springboot.fiveteam.domain.sales.Review;

import lombok.Data;

@Data
public class ReviewWriteDto {
	
	private String review_content;
	private int sales_id;
	private String user_id;
	private int review_score;
	private String ip;
	
	private Review toEntity() {
		return Review.builder()
				.review_content(review_content)
				.sales_id(sales_id)
				.user_id(user_id)
				.review_score(review_score)
				.ip(ip)
				.build();
	}
}