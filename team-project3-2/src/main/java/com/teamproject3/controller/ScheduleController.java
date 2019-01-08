package com.teamproject3.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.teamproject3.service.ScheduleService;
import com.teamproject3.vo.CenterVo;
import com.teamproject3.vo.ScheduleVo;



@Controller
@RequestMapping(value = "/schedule/")
public class ScheduleController {
	
	@InitBinder    
    public void customizeBinding (WebDataBinder binder) {
        SimpleDateFormat dateFormatter = new SimpleDateFormat("yyyy-MM-dd hh:mm");
        //dateFormatter.setLenient(false);
        binder.registerCustomEditor(Date.class,
                                    new CustomDateEditor(dateFormatter, true));
    }

	//로그인
		@Autowired
		@Qualifier("scheduleService")//서비스의 의존성 주입
		private ScheduleService scheduleService;

		// 헤더에서 클릭하면 취미리스트 페이지로 가는 컨트롤러
		@RequestMapping(value = "/schedule.action", method = RequestMethod.GET)
		public ModelAndView schedulelist(@RequestParam("centerno")int centerNo) {
			ModelAndView view = new ModelAndView();
			//List<ScheduleVo> schedules = scheduleService.findAllSchedule(centerNo);
			List<ScheduleVo> list = scheduleService.HealthShow(centerNo);
			
//			//List<String> healthinfo = new ArrayList<String>();
//			StringBuilder healthinfo = new StringBuilder(list.size() * 100);
//			healthinfo.append("[");
//			for(int i = 0; i < list.size(); i++){
//				ScheduleVo vo = list.get(i);
//				
//				healthinfo.append("{"+"date: "+"\'"+vo.getScheduleDate()+"\',");
//				healthinfo.append("title: "+"\'"+vo.getScheduleName()+"\'" +"}");
//				if (i < list.size() - 1) {
//					healthinfo.append(",");
//				}
//			}
//			healthinfo.append("]");

			Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd hh:mm:ss").create();
			String healthinfo = gson.toJson(list);
			healthinfo = healthinfo.replaceAll("scheduleName", "title").replaceAll("scheduleDate", "start");
			view.addObject("healthinfo",healthinfo);

			view.setViewName("schedule/schedule");
			
			return view;
		}
		
		// 게시글을 등록하는 페이지로 가는 컨트롤러
		@RequestMapping(value = "/scheduleRegister.action", method= RequestMethod.GET)
		public String scheduleregisterForm(HttpSession session, HttpServletRequest req) {
			
			CenterVo center = (CenterVo)session.getAttribute("loginuser");
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
				
				// 글삭제 메서드
				@RequestMapping(value = "/scheduleDelete.action", method = RequestMethod.GET)
				public String deleteschedule(@RequestParam("centerno")int centerNo, @RequestParam("scheduleno") int scheduleNo) {

					scheduleService.deleteSchedule(scheduleNo);

					return "redirect:schedule.action?centerno=" + centerNo;
				}
				

}
