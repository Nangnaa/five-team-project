package com.springboot.fiveteam.web.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.springboot.fiveteam.domain.sales.Review;
import com.springboot.fiveteam.domain.sales.ReviewRepository;
import com.springboot.fiveteam.web.dto.ReviewWriteDto;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor // 자동으로 Autowired
@Service
public class ReviewServiceImpl implements ReviewService {
	
	private final ReviewRepository reviewRepository;

	@Override
	public List<Review> getReviewList(int sales_id) {
		// TODO Auto-generated method stub
		return reviewRepository.getReviewList(sales_id);
	}

	@Override
	public int getReviewCount(int sales_id) {
		// TODO Auto-generated method stub
		return reviewRepository.getReviewCount(sales_id);
	}

	@Override
	public int writeReview(ReviewWriteDto reviewWriteDto) {
		// TODO Auto-generated method stub
		return reviewRepository.writeReview(reviewWriteDto);
	}

	@Override
	public Review getReviewByReviewId(int review_id) {
		// TODO Auto-generated method stub
		return reviewRepository.getReviewByReviewId(review_id);
	}

	@Override
	public int deleteReview(int review_id) {
		return reviewRepository.deleteReview(review_id);
	}

}
