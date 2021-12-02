package com.springboot.fiveteam.web.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.springboot.fiveteam.domain.user.User;
import com.springboot.fiveteam.domain.user.UserRepository;

@Controller
public class ManagerController {
	
	@Autowired
	private UserRepository userRepository;
	
	@Autowired
	private HttpSession session;
	
	@GetMapping("auth/manager/signin")
	public String managerLoginForm() {
		return "auth/managerSignin";
	}

	@PostMapping("/manager/signin")
	public String managerLogin(User user) {
		User managerEntity = userRepository.mSignin(user.getUser_id(), user.getUser_password());
		
		if(user.getUser_id().equals("manager")&&user.getUser_password().equals("1234")) {
			session.setAttribute("managerPrincipal", managerEntity);
		    return "redirect:/manager";
		}else {
			return "auth/managerSignin";

		}
	}
	
	@GetMapping("/manager")
	public String managerHome(Model model) {
		User managerEntity = userRepository.getUser("manager");
		  if (managerEntity.user_id.equals("manager")) {
			  managerEntity = (User) session.getAttribute("managerPrincipal");
			}
		  
		  if (managerEntity == null) {
		      return "auth/managerLoginForm";
		    }
		    //model.addAttribute("productsEntity", productRepository.findAll());

		    return "manager/managerHome";
	}
	
	// 상품 상세보기 페이지로 이동
	  @GetMapping("/manager/detail/{id}")
	  public String productDetailForm(@PathVariable int id, Model model) {
	    //User managerEntity = (User) session.getAttribute("managerPrincipal");
		  
	  User managerEntity = userRepository.lookupUser();
	  if (managerEntity.user_role.equals("MANAGER")) {
		  managerEntity = (User) session.getAttribute("managerPrincipal");
		}
		  
	    if (managerEntity == null) {
	      return "auth/managerLoginForm";
	    }
	    // 제품 Entity
	    // Product productEntity = productRepository.findById(id).get();
//	    model.addAttribute("productEntity", productEntity);

	    return "manager/productDetail";
	  }
}
