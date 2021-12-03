package com.springboot.fiveteam.web.dto;

import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@Data
public class UserSearchRespDto <T>{
	private int code;
	private String name;
	private T data;
	
	public UserSearchRespDto(int code, String name, T data) {
	    this.code = code;
	    this.name = name;
	    this.data = data;
	  }
}
