package com.springboot.fiveteam.web.service;

import java.util.List;

import com.springboot.fiveteam.domain.sales.Sales;

public interface SalesService {
	public List<Sales> getSalesList(String category);
	public List<Sales> getSalesListSearch(String category, String sales_title);
	public Sales getSalesOne(String sales_id);
}