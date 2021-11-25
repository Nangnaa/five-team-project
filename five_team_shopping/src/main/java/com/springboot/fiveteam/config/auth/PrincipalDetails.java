package com.springboot.fiveteam.config.auth;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Map;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.oauth2.core.user.OAuth2User;

import com.springboot.fiveteam.domain.user.User;

import lombok.Data;

@Data
public class PrincipalDetails implements UserDetails, OAuth2User {
	private static final long serialVersionUID = 1L;
	
	private User user;
	private Map<String, Object> attributes;
	
	public PrincipalDetails(User user) { // 일반 로그인
		this.user = user;
	}
	
	public PrincipalDetails(User user, Map<String, Object> attributes) { // OAuth2 로그인
		this.user = user;
		this.attributes = attributes;
	}
	
	@Override
	public Map<String, Object> getAttributes() { // 프로필정보
		// TODO Auto-generated method stub
		return attributes;
	}

	@Override
	public String getName() {
		// TODO Auto-generated method stub
		return (String)attributes.get("name");
	}

	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() { // GrantedAuthority를 상속받은 모든 객체는 반환가능
		Collection<GrantedAuthority> collection = new ArrayList<GrantedAuthority>();
		collection.add(new GrantedAuthority() {
			
			@Override
			public String getAuthority() {
				// TODO Auto-generated method stub
				return user.getUser_role();
			}
		});
		return collection;
	}

	@Override
	public String getPassword() {
		// TODO Auto-generated method stub
		return user.getUser_password();
	}

	@Override
	public String getUsername() {
		// TODO Auto-generated method stub
		return user.getUser_id();
	}

	@Override
	public boolean isAccountNonExpired() {
		// TODO Auto-generated method stub
		return true; // 계정이 만료되었는지 (false:만료됨, true:아님)
	}

	@Override
	public boolean isAccountNonLocked() {
		// TODO Auto-generated method stub
		return true; // 계정이 잠겼는지 (false:잠김, true:아님)
	}

	@Override
	public boolean isCredentialsNonExpired() {
		// TODO Auto-generated method stub
		return true; // 휴면계정인지 (false:O, true:X)
	}

	@Override
	public boolean isEnabled() {
		// TODO Auto-generated method stub
		return true; // 계정 임시탈퇴상태인지 (false:O, true:X)return false;
	}
}
