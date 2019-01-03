package com.teamproject3.vo;

import java.util.Date;

public class PurchaseVo {
	
	private int purchaseNo;
	private Date purRegdate;
	private boolean purStatement;
	private String purMemo;
	private int purPrice;
	private String purName;
	private Date purDateto;
	private Date putDatefrom;
	private int purproductNo;
	private int putmemberNo;
	private String purMethod;
	
	public int getPurchaseNo() {
		return purchaseNo;
	}
	public void setPurchaseNo(int purchaseNo) {
		this.purchaseNo = purchaseNo;
	}
	public Date getPurRegdate() {
		return purRegdate;
	}
	public void setPurRegdate(Date purRegdate) {
		this.purRegdate = purRegdate;
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
	public int getPurproductNo() {
		return purproductNo;
	}
	public void setPurproductNo(int purproductNo) {
		this.purproductNo = purproductNo;
	}
	public int getPutmemberNo() {
		return putmemberNo;
	}
	public void setPutmemberNo(int putmemberNo) {
		this.putmemberNo = putmemberNo;
	}
	public String getPurMethod() {
		return purMethod;
	}
	public void setPurMethod(String purMethod) {
		this.purMethod = purMethod;
	}
	
}
