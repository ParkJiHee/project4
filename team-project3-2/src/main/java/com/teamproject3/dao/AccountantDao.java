package com.teamproject3.dao;

import java.util.List;

import com.teamproject3.vo.MemberVo;
import com.teamproject3.vo.PurchaseVo;

public interface AccountantDao {

	//MemberVo selectMemberByPurchase(int memberNo);

	List<PurchaseVo> selectPurchaseByCenterNo(int centerNo);
	

}
