package com.springboot.fiveteam.web.dto;

import com.springboot.fiveteam.domain.user.User;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class UserDto {
	private User user;

}
