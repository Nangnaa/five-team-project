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
	public int seqnum;
	public String user_id;
	public String user_password;
	public String user_name;
	public String user_address;
	public String user_tel;
	public String user_email;
	public String user_role;
	public String provider;
	public Date create_date;
	public Date update_date;
}