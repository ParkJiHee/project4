package com.teamproject3.controller;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.teamproject3.vo.CenterVo;

@Controller
@RequestMapping(value = "/member/")
public class MemberController {
	
	@RequestMapping(value = "/memberlist.action", method = RequestMethod.GET)
	public String home(Locale locale, Model model,
			HttpSession session, HttpServletRequest req, CenterVo center) {
		
		center = (CenterVo)session.getAttribute("loginuser");
		if (center == null) {
			session.setAttribute("loginuser", center);
			return "redirect:/login.action";
		}
		
		return "member/memberlist";
	}
}
