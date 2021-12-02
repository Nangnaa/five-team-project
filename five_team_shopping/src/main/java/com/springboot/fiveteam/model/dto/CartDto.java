package com.springboot.fiveteam.model.dto;

public class CartDto {
	private String cart_id;
	private int user_id;
	private String sales_id;
	private int cart_price;
	private String cart_qty;
	private String sales_title;
	private String option;
	private String main_origin_file_name;
	public String getCart_id() {
		return cart_id;
	}
	public void setCart_id(String cart_id) {
		this.cart_id = cart_id;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public String getSales_id() {
		return sales_id;
	}
	public void setSales_id(String sales_id) {
		this.sales_id = sales_id;
	}
	public int getCart_price() {
		return cart_price;
	}
	public void setCart_price(int cart_price) {
		this.cart_price = cart_price;
	}
	public String getCart_qty() {
		return cart_qty;
	}
	public void setCart_qty(String cart_qty) {
		this.cart_qty = cart_qty;
	}
	public String getSales_title() {
		return sales_title;
	}
	public void setSales_title(String sales_title) {
		this.sales_title = sales_title;
	}
	public String getOption() {
		return option;
	}
	public void setOption(String option) {
		this.option = option;
	}
	public String getMain_origin_file_name() {
		return main_origin_file_name;
	}
	public void setMain_origin_file_name(String main_origin_file_name) {
		this.main_origin_file_name = main_origin_file_name;
	}
	@Override
	public String toString() {
		return "CartDto [cart_id=" + cart_id + ", user_id=" + user_id + ", sales_id=" + sales_id + ", cart_price="
				+ cart_price + ", cart_qty=" + cart_qty + ", sales_title=" + sales_title + ", option=" + option
				+ ", main_origin_file_name=" + main_origin_file_name + "]";
	}
	
	
}
