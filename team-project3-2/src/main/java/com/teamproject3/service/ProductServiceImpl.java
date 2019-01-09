package com.teamproject3.service;

import java.util.List;

import com.teamproject3.dao.ProductDao;
import com.teamproject3.vo.ProductVo;

public class ProductServiceImpl implements ProductService {

	private ProductDao productDao;// = new BoardDao();
	public void setProductDao(ProductDao productDao) {
		this.productDao = productDao;
	}
	
	@Override
	public void writeProduct(ProductVo product) {
		
		productDao.insertProduct(product);
		
		
		
	}

	@Override
	public List<ProductVo> findAllProduct(int centerNo) {
		
		List<ProductVo> products = productDao.selectAllProduct(centerNo);
		return products;
		
	}

	@Override
	public ProductVo findProductByProductNo(int productNo) {
		
		ProductVo product = productDao.selectProductByProductNo(productNo);
		
		return product;
		
	}
	
	@Override
	public void deleteProduct(int productNo) {
		
		productDao.deleteProduct(productNo);
	
	}
	
	@Override
	public void updateProduct(ProductVo product) {
		
		productDao.updateProduct(product);
	
	}


	
}
