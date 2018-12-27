package com.teamproject3.vo;

import java.util.Date;

public class PurchaseVo {
	
	private int purchaseNo;
	private Date purRegate;
	private boolean purStatement;
	private String purMemo;
	private int purPrice;
	private String purName;
	private Date purDateto;
	private Date putDatefrom;
	private int pur_productNo;
	private int put_memberNo;
	
	public int getPurchaseNo() {
		return purchaseNo;
	}
	public void setPurchaseNo(int purchaseNo) {
		this.purchaseNo = purchaseNo;
	}
	public Date getPurRegate() {
		return purRegate;
	}
	public void setPurRegate(Date purRegate) {
		this.purRegate = purRegate;
	}
	public boolean isPurStatement() {
		return purStatement;
	}
	public void setPurStatement(boolean purStatement) {
		this.purStatement = purStatement;
	}
	public String getPurMemo() {
		return purMemo;
	}
	public void setPurMemo(String purMemo) {
		this.purMemo = purMemo;
	}
	public int getPurPrice() {
		return purPrice;
	}
	public void setPurPrice(int purPrice) {
		this.purPrice = purPrice;
	}
	public String getPurName() {
		return purName;
	}
	public void setPurName(String purName) {
		this.purName = purName;
	}
	public Date getPurDateto() {
		return purDateto;
	}
	public void setPurDateto(Date purDateto) {
		this.purDateto = purDateto;
	}
	public Date getPutDatefrom() {
		return putDatefrom;
	}
	public void setPutDatefrom(Date putDatefrom) {
		this.putDatefrom = putDatefrom;
	}
	public int getPur_productNo() {
		return pur_productNo;
	}
	public void setPur_productNo(int pur_productNo) {
		this.pur_productNo = pur_productNo;
	}
	public int getPut_memberNo() {
		return put_memberNo;
	}
	public void setPut_memberNo(int put_memberNo) {
		this.put_memberNo = put_memberNo;
	}
	
}
