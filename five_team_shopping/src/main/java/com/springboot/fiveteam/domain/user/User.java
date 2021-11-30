package com.springboot.fiveteam.domain.user;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Builder
@AllArgsConstructor
@NoArgsConstructor
@Data
public class User {
	private int seqnum;
	private String user_id;
	private String user_password;
	private String user_name;
	private String user_address;
	private String user_tel;
	private String user_email;
	private String user_role;
	private Date create_date;
	private Date update_date;
}
