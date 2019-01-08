package com.teamproject3.controller;

import java.sql.Date;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.teamproject3.service.AccountantService;
import com.teamproject3.vo.CenterVo;
import com.teamproject3.vo.PurchaseVo;

@Controller
@RequestMapping(value = "/financial/")
public class AccountantController {
	
	@Autowired
	@Qualifier("accountantService")
	private AccountantService accountantService;
	
	@RequestMapping(value = { "/", "/accountant.action" }, method = RequestMethod.GET)
	public String viewaccount(HttpSession session, Model model 
			) {	//multi param Date from, Date to, String redi
		
//		int pageSize = 3; 
//		int from = (pageNo - 1) * pageSize + 1;
//		int to = from + pageSize; 
//		int pagerSize = 5; 
//		String linkUrl = "accountant.action";		
		
//		int studyCount = studyService.findStudyCount();
//
//		ThePager pager = new ThePager(studyCount, pageNo, pageSize, pagerSize, linkUrl);
//
		//model.addAttribute("member", member);
		//model.addAttribute("memberNo", memberNo);
//		model.addAttribute("pageno", pageNo);
		
		
		CenterVo center = (CenterVo)session.getAttribute("loginuser");
		List<PurchaseVo> purchases =  accountantService.findPurchaseByCenterNo(center.getCenterNo()); //회원정보 리스트조회
		
		int purprice = accountantService.findPurmethodByCenterNo(center.getCenterNo());	//총 매출 조회
		
		List<HashMap<String,Object>> salesstat = accountantService.findSalesStat(center.getCenterNo());
		
		List<HashMap<String, Object>> salestotal = accountantService.findSalesTotal(center.getCenterNo());
		
//		List<PurchaseVo> datesearch = accountantService.findDateSearch(center.getCenterNo(), from, to);
//		
//		if(redi.equals("search")) {
//		return "redirect:accountant.action";
//		}
		
		//System.out.println(purchases.size());
		model.addAttribute("purchases", purchases);
		model.addAttribute("totalsales", purprice);
		model.addAttribute("salesstat", salesstat);
		model.addAttribute("alltotal", salestotal);
//		model.addAttribute("datesearch", datesearch);
		
		
		return "financial/accountant";
	}


}