package com.teamproject3.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;

import com.teamproject3.vo.ProductVo;

public class OracleProductDao implements ProductDao{

	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	private JdbcTemplate jdbcTemplate;
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}
	@Override
	public void insertProduct(ProductVo hobby) {
		// TODO Auto-generated method stub
		
	}
	@Override
	public List<ProductVo> selectAllProduct() {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public int selectProductCount() {
		// TODO Auto-generated method stub
		return 0;
	}
	@Override
	public ProductVo selectProductByProductNo(int hobbyNo) {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public void deleteProduct(int productNo) {
		// TODO Auto-generated method stub
		
	}
	@Override
	public void updateProduct(ProductVo product) {
		// TODO Auto-generated method stub
		
	}
	
	
	
}
