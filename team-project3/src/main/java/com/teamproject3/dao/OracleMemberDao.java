package com.teamproject3.dao;

import java.util.List;

import com.teamproject3.mapper.MemberMapper;
import com.teamproject3.vo.MemberAttachVo;
import com.teamproject3.vo.MemberVo;

public class OracleMemberDao implements MemberDao{
	
	private MemberMapper memberMapper;

	public void setMemberMapper(MemberMapper memberMapper) {
		this.memberMapper = memberMapper;
	}

	@Override
	public void insertMember(MemberVo member) {
		memberMapper.insertMember(member);
	}

	@Override
	public void insertMemberAttach(MemberAttachVo attach) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<MemberAttachVo> selectMemberAttachByMemberNo(int memberNo) {
		
		return null;
	}

	@Override
	public List<MemberVo> selectAllMembers(int centerNo) {
		
		List<MemberVo> members = memberMapper.selectAllMembers(centerNo);
		
		return members;
	}
	

}
