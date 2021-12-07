package com.springboot.fiveteam.domain.user;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Builder
@AllArgsConstructor // 매개변수 있는 생성자
@NoArgsConstructor // 기본생성자
@Data
public class User {
	private int seqnum;
	private String user_id;
	private String user_password;
	private String user_name;
	private String user_zipcode;
	private String user_address1;
	private String user_address2;
	private String user_tel;
	private String user_email;
	private String user_role;
	private String provider;
	private Date create_date;
	private Date update_date;
}