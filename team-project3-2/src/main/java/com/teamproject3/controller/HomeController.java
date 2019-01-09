package com.teamproject3.controller;

import java.io.File;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.teamproject3.common.Util;
import com.teamproject3.service.CenterService;
import com.teamproject3.service.ScheduleService;
import com.teamproject3.vo.CenterAttachVo;
import com.teamproject3.vo.CenterVo;
import com.teamproject3.vo.ScheduleVo;

@Controller
public class HomeController {

	
	@InitBinder    
    public void customizeBinding (WebDataBinder binder) {
        SimpleDateFormat dateFormatter = new SimpleDateFormat("yyyy-MM-dd hh:mm");
        //dateFormatter.setLenient(false);
        binder.registerCustomEditor(Date.class,
                                    new CustomDateEditor(dateFormatter, true));
    }
	
	@Autowired
	@Qualifier("scheduleService")//서비스의 의존성 주입
	private ScheduleService scheduleService;
	
	@Autowired
	@Qualifier("centerService")//서비스의 의존성 주입
	private CenterService centerService;


	@RequestMapping(value = "/home.action", method = RequestMethod.GET)
	public String home(Model model, HttpSession session, CenterVo center) {		
		
		center = (CenterVo)session.getAttribute("loginuser");
		if (center == null) {
			session.setAttribute("loginuser", center);
			return "redirect:/login.action";
		}
		
		//List<ScheduleVo> schedules = scheduleService.findAllSchedule(centerNo);
		List<ScheduleVo> list = scheduleService.HealthShow(center.getCenterNo());
		
		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd hh:mm:ss").create();
		String healthinfo = gson.toJson(list);
		healthinfo = healthinfo.replaceAll("scheduleName", "title").replaceAll("scheduleDate", "start");
		model.addAttribute("healthinfo",healthinfo);
		
		return "index";
	}
	
	@RequestMapping(value = "/popup.action", method = RequestMethod.GET)
	public String popup(Model model, HttpSession session, CenterVo center) {		
		
		return "popup";
	}
	
	@RequestMapping(value = "/setting.action", method = RequestMethod.POST)
	@ResponseBody
	public String setting(
			HttpSession session, HttpServletRequest req, CenterVo centerVo,
			MultipartHttpServletRequest multi) {
		
		ArrayList<CenterAttachVo> attachments = new ArrayList<>();
		
		// 저장 경로 설정
        String root = multi.getSession().getServletContext().getRealPath("/");
        String path = root+"resources/member-upload/";
         
        String newFileName = ""; // 업로드 되는 파일명
         
        File dir = new File(path);
        if(!dir.isDirectory()){
            dir.mkdir();
        }
         
        Iterator<String> files = multi.getFileNames();
        while(files.hasNext()){
            String uploadFile = files.next();
                         
            MultipartFile mFile = multi.getFile(uploadFile);
            String fileName = mFile.getOriginalFilename();
            if (!mFile.isEmpty() && fileName.length() != 0) {
                System.out.println("실제 파일 이름 : " +fileName);
	            newFileName = Util.makeUniqueFileName(fileName);
	             
	            try {
	                mFile.transferTo(new File(path+newFileName));
	                
	                CenterAttachVo attachment = new CenterAttachVo();
	                attachment.setSavedFileName(newFileName);
	                attachment.setUserFileName(fileName);
	                
	                attachments.add(attachment);
	            } catch (Exception e) {
	                e.printStackTrace();
	            }
            }
        }
        
		/*CenterVo center = (CenterVo)session.getAttribute("loginuser");
		if (center.getAttachments() == null) {
			
			for (CenterAttachVo attach : attachments) {
				attach.setCenterNo(center.getCenterNo());
				centerService.insertCenterAttach(attach);
			}
			
			centerVo.setAttachments(attachments);
			centerService.updateCenter(centerVo);
		}else {
			centerVo.setAttachments(attachments);
			centerService.updateCenter(centerVo);	
		}*/
        
        centerVo.setAttachments(attachments);
		centerService.updateCenter(centerVo);
		
        return "success";
	}
	

	//schedule
//	@Autowired
//	@Qualifier("scheduleService")//서비스의 의존성 주입
//	private ScheduleService scheduleService;
//			@RequestMapping(value = "/home.action", method = RequestMethod.GET)
//			public ModelAndView schedulelist(@RequestParam("centerno")int centerNo) {
//				ModelAndView view = new ModelAndView();
//				//List<ScheduleVo> schedules = scheduleService.findAllSchedule(centerNo);
//				List<ScheduleVo> list = scheduleService.HealthShow(centerNo);
//				
//
//				Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd hh:mm:ss").create();
//				String healthinfo = gson.toJson(list);
//				healthinfo = healthinfo.replaceAll("scheduleName", "title").replaceAll("scheduleDate", "start");
//				view.addObject("healthinfo",healthinfo);
//
//				view.setViewName("index");
//				
//				return view;
//			}
}
