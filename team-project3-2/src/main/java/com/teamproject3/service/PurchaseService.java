package com.teamproject3.service;

import com.teamproject3.vo.MemberVo;
import com.teamproject3.vo.PurchaseVo;

public interface PurchaseService {

	void registerPurchase(PurchaseVo purchaseVo);

	void updatePurchase(MemberVo member);

}
