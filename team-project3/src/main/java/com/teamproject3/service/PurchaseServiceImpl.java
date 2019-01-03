package com.teamproject3.service;

import com.teamproject3.dao.PurchaseDao;
import com.teamproject3.vo.PurchaseVo;

public class PurchaseServiceImpl implements PurchaseService{
	
	private PurchaseDao purchaseDao;
	public void setPurchaseDao(PurchaseDao purchaseDao) {
		this.purchaseDao = purchaseDao;
	}

	@Override
	public void purchaseRegister(PurchaseVo purchase) {

	}
	@Override
	public void purchaseSelect(PurchaseVo purchase) {
		
	}
}
