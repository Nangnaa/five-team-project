package com.springboot.fiveteam.web.dto;



import com.springboot.fiveteam.domain.user.User;

import lombok.Data;

@Data
public class MyAccountDto {
	
	public String user_name;
	public String user_zipcode;
	public String user_address1;
	public String user_address2;
	public String user_tel;

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