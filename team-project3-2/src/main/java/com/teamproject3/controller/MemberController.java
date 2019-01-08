package com.teamproject3.controller;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.teamproject3.service.MemberService;
import com.teamproject3.vo.CenterVo;
import com.teamproject3.vo.MemberVo;
import com.teamproject3.vo.PurchaseVo;

@Controller
@RequestMapping(value = "/member/")
public class MemberController {
	
	@InitBinder    
    public void customizeBinding (WebDataBinder binder) {
        SimpleDateFormat dateFormatter = new SimpleDateFormat("yyyy-MM-dd");
        dateFormatter.setLenient(false);
        binder.registerCustomEditor(Date.class,
                                    new CustomDateEditor(dateFormatter, true));
    }
	
	@Autowired
	@Qualifier("memberService")//서비스의 의존성 주입
	private MemberService memberService;
	
	@RequestMapping(value = "/memberlist.action", method = RequestMethod.GET)
	public String memberListForm(Locale locale, Model model,
			HttpSession session, HttpServletRequest req, CenterVo center) {
		
		center = (CenterVo)session.getAttribute("loginuser");
		if (center == null) {
			session.setAttribute("loginuser", center);
			return "redirect:/login.action";
		}
		
		List<MemberVo> members = memberService.findAllMembers(center.getCenterNo());
		int memberCount = memberService.findAllMemberCount(center.getCenterNo());
		
		List<MemberVo> members2 = memberService.findAllNoPayMembers(center.getCenterNo());
		int memberCount2 = memberService.findAllNoPayMemberCount(center.getCenterNo());
		
		List<MemberVo> members3 = memberService.findAllPayMembers(center.getCenterNo());
		int memberCount3 = memberService.findAllPayMemberCount(center.getCenterNo());
		//System.out.println(members3.get(0).getMemberNo());
		//List<PurchaseVo> purdatefrom = MemberService.findPurDateFrom(members3.get(0));
		
		List<MemberVo> members4 = memberService.findFinishedMembers(center.getCenterNo());
		int memberCount4 = memberService.findFinishedMemberCount(center.getCenterNo());
		
		List<MemberVo> members5 = memberService.findFinished3Members(center.getCenterNo());
		int memberCount5 = memberService.findFinished3MemberCount(center.getCenterNo());
		
		List<MemberVo> members6 = memberService.findFinished7Members(center.getCenterNo());
		int memberCount6 = memberService.findFinished7MemberCount(center.getCenterNo());
		
		model.addAttribute("members", members);
		model.addAttribute("countno", memberCount);
		
		model.addAttribute("members2", members2);
		model.addAttribute("countno2", memberCount2);
		
		model.addAttribute("members3", members3);
		model.addAttribute("countno3", memberCount3);
		
		model.addAttribute("members4", members4);
		model.addAttribute("countno4", memberCount4);
		
		model.addAttribute("members5", members5);
		model.addAttribute("countno5", memberCount5);
		
		model.addAttribute("members6", members6);
		model.addAttribute("countno6", memberCount6);
		
		return "member/memberlist";
	}
	
	@RequestMapping(value = "/membersignup.action", method = RequestMethod.POST)
	@ResponseBody
	public String memberSignup(MemberVo member, Model model, 
			HttpSession session, HttpServletRequest req, CenterVo center) {//, MultipartHttpServletRequest multi) {
		
		/*MultipartFile attach = req.getFile("attach");

		ArrayList<MemberAttachVo> attachments = new ArrayList<>();
		if (attach != null && !attach.isEmpty()) {
			// 파일저장
			String savedFileName = com.teamproject3.common.Util.makeUniqueFileName(attach.getOriginalFilename()); // 고유 파일명 만들기
			String path = req.getServletContext().getRealPath("/resources/member-upload/" + savedFileName); // 저장 경로 만들기

			try {
				attach.transferTo(new File(path)); // 파일 저장하기

				// 데이터베이스에 저장할 데이터로 vo 객체 만들기
				MemberAttachVo attachment = new MemberAttachVo();
				attachment.setSavedFileName(savedFileName);
				attachment.setUserFileName(attach.getOriginalFilename());

				attachments.add(attachment);
			} catch (Exception ex) {
			}
		}

		member.setAttachments(attachments);
		memberService.SignupMember(member);*/
		
		// 저장 경로 설정
        /*String root = multi.getSession().getServletContext().getRealPath("/");
        String path = root+"resources/upload/member-upload";
         
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
            System.out.println("실제 파일 이름 : " +fileName);
            newFileName = System.currentTimeMillis()+"."
                    +fileName.substring(fileName.lastIndexOf(".")+1);
             
            try {
                mFile.transferTo(new File(path+newFileName));
            } catch (Exception e) {
                e.printStackTrace();
            }
        }*/
		
		memberService.SignupMember(member);
		
		center = (CenterVo)session.getAttribute("loginuser");
		
		int memberNo = memberService.findSingupMemberNo(center.getCenterNo());

		return String.valueOf(memberNo);

	}
	
	@RequestMapping(value = "/memberdelete.action", method = RequestMethod.POST)
	@ResponseBody
	public String memberDelete(@RequestParam(value="memberArray[]") List<Integer> deleteList) {
		
		//System.out.println(deleteList.size());
		ArrayList<Integer> deleteArray = new ArrayList<>();
		for(int i = 0; i < deleteList.size(); i++) {
			deleteArray.add(deleteList.get(i));
		}
		
		memberService.deleteMembers(deleteArray);
		//System.out.println("End");
		return "success";
	}
	
	@RequestMapping(value = "/memberdetail.action", method = RequestMethod.GET)
	public String memberDetailForm(Locale locale, Model model,
			HttpSession session, HttpServletRequest req, CenterVo center,
			@RequestParam("memberno")int memberNo) {
		
		center = (CenterVo)session.getAttribute("loginuser");
		if (center == null) {
			session.setAttribute("loginuser", center);
			return "redirect:/login.action";
		}
		
		MemberVo member = memberService.findMember(memberNo);
		List<MemberVo> members = memberService.findAllMemberProduct(memberNo);
		
		model.addAttribute("member", member);
		model.addAttribute("members", members);
		
		return "member/memberdetail";
	}
	
	@RequestMapping(value = "/memberupdate.action", method = RequestMethod.POST)
	@ResponseBody
	public String memberUpdate(MemberVo memberVo) {
		
		memberService.updateMember(memberVo);
		
		return "success";
	}
}
