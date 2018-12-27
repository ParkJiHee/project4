package com.teamproject3.dao;

import java.util.ArrayList;
import java.util.List;

import com.teamproject3.vo.ProductVo;

public interface ProductDao {

	void insertProduct(ProductVo hobby);

	List<ProductVo> selectAllProduct();

	int selectProductCount();

	ProductVo selectProductByProductNo(int hobbyNo);

	void deleteProduct(int productNo);

	void updateProduct(ProductVo product);
	
}
