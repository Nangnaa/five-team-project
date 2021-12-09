package com.springboot.fiveteam.domain.order;


import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface OrderRepository {
	//USER
	public int orderPayment(Order order);
	public int orderReset(Order order);
}