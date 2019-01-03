package com.teamproject3.dao;

import java.util.List;

import com.teamproject3.mapper.ProductMapper;
import com.teamproject3.vo.ProductVo;

public class OracleProductDao implements ProductDao{

	private ProductMapper productMapper;
	
	public void setProductMapper(ProductMapper productMapper) {
		this.productMapper = productMapper;
	}
	
	@Override
	public void insertProduct(ProductVo product) {
		
		productMapper.insertProduct(product);
		
	}
	
	@Override
	public List<ProductVo> selectAllProduct(int centerNo) {
		
		List<ProductVo> products = productMapper.selectAllProduct(centerNo);
		
		return products;
	}
	
	@Override
	public ProductVo selectProductByProductNo(int productNo) {
		
		ProductVo product = productMapper.selectProductByProductNo(productNo);
		
		return product;
	}
	
	@Override
	public void deleteProduct(int productNo) {

		productMapper.deleteProduct(productNo);
		
	}
	
	@Override
	public void updateProduct(ProductVo product) {
		
		productMapper.updateProduct(product);
		
	}
	
}
