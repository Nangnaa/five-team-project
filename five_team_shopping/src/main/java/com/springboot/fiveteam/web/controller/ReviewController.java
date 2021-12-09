package com.springboot.fiveteam.web.controller;

import java.net.Inet4Address;
import java.net.UnknownHostException;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;
import com.springboot.fiveteam.web.dto.ReviewWriteDto;
import com.springboot.fiveteam.web.service.ReviewService;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Controller
public class ReviewController {
	
	private final ReviewService reviewService;
	
	@ResponseBody
	@PostMapping("/category/{category}/salesview/salesid:{sales_id}/writeReview")
	public String reviewWrite(@PathVariable String category, @PathVariable String sales_id, @RequestBody ReviewWriteDto reviewWriteDto) throws UnknownHostException {
		reviewWriteDto.setIp(Inet4Address.getLocalHost().getHostAddress());
		int result = reviewService.writeReview(reviewWriteDto);
		return Integer.toString(result);
	}
	
	@ResponseBody
	@DeleteMapping("/category/{category}/salesview/salesid:{sales_id}/deleteReview:{review_id}")
	public String reviewDelete(@PathVariable String category, @PathVariable String sales_id, @PathVariable String review_id) {
		int result = reviewService.deleteReview(Integer.parseInt(review_id));
		return Integer.toString(result);
	}
}
