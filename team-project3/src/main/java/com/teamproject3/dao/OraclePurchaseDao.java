package com.teamproject3.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;

import com.teamproject3.vo.ProductVo;
import com.teamproject3.vo.PurchaseVo;

public class OraclePurchaseDao implements PurchaseDao{

	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	private JdbcTemplate jdbcTemplate;
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}
	
	@Override
	public void insertPurchase(PurchaseVo purchase) {
		// TODO Auto-generated method stub
		
	}
	
}
