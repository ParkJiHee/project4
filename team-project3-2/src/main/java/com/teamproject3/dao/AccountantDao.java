package com.teamproject3.dao;

import java.sql.Date;
import java.util.HashMap;
import java.util.List;

import com.teamproject3.vo.MemberVo;
import com.teamproject3.vo.PurchaseVo;

public interface AccountantDao {

	//MemberVo selectMemberByPurchase(int memberNo);

	List<PurchaseVo> selectPurchaseByCenterNo(int centerNo);

	int selectPurmethodByCenterNo(int centerNo);
	
	List<HashMap<String, Object>> selectSalesStat(int centerNo);

	List<HashMap<String, Object>> selectSalesTotal(int centerNo);

	List<PurchaseVo> findDateSearch(int centerNo, Date from, Date to);

}
