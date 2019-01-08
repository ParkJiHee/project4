package com.teamproject3.service;

import java.util.HashMap;
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

	@Override
	public int findPurmethodByCenterNo(int centerNo) {
		int purmethod = accountantDao.selectPurmethodByCenterNo(centerNo);
		return purmethod;
	}

	@Override
	public List<HashMap<String, Object>> findSalesStat(int centerNo) {
		List<HashMap<String,Object>> salesstat = accountantDao.selectSalesStat(centerNo);
		return salesstat;
	}

	@Override
	public List<HashMap<String, Object>> findSalesTotal(int centerNo) {
		
		List<HashMap<String, Object>> alltotal =  accountantDao.selectSalesTotal(centerNo);
		return alltotal;
	}


}
