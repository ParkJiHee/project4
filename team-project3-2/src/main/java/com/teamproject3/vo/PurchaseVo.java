package com.teamproject3.vo;

import java.util.Date;

public class PurchaseVo {
	
	private int purchaseNo;
	private Date purRegdate;
	private String purMemo;
	private int purPrice;
	private String purName;
	private Date purDateto;
	private Date purDatefrom;
	private int productNo;
	private int memberNo;
	private String purMethod;
	private int centerNo;
	
	private MemberVo member;

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
	public Date getPurDatefrom() {
		return purDatefrom;
	}
	public void setPurDatefrom(Date purDatefrom) {
		this.purDatefrom = purDatefrom;
	}
	public int getProductNo() {
		return productNo;
	}
	public void setProductNo(int productNo) {
		this.productNo = productNo;
	}
	public int getMemberNo() {
		return memberNo;
	}
	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}
	public String getPurMethod() {
		return purMethod;
	}
	public void setPurMethod(String purMethod) {
		this.purMethod = purMethod;
	}
	public int getCenterNo() {
		return centerNo;
	}
	public void setCenterNo(int centerNo) {
		this.centerNo = centerNo;
	}
	public MemberVo getMember() {
		return member;
	}
	public void setMember(MemberVo member) {
		this.member = member;
	}
	
}
