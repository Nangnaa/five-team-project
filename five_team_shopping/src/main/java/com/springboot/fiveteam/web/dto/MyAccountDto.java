package com.springboot.fiveteam.web.dto;



import com.springboot.fiveteam.domain.user.User;

import lombok.Data;

@Data
public class MyAccountDto {
	
	private String user_name;
	private String user_zipcode;
	private String user_address1;
	private String user_address2;
	private String user_tel;

	public User toEntity() {
		return User.builder()
				.user_name(user_name)
				.user_zipcode(user_zipcode)
				.user_address1(user_address1)
				.user_address2(user_address2)
				.user_tel(user_tel)
				.build();
	}
}