package com.teamproject3.dao;


import com.teamproject3.mapper.AccountantMapper;
import com.teamproject3.vo.MemberVo;

public class OracleAccountantDao implements AccountantDao{

	private AccountantMapper accountantMapper;
	public void setAccountantMapper(AccountantMapper accountantMapper) {
		this.accountantMapper = accountantMapper;
	}
	@Override
	public void insertMember(MemberVo memver) {
		// TODO Auto-generated method stub
		
	}
}
