package com.springboot.fiveteam.domain.sold;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.springboot.fiveteam.domain.sales.Review;
import com.springboot.fiveteam.web.dto.SoldDto;

@Mapper
public interface SoldRepository {

	public List<Sold> itemFindAll();
}
