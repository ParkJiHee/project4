package com.teamproject3.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.teamproject3.service.AccountantService;
import com.teamproject3.vo.CenterVo;
import com.teamproject3.vo.MemberVo;
import com.teamproject3.vo.PurchaseVo;

@Controller
@RequestMapping(value = "/financial/")
public class AccountantController {
	
	@Autowired
	@Qualifier("accountantService")
	private AccountantService accountantService;
	
	@RequestMapping(value = { "/", "/accountant.action" }, method = RequestMethod.GET)
	public String viewaccount(HttpSession session, Model model) {
		
//		int pageSize = 3; 
//		int from = (pageNo - 1) * pageSize + 1;
//		int to = from + pageSize; 
//		int pagerSize = 5; 
//		String linkUrl = "accountant.action";		
		CenterVo center = (CenterVo)session.getAttribute("loginuser");
//		int studyCount = studyService.findStudyCount();
//
//		ThePager pager = new ThePager(studyCount, pageNo, pageSize, pagerSize, linkUrl);
//

		//model.addAttribute("member", member);
		//model.addAttribute("memberNo", memberNo);
//		model.addAttribute("pageno", pageNo);
		
		List<PurchaseVo> purchases =  accountantService.findPurchaseByCenterNo(center.getCenterNo());

		//System.out.println(purchases.size());
		model.addAttribute("purchases", purchases);
		
		return "financial/accountant";
	}

/*	@RequestMapping(value = { "/", "/accountant.action" }, method = RequestMethod.POST)
	public String selected(@RequestParam(value="product", required = false, defaultValue="empty") String product,
			@RequestParam(value="salesvalue", required = false, defaultValue="empty") String salesvalue,
			@RequestParam(value="manager", required = false, defaultValue="empty") String manager,
			@RequestParam(value="payment", required = false, defaultValue="empty") String payment) {
		
		//select
		
		return "financial/accountant";
	}
	
	
	@RequestMapping(value = { "/", "/possiblemember.action" }, method = RequestMethod.GET)
	public String viewmember() {
		
		return "financial/possiblemember";
	}
*/
}