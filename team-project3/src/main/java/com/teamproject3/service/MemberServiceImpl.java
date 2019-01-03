package com.teamproject3.service;

import java.sql.Date;
import java.util.List;

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
		
		if (member.getAttachments() != null) {
			for(MemberAttachVo attach : member.getAttachments()) {
				attach.setAttachNo(member.getMemberNo());
				memberDao.insertMemberAttach(attach);
			}
		}
		
	}

	@Override
	public List<MemberVo> findAllMembers(int centerNo) {
		List<MemberVo> members = memberDao.selectAllMembers(centerNo);
		
		for(MemberVo member : members) {
			List<MemberAttachVo> attachments = memberDao.selectMemberAttachByMemberNo(member.getMemberNo());
			member.setAttachments(attachments);
		}
		
		return members;
	}

	@Override
	public MemberVo findMember(int memberNo) {
		MemberVo member = memberDao.selectMember(memberNo);
		
		return member;
	}
	
	
}
