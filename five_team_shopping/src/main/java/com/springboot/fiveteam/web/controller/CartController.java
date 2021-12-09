package com.springboot.fiveteam.web.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.springboot.fiveteam.domain.user.UserRepository;

@Controller
public class CartController {
	@Autowired
	private UserRepository userRepository;
	
	@Autowired
	private HttpSession session;
	
	@GetMapping("cart/cart")
	public String CartIn() {
		return "cart/cart";
	}
	
//	@RequestMapping(value = "/cart/cart", method = RequestMethod.POST)
//	public ModelAndView insertBasket(CommandMap commandMap, HttpServletRequest request) throws Exception { // 상품디테일에서 장바구니 추가 
//		ModelAndView mv = new ModelAndView("redirect:/shop/goodsDetail.do");
//		
//		commandMap.remove("resultList");
//		Object MEMBER_NO = "";
//		// 세션값 가져오기
//		HttpSession session = request.getSession();
//		MEMBER_NO = (Object) session.getAttribute("SESSION_NO");
//		// 기존 회원번호 데이터 삭제
//		commandMap.remove("MEMBER_NO");
//		// 세션 값으로 적용
//		commandMap.put("MEMBER_NO", MEMBER_NO);
//		
//		//장바구니에 넣을 상품이 한개일때
//		if (commandMap.get("ORDER_SIZE").getClass().getName().equals("java.lang.String")) { 
//			Map<String, Object> map = new HashMap<String, Object>();
//			System.out.println("CommandMap1=" + commandMap.getMap());
//			map.put("IDX", commandMap.get("IDX"));
//			map.put("MEMBER_NO", commandMap.get("MEMBER_NO"));
//			map.put("ORDER_SIZE", commandMap.get("ORDER_SIZE"));
//			map.put("ORDER_COLOR", commandMap.get("ORDER_COLOR"));
//			map.put("BASKET_GOODS_AMOUNT", commandMap.get("BASKET_GOODS_AMOUNT"));
//			map.put("GUBUN", "0");
//			goodsService.insertBasket(map, request);
//		} else { //장바구니에 넣을 상품이 두가지 이상일때(색상,사이즈가 다른) 
//			System.out.println("CommandMap2=" + commandMap.getMap());
//			String[] Size = (String[]) commandMap.getMap().get("ORDER_SIZE");
//			String[] Color = (String[]) commandMap.getMap().get("ORDER_COLOR");
//			String[] Amount = (String[]) commandMap.getMap().get("BASKET_GOODS_AMOUNT");
//			String[] Goods_No = (String[]) commandMap.getMap().get("IDX");
//			System.out.println("다중 사이즈0=" + Goods_No[0]);
//			System.out.println("다중 사이즈1=" + Goods_No[1]);
//			Map<String, Object> map1 = new HashMap<String, Object>();
//			
//			for (int j = 0; j <= Size.length - 1; j++) {
//				map1.put("ORDER_SIZE", Size[j]);
//				map1.put("ORDER_COLOR", Color[j]);
//				map1.put("BASKET_GOODS_AMOUNT", Amount[j]);
//				map1.put("IDX", Goods_No[j]);
//				map1.put("MEMBER_NO", commandMap.get("MEMBER_NO"));
//				map1.put("GUBUN", "0");
//				System.out.println("Size1111=" + Size[j]);
//				goodsService.insertBasket(map1, request);
//			}
//		}
//		mv.addObject("IDX", commandMap.getMap().get("IDX"));
//		return mv;
//	}
//	
//	List<Map<String, Object>> list0 = goodsService.selectBasketNo(commandMap.getMap()); // 장바구니 PK값 가져오기
//	System.out.println("장바구니넘버111111" + list0.get(0).get("BASKET_NO"));
//
//	commandMap.remove("SELECT_BASKET_NO");
//	commandMap.put("SELECT_BASKET_NO", list0.get(0).get("BASKET_NO"));
//
//	List<Map<String, Object>> list = basketService.basketSelectList(commandMap, request); // 장바구니에 있는 정보들 
//
//	Map<String, Object> map = orderService.orderMemberInfo(commandMap, request); // 회원의 정보
}
