package com.teamproject3.service;

import java.sql.Date;
import java.util.ArrayList;
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

	@Override
	public int findAllMemberCount(int centerNo) {
		int count = memberDao.selectAllMemberCount(centerNo);
		return count;
	}

	@Override
	public void deleteMembers(ArrayList<Integer> deleteArray) {
		for(int i = 0; i < deleteArray.size(); i++) {
			int deletNum = deleteArray.get(i);
			memberDao.deleteMember(deletNum);
		}
	}

	@Override
	public int findSingupMemberNo(int centerNo) {
		int memberNo = memberDao.selectSignupMember(centerNo);
		return memberNo;
	}

	@Override
	public void updateMember(MemberVo memberVo) {
		memberDao.updateMember(memberVo);
		
	}

	@Override
	public List<MemberVo> findAllNoPayMembers(int centerNo) {
		List<MemberVo> members = memberDao.selectAllNoPayMembers(centerNo);

		for (MemberVo member : members) {
			List<MemberAttachVo> attachments = memberDao.selectMemberAttachByMemberNo(member.getMemberNo());
			member.setAttachments(attachments);
		}

		return members;
	}

	@Override
	public int findAllNoPayMemberCount(int centerNo) {
		int count = memberDao.selectAllNoPayMemberCount(centerNo);
		return count;
	}

	@Override
	public List<MemberVo> findAllPayMembers(int centerNo) {
		List<MemberVo> members = memberDao.selectAllPayMembers(centerNo);

		for (MemberVo member : members) {
			List<MemberAttachVo> attachments = memberDao.selectMemberAttachByMemberNo(member.getMemberNo());
			member.setAttachments(attachments);
		}

		return members;
	}

	@Override
	public int findAllPayMemberCount(int centerNo) {
		int count = memberDao.selectAllPayMemberCount(centerNo);
		return count;
	}

	@Override
	public List<MemberVo> findFinishedMembers(int centerNo) {
		List<MemberVo> members = memberDao.selectFinishedMembers(centerNo);

		for (MemberVo member : members) {
			List<MemberAttachVo> attachments = memberDao.selectMemberAttachByMemberNo(member.getMemberNo());
			member.setAttachments(attachments);
		}

		return members;
	}

	@Override
	public int findFinishedMemberCount(int centerNo) {
		int count = memberDao.selectFinishedMemberCount(centerNo);
		return count;
	}

	@Override
	public List<MemberVo> findFinished3Members(int centerNo) {
		List<MemberVo> members = memberDao.selectFinished3Members(centerNo);

		for (MemberVo member : members) {
			List<MemberAttachVo> attachments = memberDao.selectMemberAttachByMemberNo(member.getMemberNo());
			member.setAttachments(attachments);
		}

		return members;
	}

	@Override
	public int findFinished3MemberCount(int centerNo) {
		int count = memberDao.selectFinished3MemberCount(centerNo);
		return count;
	}

	@Override
	public List<MemberVo> findFinished7Members(int centerNo) {
		List<MemberVo> members = memberDao.selectFinished7Members(centerNo);

		for (MemberVo member : members) {
			List<MemberAttachVo> attachments = memberDao.selectMemberAttachByMemberNo(member.getMemberNo());
			member.setAttachments(attachments);
		}

		return members;
	}

	@Override
	public int findFinished7MemberCount(int centerNo) {
		int count = memberDao.selectFinished7MemberCount(centerNo);
		return count;
	}

	@Override
	public List<MemberVo> findAllMemberProduct(int memberNo) {
		List<MemberVo> members = memberDao.selectAllMemberProduct(memberNo);
		return members;
	}
}
