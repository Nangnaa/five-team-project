package com.springboot.fiveteam.domain.user;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface UserRepository {

	public User mSignin(String user_id, String user_password); //매니저 로그인
	
}
