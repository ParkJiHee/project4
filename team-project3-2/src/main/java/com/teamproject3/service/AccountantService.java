package com.teamproject3.service;

import java.sql.Date;
import java.util.HashMap;
import java.util.List;

import com.teamproject3.vo.MemberVo;
import com.teamproject3.vo.PurchaseVo;

public interface AccountantService {

	//MemberVo findMemberByPurchase(int memberNo);
	List<PurchaseVo> findPurchaseByCenterNo(int centerNo);

	int findPurmethodByCenterNo(int centerNo);
	
	List<HashMap<String,Object>> findSalesStat(int centerNo);

	List<HashMap<String, Object>> findSalesTotal(int centerNo);

	List<PurchaseVo> findDateSearch(int centerNo, Date from, Date to);

}
