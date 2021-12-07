package com.springboot.fiveteam.domain.user;

import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface UserRepository {
	public int useridCheck(User user); // 아이디 중복확인
	public int signup(User user); // 회원가입 insert
	public User getUser(String user_id);
	public int myAccountUpdate(User userEntity);
	public int myAccountDelete(String user_id);
	public User mSignin(String user_id, String user_password);
	public List<User> lookupUser();
	public User mfind();
	public List<User> mfindUserList(String user_name);
}