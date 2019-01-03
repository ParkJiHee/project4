package com.teamproject3.dao;

import com.teamproject3.mapper.PurchaseMapper;
import com.teamproject3.vo.PurchaseVo;

public class OraclePurchaseDao implements PurchaseDao{

	private PurchaseMapper purchaseMapper;

	public void setPurchaseMapper(PurchaseMapper purchaseMapper) {
		this.purchaseMapper = purchaseMapper;
	}


	@Override
	public void insertPurchase(PurchaseVo purchaseVo) {
		purchaseMapper.insertPurchase(purchaseVo);
	}
	
}
