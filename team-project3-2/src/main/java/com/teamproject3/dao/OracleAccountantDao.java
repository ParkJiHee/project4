package com.teamproject3.dao;


import java.util.HashMap;
import java.util.List;

import com.teamproject3.mapper.AccountantMapper;
import com.teamproject3.vo.MemberVo;
import com.teamproject3.vo.PurchaseVo;

public class OracleAccountantDao implements AccountantDao{

	private AccountantMapper accountantMapper;
	public void setAccountantMapper(AccountantMapper accountantMapper) {
		this.accountantMapper = accountantMapper;
	}
	@Override
	public List<PurchaseVo> selectPurchaseByCenterNo(int centerNo) {
		List<PurchaseVo> purchases = accountantMapper.selectPurchaseByCenterNo(centerNo);
		return purchases;
	}

}
