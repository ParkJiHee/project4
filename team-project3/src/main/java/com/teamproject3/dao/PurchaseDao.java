package com.teamproject3.dao;

import com.teamproject3.vo.MemberVo;
import com.teamproject3.vo.PurchaseVo;

public interface PurchaseDao {

	void insertPurchase(PurchaseVo purchase);

	void updatePurchase(MemberVo member);

}
