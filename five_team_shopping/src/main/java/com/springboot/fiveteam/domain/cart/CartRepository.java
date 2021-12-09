package com.springboot.fiveteam.domain.cart;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface CartRepository {
	//USER
	public int save(Cart cart);
	public int delete(Cart cart);
	public List<Cart> findAll(int sales_id);
	public int update(Cart cart);
	public int CountByid(int sales_id );
}