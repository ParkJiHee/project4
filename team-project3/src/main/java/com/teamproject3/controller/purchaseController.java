package com.teamproject3.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.teamproject3.service.PurchaseService;

@Controller
@RequestMapping(value = "/purchase/")
public class purchaseController {

	@Autowired
	@Qualifier("purchaseService")//서비스의 의존성 주입
	private PurchaseService purchaseService;

	@RequestMapping(value = "/purRegister.action", method = RequestMethod.GET)
	public String purRegister() {
		
		return "purchase/purRegister";
	}
//	//상품등록
//	/////////////////////////////////////////////////////////////////////////////////////
//	@RequestMapping(value="/purRegister.action", method=RequestMethod.GET)
//	public String showPurchaseRegisterForm(@ModelAttribute("purchase")PurchaseVo purchase) {
//		return "purchase/purRegister";
//	}
//	
//	@RequestMapping(value="/purRegister.action", method=RequestMethod.POST)
//	public String PurRegisterRegister(@Valid@ModelAttribute("purchase")PurchaseVo purchase, BindingResult br) {
//		
//		if(br.hasErrors()) {
//			return "purchase/purRegister";
//		}
//		
//		else {
//			//1. 데이터 처리 (데이터베이스에 데이터 저장 - Service 객체를 사용해서 처리)
//			purchaseService.purchaseRegister(purchase);
//			//2. 이동 (forward : to .jsp, redirect : to servlet)
//			return "redirect:/home.action";
//		}
//	}
	
}
