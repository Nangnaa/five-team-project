package com.springboot.fiveteam.domain.sales;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

<<<<<<< HEAD
import com.springboot.fiveteam.web.dto.SalesDto;

@Mapper
public interface SalesRepository {
	public int save(Sales sales);
	public Sales findById(int sales_id);
	public List<Sales> findAll(SalesDto salesDto);
	public int deleteById(int sales_id);
=======
@Mapper
public interface SalesRepository {
	List<Sales> getSalesList(String category);
	List<Sales> getSalesListSearch(String category, String sales_title);
	Sales getSalesOne(String sales_id);
>>>>>>> MiteM
}
