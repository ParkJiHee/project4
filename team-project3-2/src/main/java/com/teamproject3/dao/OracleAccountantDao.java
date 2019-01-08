package com.teamproject3.dao;


import java.sql.Date;
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
	@Override
	public int selectPurmethodByCenterNo(int centerNo) {
		Integer purmethod = accountantMapper.selectPurmethodByCenterNo(centerNo);
		if(purmethod == null) {
			return 0;
		}else { 
			return purmethod;
		}
		 
	}
	@Override
	public List<HashMap<String, Object>> selectSalesStat(int centerNo) {
		List<HashMap<String,Object>> salesstat = accountantMapper.selectSalesStat(centerNo);
		return salesstat;
	}
	@Override
	public List<HashMap<String, Object>> selectSalesTotal(int centerNo) {
		
		List<HashMap<String, Object>> alltotal = accountantMapper.selectSalesTotal(centerNo);
		return alltotal;
	}
	@Override
	public List<PurchaseVo> findDateSearch(int centerNo, Date from, Date to) {
		List<PurchaseVo> datesearch =  accountantMapper.selectDateSearch(centerNo, from, to);
		return datesearch;
	}

}
