package com.teamproject3.service;

import java.sql.Date;

import javax.validation.Valid;

import com.teamproject3.dao.MemberDao;
import com.teamproject3.vo.MemberAttachVo;
import com.teamproject3.vo.MemberVo;

public class MemberServiceImpl implements MemberService{
	private MemberDao memberDao;
	public void setMemberDao(MemberDao memberDao) {
		this.memberDao = memberDao;
	}
	
	@Override
	public void SignupMember(MemberVo member) {
		
		memberDao.insertMember(member);
		
		for(MemberAttachVo attach : member.getAttachments()) {
			attach.setAttachNo(member.getMemberNo());
			memberDao.insertMemberAttach(attach);
		}
		
	}
	
}
