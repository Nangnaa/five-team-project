package com.springboot.fiveteam.web.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import com.springboot.fiveteam.domain.sales.Sales;
import com.springboot.fiveteam.domain.sales.SalesRepository;
import com.springboot.fiveteam.domain.sold.Sold;
import com.springboot.fiveteam.domain.sold.SoldRepository;
import com.springboot.fiveteam.domain.user.User;
import com.springboot.fiveteam.domain.user.UserRepository;
import com.springboot.fiveteam.web.dto.SalesDto;
import com.springboot.fiveteam.web.dto.SoldDto;
import com.springboot.fiveteam.web.dto.UserDto;
import com.springboot.fiveteam.web.dto.UserSearchReqDto;
import com.springboot.fiveteam.web.dto.UserSearchRespDto;

@Controller
public class ManagerController {
	
	@Autowired
	private UserRepository userRepository;
	
	@Autowired
	private SalesRepository salesRepository;
	
	@Autowired
	private SoldRepository soldRepository;

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
	public String managerHome(Model model, SalesDto salesDto) {
		User managerEntity = (User) userRepository.mfind();
		if (managerEntity.getUser_role().equals("ROLE_MANAGER")) {
			managerEntity = (User) session.getAttribute("managerPrincipal");
		}
				  
		if (managerEntity == null) {
			return "auth/managerSignin";
		}
		    model.addAttribute("salesEntity", salesRepository.findAll(salesDto));

		    return "manager/managerHome";
	}
	
	// 상품 상세보기 페이지로 이동
	  @GetMapping("/manager/detail/{id}")
	  public String productDetailForm(@PathVariable int id, Model model, SalesDto sales) {
	    //User managerEntity = (User) session.getAttribute("managerPrincipal");
		  
	  User managerEntity = (User) userRepository.mfind();
	  if (managerEntity.getUser_role().equals("ROLE_MANAGER")) {
		  managerEntity = (User) session.getAttribute("managerPrincipal");
		}
		  
	    if (managerEntity == null) {
	      return "auth/managerSignin";
	    }


	    Sales salesEntity = salesRepository.findById(id);
	    model.addAttribute("salesEntity", salesEntity);
	    return "manager/productDetail";
	  }
	  
	  // 상품 삭제 버튼 눌렀을 때
	  @PostMapping("/manager/deleteProduct/{id}")
	  public String deleteProduct(@PathVariable int id) {
	  User managerEntity = userRepository.mfind();
	  managerEntity = (User) session.getAttribute("managerPrincipal");
				  
	  if (managerEntity == null) {
	      return "auth/managerSignin";
	    }

	   salesRepository.deleteById(id);

	    return "redirect:/manager";
	  }
	  
	// 상품 수정 페이지로 이동
	  @GetMapping("/manager/product/{id}")
	  public String updateForm(@PathVariable int id, Model model) {
		User managerEntity = (User) userRepository.mfind();
		if (managerEntity.getUser_role().equals("ROLE_MANAGER")) {
			managerEntity = (User) session.getAttribute("managerPrincipal");
		}
			  
		if (managerEntity == null) {
		      return "auth/managerSignin";
		}
	    Sales salesEntity = salesRepository.findById(id);
	    model.addAttribute("salesEntity", salesEntity);

	    return "manager/updateProduct";
	  }
	  
	// 수정 완료 후 상품 상세보기 페이지로 이동
	  @PostMapping("/manager/product/{id}")
	  public String update(@PathVariable int id, SalesDto salesDto) {
		User managerEntity = (User) userRepository.mfind();
		if (managerEntity.getUser_role().equals("ROLE_MANAGER")) {
			managerEntity = (User) session.getAttribute("managerPrincipal");
		}
				  
		if (managerEntity == null) {
			      return "auth/managerSignin";
		}
		String imageFileName = salesDto.getSalesImg().getOriginalFilename();
		  
		Sales salesEntity = salesDto.toEntity();
		salesEntity.setSalesImg(imageFileName);
		
		System.out.println("imageFileName : " + imageFileName);
		
	    if (imageFileName == null || imageFileName.equals("")) {
	    } else {
	    	salesEntity.setSalesImg(imageFileName);
	    }
	    
	    salesEntity.setCategory(salesDto.getCategory());
	    salesEntity.setSales_title(salesDto.getSales_title());
	    salesEntity.setSales_price(salesDto.getSales_price());
	    salesEntity.setSales_content(salesDto.getSales_content());
	    
	    salesEntity.setSales_size(salesDto.getSales_size());
	    salesEntity.setSales_color(salesDto.getSales_color());
	    
	    salesRepository.productUpdate(salesEntity);

	    return "redirect:/manager/detail/{id}";
	  }
	  
	  
	  // 회원관리자 페이지 이동
	  @GetMapping("/manager/userlist")
	  public String userListForm(Model model, Integer page) {
		User managerEntity = (User) userRepository.mfind();
		if (managerEntity.getUser_role().equals("ROLE_MANAGER")) {
			managerEntity = (User) session.getAttribute("managerPrincipal");
		}
				  
		if (managerEntity == null) {
			return "auth/managerSignin";
		}
		  if (page == null) {
		      page = 0;
		    }

		  List<User> userList = userRepository.lookupUser();
		  List<UserDto> usersDto = new ArrayList<>();
		  
		  for(int i = 0; i < userList.size(); i++) {
			  UserDto userDto = new UserDto();
			  userDto.setUser(userList.get(i));
			  usersDto.add(userDto);
  
			  
		  }
		  System.out.println("==================\n" + usersDto.toString() + "\n=================");

		  model.addAttribute("usersEntity", usersDto);

		  return "manager/managerUser";
	  }
	  
	  // 회원 관리 페이지에서 이름 검색
	  @PostMapping("/manager/searchname")
	  public @ResponseBody UserSearchRespDto<List> searchUser(@RequestBody UserSearchReqDto dto){
		  User managerEntity = (User) userRepository.mfind();
			if (managerEntity.getUser_role().equals("ROLE_MANAGER")) {
				managerEntity = (User) session.getAttribute("managerPrincipal");
			}
				/*	  여기 구멍
			if (managerEntity == null) {
				return "auth/managerSignin";
			}*/
		 
		 List<User> userEntity = userRepository.mfindUserList(dto.getName());
		 
		 if(managerEntity != null) {
			 if(userEntity != null) {
				 return new UserSearchRespDto<>(1, "사용자 찾기 성공", userEntity);
			 }else {
				 return new UserSearchRespDto<>(-1, "사용자 찾기 실패", userEntity);
			 }
		 }else {
			 return new UserSearchRespDto<>(0, "세션 만료", userEntity);
		 }
	  }
	  
	  // 상품 등록 페이지 이동
	  @GetMapping("manager/upload-product")
	  public String uploadProductForm() {
		  User managerEntity = (User) userRepository.mfind();
			if (managerEntity.getUser_role().equals("ROLE_MANAGER")) {
				managerEntity = (User) session.getAttribute("managerPrincipal");
			}
					  
			if (managerEntity == null) {
				return "auth/managerSignin";
			}
		  return "manager/uploadProduct";
	  }
	  
	  // 상품 업로드
	  @PostMapping("/manager/upload")
	  public String upload(SalesDto salesDto) {
		 System.out.println(salesDto.getSalesImg().getOriginalFilename());
		 User managerEntity = (User) userRepository.mfind();
			if (managerEntity.getUser_role().equals("ROLE_MANAGER")) {
				managerEntity = (User) session.getAttribute("managerPrincipal");
			}
					  
			if (managerEntity == null) {
				return "auth/managerSignin";
			}
		  System.out.println(salesDto);
		  
		  // 파일 이름 저장
		  String imageFileName = salesDto.getSalesImg().getOriginalFilename();
		  
		  Sales salesEntity = salesDto.toEntity();
		  salesEntity.setSalesImg(imageFileName);
		  salesRepository.save(salesEntity);
		  return "redirect:/manager";
	  }
	  
	  // 판매현황 페이지 이동
	  @GetMapping("/manager/sales-status")
	  public String salesStatusForm(Model model, Integer page, SoldDto soldDto) {
		  User managerEntity = (User) userRepository.mfind();
			if (managerEntity.getUser_role().equals("ROLE_MANAGER")) {
				managerEntity = (User) session.getAttribute("managerPrincipal");
			}
					  
			if (managerEntity == null) {
				return "auth/managerSignin";
			}
		  if (page == null) {
		      page = 0;
		  }
		  	
		    List<Sold> saleditems = soldRepository.itemFindAll();
		    /*
		    if (saleditems != null) {
		    	
		      // 총 판매량
		      Long amount = managerRepository.mfindAmount();
		      // 총 판매 액
		      Long totalPrice = managerRepository.mTotalprice();
		      model.addAttribute("amount", amount);
		      model.addAttribute("totalPrice", totalPrice);
		    }
		    */
		    model.addAttribute("soldEntity", saleditems);

		   
		  
		  return "manager/salesStatus";
	  }
	  
	  
	  // manager Logout
	  @GetMapping("/manager/logout")
	  public String managerLogout() {
		  User managerEntity = (User) userRepository.mfind();
			if (managerEntity.getUser_role().equals("ROLE_MANAGER")) {
				managerEntity = (User) session.getAttribute("managerPrincipal");
			}
					  
			if (managerEntity == null) {
				return "auth/managerSignin";
			}
	    session.invalidate();
	    return "redirect:/";
	  }

	
}
