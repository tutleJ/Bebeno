package com.bebeno.mvc.payment.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.bebeno.mvc.payment.model.service.CartService;
import com.bebeno.mvc.payment.model.vo.Cart;

@Controller
@RequestMapping("/payment")
public class CartController {
	
	
	@Autowired
	private CartService cartService;
	
	
//	@GetMapping("/paymentPage") 
//	public String payment() {
//		
//		return "/payment/paymentPage";
//		
//	}
//
//  @PostMapping("/paymentPage")
//  	public String paymentAction() {
//	  
//	  return "/payment/paymentPage";
//
//  }
  
	// 장바구니 페이지 이동
	@RequestMapping(value="/cart", method = RequestMethod.GET)
	public String showCart(HttpSession session, Model model) {
		
		String id = (String)session.getAttribute("id");
		List<Cart> cartList = CartService.getCartList();
		
		model.addAttribute("cartList", cartList);
		
		
		return "/payment/cart";
 
}
	
	// 장바구니 담기
	@RequestMapping(value="/cart", method = RequestMethod.POST)
	public String addCart (HttpSession session, Cart cart, Model model) {
		
		String id = (String)session.getAttribute("id");
		List<Cart> cartList = CartService.getCartList();
		
		
		model.addAttribute("cartList",cartList);
		model.addAttribute("cart", cart);
		cartList.add(cart);
		
		cartService.addCart(cart);
		
		return "redirect:cart";
		
	}
	
  
  
  
  
  
  
  
  
  
  
  
  
  
  
}