package com.teamproject3.service;

import java.util.List;

import com.teamproject3.dao.AccountantDao;
import com.teamproject3.vo.MemberVo;
import com.teamproject3.vo.PurchaseVo;

public class AccountantServiceImpl implements AccountantService{
	private AccountantDao accountantDao;
	public void setAccountantDao(AccountantDao accountantDao) {
		this.accountantDao = accountantDao;
	}
	
	@Override
	public List<PurchaseVo> findPurchaseByCenterNo(int centerNo) {
		List<PurchaseVo> purchases = accountantDao.selectPurchaseByCenterNo(centerNo);
		return purchases;
	}


}
