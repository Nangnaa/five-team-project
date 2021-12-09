package com.springboot.fiveteam;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

@SpringBootApplication
public class FiveTeamShoppingApplication extends SpringBootServletInitializer{

	// 톰캣이 실행될 때 configure을 통해서 실행
	
	@Override
	protected SpringApplicationBuilder configure(SpringApplicationBuilder builder) {
		// TODO Auto-generated method stub
		return builder.sources(FiveTeamShoppingApplication.class);
	}
	
	public static void main(String[] args) {
		SpringApplication.run(FiveTeamShoppingApplication.class, args);
	}
}
