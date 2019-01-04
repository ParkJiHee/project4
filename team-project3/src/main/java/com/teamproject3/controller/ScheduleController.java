package com.teamproject3.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.teamproject3.service.ScheduleService;
import com.teamproject3.vo.CenterVo;
import com.teamproject3.vo.ScheduleVo;



@Controller
@RequestMapping(value = "/schedule/")
public class ScheduleController {
	//로그인
		@Autowired
		@Qualifier("scheduleService")//서비스의 의존성 주입
		private ScheduleService scheduleService;

		// 헤더에서 클릭하면 취미리스트 페이지로 가는 컨트롤러
		@RequestMapping(value = "/schedule.action", method = RequestMethod.GET)
		public String productlist() {
			
			return "schedule/schedule";
		}
		
		// 게시글을 등록하는 페이지로 가는 컨트롤러
		@RequestMapping(value = "/scheduleRegister.action", method= RequestMethod.GET)
		public String scheduleregisterForm(HttpSession session, HttpServletRequest req, CenterVo center) {
			
			center = (CenterVo)session.getAttribute("loginuser");
			if (center == null) {
				session.setAttribute("loginuser", center);
				return "redirect:/login.action";
			}
			
			return "schedule/scheduleRegister";
		}
		
		// 등록한 내용 제출하는 컨트롤러
				@RequestMapping(value = "/scheduleRegister.action", method= RequestMethod.POST)
				public String scheduleregister(ScheduleVo schedule, HttpServletRequest req) {
					
					scheduleService.writeSchedule(schedule);
					
					return "redirect:schedule.action?centerno=" + schedule.getCenterNo();
				
				}
				

}
