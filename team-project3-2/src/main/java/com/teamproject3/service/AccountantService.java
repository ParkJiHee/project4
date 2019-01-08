package com.teamproject3.service;

import java.util.List;

import com.teamproject3.vo.MemberVo;
import com.teamproject3.vo.PurchaseVo;

public interface AccountantService {

	//MemberVo findMemberByPurchase(int memberNo);
	List<PurchaseVo> findPurchaseByCenterNo(int centerNo);


}
