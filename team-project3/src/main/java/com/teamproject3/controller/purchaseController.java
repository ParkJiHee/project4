package com.teamproject3.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.teamproject3.service.ProductService;
import com.teamproject3.service.PurchaseService;
import com.teamproject3.vo.ProductVo;
import com.teamproject3.vo.PurchaseVo;

@Controller
@RequestMapping(value = "/purchase/")
public class purchaseController {

	@Autowired
	@Qualifier("purchaseService")//서비스의 의존성 주입
	private PurchaseService purchaseService;
	@Autowired
	@Qualifier("productService")//서비스의 의존성 주입
	private ProductService productService;

	@RequestMapping(value = "/purRegister.action", method = RequestMethod.GET)
	public String purRegister() {
		
		return "purchase/purRegister";
	}
	
//	@RequestMapping(value = "/purRegister.action", method = RequestMethod.GET)
//	public String purRegisterForm(
//			@RequestParam(value = "productno", required = false) Integer productNo,
//			@ModelAttribute("productVo")ProductVo productVo, Model model) {
//		productVo = productService.findProductByProductNo(productNo);
//		model.addAttribute("productVo", productVo);
//		return "purchase/purRegister";
//	}
//
//	@RequestMapping(value = "/purRegister.action", method = RequestMethod.POST)
//	public String purRegister(
//			@RequestParam(value = "purchaseno", required = false)Integer purchaseNo, 
//			@ModelAttribute("purchaseVo")PurchaseVo purchaseVo, Model model) {
//		
//		purchaseVo.setPurchaseNo(purchaseNo);
//		purchaseService.registerPurchase(purchaseVo);
//		return "purchase/purRegister";
//	}
	
	
}
