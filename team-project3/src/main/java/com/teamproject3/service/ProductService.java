package com.teamproject3.service;

import java.util.List;

import com.teamproject3.vo.ProductVo;


public interface ProductService {

	void writeProduct(ProductVo product);

	List<ProductVo> findAllProduct();

	ProductVo findProductByProductNo(int ProductNo);
	
	void deleteProduct(int productNo);

	void updateProduct(ProductVo product);
	
}
