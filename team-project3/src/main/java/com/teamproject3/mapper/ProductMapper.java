package com.teamproject3.mapper;

import java.util.List;

import com.teamproject3.vo.ProductVo;

public interface ProductMapper {
	void insertProduct(ProductVo product);

	List<ProductVo> selectAllProduct();

	ProductVo selectProductByProductNo(int productNo);

	void deleteProduct(int productNo);

	void updateProduct(ProductVo product);
}
