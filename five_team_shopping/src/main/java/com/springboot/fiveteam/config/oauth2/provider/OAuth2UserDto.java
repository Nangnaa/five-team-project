package com.springboot.fiveteam.config.oauth2.provider;

import com.springboot.fiveteam.domain.user.User;

import lombok.Builder;
import lombok.Data;

@Builder
@Data
public class OAuth2UserDto {
	private int seqnum;
	private String user_id;
	private String user_password;
	private String user_name;
	private String user_email;
	private String user_role;
	private String provider;
	
	public User toEntity() {
		return User.builder()
				.seqnum(seqnum)
				.user_id(user_id)
				.user_password(user_password)
				.user_name(user_name)
				.user_email(user_email)
				.user_role(user_role)
				.provider(provider)
				.build();
	}
}