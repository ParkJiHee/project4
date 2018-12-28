package com.teamproject3.service;

import java.sql.Date;

import com.teamproject3.dao.MemberDao;
import com.teamproject3.vo.MemberVo;

public class MemberServiceImpl implements MemberService{
	private MemberDao memberDao;
	public void setMemberDao(MemberDao memberDao) {
		this.memberDao = memberDao;
	}
	
}
