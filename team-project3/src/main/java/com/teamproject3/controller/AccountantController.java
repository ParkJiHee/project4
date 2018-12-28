package com.teamproject3.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping(value = "/financial/")
public class AccountantController {
	
	@RequestMapping(value = { "/", "/accountant.action" }, method = RequestMethod.GET)
	public String viewaccount(//(@RequestParam(value = "pageno") Integer pageNo,
			Model model) {
		
//		int pageSize = 3; 
//		int from = (pageNo - 1) * pageSize + 1;
//		int to = from + pageSize; 
//		int pagerSize = 5; 
//		String linkUrl = "account.action";

//		List<StudyVo> studys = studyService.findAllStudyByPage(from, to);
//		int studyCount = studyService.findStudyCount();
//
//		ThePager pager = new ThePager(studyCount, pageNo, pageSize, pagerSize, linkUrl);
//
//		// JSP?먯꽌 ?쎌쓣 ???덈룄濡?request媛앹껜??議고쉶???곗씠?????(forward ?대룞?닿린 ?뚮Ц??
//		model.addAttribute("studys", studys);
//		model.addAttribute("pager", pager);
//		model.addAttribute("pageno", pageNo);

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