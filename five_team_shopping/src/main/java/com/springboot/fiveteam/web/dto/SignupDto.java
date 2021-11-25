package com.springboot.fiveteam.web.dto;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;

import com.springboot.fiveteam.domain.user.User;

import lombok.Data;

//lombok 사용, get, set 메소드 필요없음
@Data
public class SignupDto {
	@Size(min=2, max=20) // 모든 속성에 대해서 2글자~20글자까지 허용
	@NotBlank
	private String user_id;
	@NotBlank
	private String user_password;
	@NotBlank
	private String user_email;
	@NotBlank
	private String user_name;
	
	public User toEntity() { // setter
		return User.builder()
				.user_id(user_id)
				.user_password(user_password)
				.user_email(user_email)
				.user_name(user_name)
				.build();
	}
}