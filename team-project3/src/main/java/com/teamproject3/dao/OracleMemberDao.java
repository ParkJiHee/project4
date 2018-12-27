package com.teamproject3.dao;

import com.teamproject3.mapper.MemberMapper;

public class OracleMemberDao implements MemberDao{
	
	private MemberMapper memberMapper;

	public void setMemberMapper(MemberMapper memberMapper) {
		this.memberMapper = memberMapper;
	}
	

}
