package com.teamproject3.vo;

import java.sql.Date;

public class ScheduledDateVo {

	private Date visit;
	private String hourfrom;
	private String minuetfrom;
	private String hourto;
	private String minuetto;
	
	public Date getVisit() {
		return visit;
	}
	public void setVisit(Date visit) {
		this.visit = visit;
	}
	public String getHourfrom() {
		return hourfrom;
	}
	public void setHourfrom(String hourfrom) {
		this.hourfrom = hourfrom;
	}
	public String getMinuetfrom() {
		return minuetfrom;
	}
	public void setMinuetfrom(String minuetfrom) {
		this.minuetfrom = minuetfrom;
	}
	public String getHourto() {
		return hourto;
	}
	public void setHourto(String hourto) {
		this.hourto = hourto;
	}
	public String getMinuetto() {
		return minuetto;
	}
	public void setMinuetto(String minuetto) {
		this.minuetto = minuetto;
	}
	
	
}
