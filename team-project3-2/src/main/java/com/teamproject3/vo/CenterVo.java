package com.teamproject3.vo;

import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Pattern;

public class CenterVo {
	private int centerNo;
	
	@NotEmpty(message = "{id.required}")
	private String cenId;
	
	@NotEmpty(message = "{passwd.required}")
	private String cenPasswd;
	
	@NotEmpty(message = "{phone.required}")
	@Pattern(regexp = "[0-9]{2,3}-[0-9]{4}-[0-9]{4}", message = "{phone.invalid}") // [0~9]숫자 범위, {2,3}2개에서 3개 갯수 //문자열
																					// 형식을 표현 및 검증하는 구문 -> 정규 표현식
	private String cenPhone;
	
	public int getCenterNo() {
		return centerNo;
	}
	public void setCenterNo(int centerNo) {
		this.centerNo = centerNo;
	}
	public String getCenId() {
		return cenId;
	}
	public void setCenId(String cenId) {
		this.cenId = cenId;
	}
	public String getCenPasswd() {
		return cenPasswd;
	}
	public void setCenPasswd(String cenPasswd) {
		this.cenPasswd = cenPasswd;
	}
	public String getCenPhone() {
		return cenPhone;
	}
	public void setCenPhone(String cenPhone) {
		this.cenPhone = cenPhone;
	}
}
