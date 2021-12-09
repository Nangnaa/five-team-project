package com.springboot.fiveteam.web.service;

import java.util.List;

import com.springboot.fiveteam.domain.sold.Sold;

public interface SoldService {
	// 판매현황 조회
	public List<Sold> itemFindAll();

}
