package com.teamproject3.vo;

import java.sql.Date;
import java.util.List;

import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Pattern;

public class MemberVo {
	private int memberNo;
	
	@NotEmpty(message = "{name.required}") //이름을 입력해주세요
	private String memName;
	
	@NotEmpty(message = "{gender.required}") //성별을 체크해주세요
	private char memGender;
	
	@NotEmpty(message = "{phone.required}") //휴대전화번호를 입력해주세요
	@Pattern(regexp = "[0-9]{2,3}-[0-9]{4}-[0-9]{4}", message = "{phone.invalid}") // [0~9]숫자 범위, {2,3}2개에서 3개 갯수 //문자열
	// 형식을 표현 및 검증하는 구문 -> 정규 표현식
	private String memPhone;
	
	private Date memBrith;
	private int age;
	private String memAddress;
	
	@NotEmpty(message = "{route.required}") //유입상태를 체크해주세요
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
	
	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
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
	public char getMemGender() {
		return memGender;
	}
	public void setMemGender(char memGender) {
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
