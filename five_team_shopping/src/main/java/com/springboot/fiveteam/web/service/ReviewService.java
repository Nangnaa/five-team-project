package com.springboot.fiveteam.web.service;

import java.util.List;

import com.springboot.fiveteam.domain.sales.Review;
import com.springboot.fiveteam.web.dto.ReviewWriteDto;

public interface ReviewService {
	// 리뷰 조회
		public List<Review> getReviewList(int sales_id);
		
		// 리뷰 수
		public int getReviewCount(int sales_id);
		
		// 리뷰 쓰기
		public int writeReview(ReviewWriteDto reviewWriteDto);
		
		// 한 리뷰 가져오기
		public Review getReviewByReviewId(int review_id);

		// 리뷰 삭제
		public int deleteReview(int review_id);
}
