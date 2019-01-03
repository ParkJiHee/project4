package com.teamproject3.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.teamproject3.service.MemberService;
import com.teamproject3.service.ProductService;
import com.teamproject3.service.PurchaseService;
import com.teamproject3.vo.MemberVo;
import com.teamproject3.vo.ProductVo;
import com.teamproject3.vo.PurchaseVo;

@Controller
@RequestMapping(value = "/purchase/")
public class purchaseController {
	
	@InitBinder    
    public void customizeBinding (WebDataBinder binder) {
        SimpleDateFormat dateFormatter = new SimpleDateFormat("yyyy-MM-dd");
        dateFormatter.setLenient(false);
        binder.registerCustomEditor(Date.class,
                                    new CustomDateEditor(dateFormatter, true));
    }
	

	@Autowired
	@Qualifier("purchaseService")//서비스의 의존성 주입
	private PurchaseService purchaseService;
	@Autowired
	@Qualifier("productService")//서비스의 의존성 주입
	private ProductService productService;
	@Autowired
	@Qualifier("memberService")//서비스의 의존성 주입
	private MemberService memberService;

	@RequestMapping(value = "/purSelect.action", method = RequestMethod.GET)
	public String purSelect(@RequestParam("centerno")int centerNo,
							@RequestParam("memberno")int memberNo, Model model) {
		
		List<ProductVo> products = productService.findAllProduct(centerNo);
		MemberVo member = memberService.findMember(memberNo);
		
		model.addAttribute("products", products);
		model.addAttribute("member", member);
		
		return "purchase/purSelect";
	}
	
	@RequestMapping(value = "/purRegister.action", method = RequestMethod.GET)
	public String purRegister(@RequestParam("productno")int productNo,
							@RequestParam("memberno")int memberNo, Model model) {
		
		ProductVo product = productService.findProductByProductNo(productNo);
		if (product == null) {
			return "redirect:purSelect.action";
		}
		MemberVo member = memberService.findMember(memberNo);
		
		model.addAttribute("member", member);
		model.addAttribute("product", product);
		model.addAttribute("productno", productNo);
		
		return "purchase/purRegister";
	}
	
	@RequestMapping(value = "/purRegister.action", method = RequestMethod.POST)
	public String purRegister(PurchaseVo purchaseVo, HttpServletRequest req) {
		
		purchaseService.registerPurchase(purchaseVo);
		
		return "purchase/purRegister";
	}
	
	
}
