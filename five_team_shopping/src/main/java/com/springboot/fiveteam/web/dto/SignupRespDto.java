package com.springboot.fiveteam.web.dto;

import lombok.Data;

//lombok 사용, get, set 메소드 필요없음
@Data
public class SignupRespDto<T> {
	private int code;
	private T msg;
}