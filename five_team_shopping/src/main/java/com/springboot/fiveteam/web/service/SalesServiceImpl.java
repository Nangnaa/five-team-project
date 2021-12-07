package com.springboot.fiveteam.web.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.springboot.fiveteam.domain.sales.Sales;
import com.springboot.fiveteam.domain.sales.SalesRepository;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor // 자동으로 Autowired
@Service
public class SalesServiceImpl implements SalesService {
	
	private final SalesRepository salesRepository; // @RequiredArgsConstructor 사용을 위해 final 필요

	@Override
	public List<Sales> getSalesList(String category) {
		return salesRepository.getSalesList(category);
	}

	@Override
	public List<Sales> getSalesListSearch(String category, String sales_title) {
		return salesRepository.getSalesListSearch(category, sales_title);
	}

	@Override
	public Sales getSalesOne(String sales_id) {
		return salesRepository.getSalesOne(sales_id);
	}

}
