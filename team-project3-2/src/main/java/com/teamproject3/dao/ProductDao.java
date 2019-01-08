package com.teamproject3.dao;

import java.util.List;

import com.teamproject3.vo.ProductVo;

public interface ProductDao {

	void insertProduct(ProductVo product);

	List<ProductVo> selectAllProduct(int centerNo);
	
	ProductVo selectProductByProductNo(int productNo);

	void deleteProduct(int productNo);

	void updateProduct(ProductVo product);
	
}
