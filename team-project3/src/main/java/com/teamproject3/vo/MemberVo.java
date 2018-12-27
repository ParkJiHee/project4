package com.teamproject3.vo;

import java.sql.Date;
import java.util.List;

public class MemberVo {
	private int memberNo;
	private String memName;
	private String memGender;
	private String memPhone;
	private Date memBrith;
	private String memAddress;
	private String memRoute;
	private String memEail;
	private Date memVisitDate;
	private String centerNo;
	private char deleted;
	
	// 첨부파일
		private List<MemberAttachVo> attachments;

		public List<MemberAttachVo> getAttachments() {
			return attachments;
		}

		public void setAttachments(List<MemberAttachVo> attachments) {
			this.attachments = attachments;
		}
	
	public int getMemberNo() {
		return memberNo;
	}
	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}
	public String getMemName() {
		return memName;
	}
	public void setMemName(String memName) {
		this.memName = memName;
	}
	public String getMemGender() {
		return memGender;
	}
	public void setMemGender(String memGender) {
		this.memGender = memGender;
	}
	public String getMemPhone() {
		return memPhone;
	}
	public void setMemPhone(String memPhone) {
		this.memPhone = memPhone;
	}
	public Date getMemBrith() {
		return memBrith;
	}
	public void setMemBrith(Date memBrith) {
		this.memBrith = memBrith;
	}
	public String getMemAddress() {
		return memAddress;
	}
	public void setMemAddress(String memAddress) {
		this.memAddress = memAddress;
	}
	public String getMemRoute() {
		return memRoute;
	}
	public void setMemRoute(String memRoute) {
		this.memRoute = memRoute;
	}
	public String getMemEail() {
		return memEail;
	}
	public void setMemEail(String memEail) {
		this.memEail = memEail;
	}
	public Date getMemVisitDate() {
		return memVisitDate;
	}
	public void setMemVisitDate(Date memVisitDate) {
		this.memVisitDate = memVisitDate;
	}
	public String getCenterNo() {
		return centerNo;
	}
	public void setCenterNo(String centerNo) {
		this.centerNo = centerNo;
	}
	public char getDeleted() {
		return deleted;
	}
	public void setDeleted(char deleted) {
		this.deleted = deleted;
	}
}
