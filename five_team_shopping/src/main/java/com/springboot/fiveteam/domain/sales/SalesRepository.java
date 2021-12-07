package com.springboot.fiveteam.domain.sales;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface SalesRepository {
	List<Sales> getSalesList(String category);
	List<Sales> getSalesListSearch(String category, String sales_title);
	Sales getSalesOne(String sales_id);
}
