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
		
		System.out.println("productno : " + product.getProductNo());//여기서 board.getBoardNo()를 호출하면 --> 0
		productDao.insertProduct(product);
		System.out.println("productno : " + product.getProductNo());//여기서 board.getBoardNo()를 호출하면 --> 삽입된 게시글의 글번호
		
		
	}

	@Override
	public List<ProductVo> findAllProduct() {
		
		List<ProductVo> products = productDao.selectAllProduct();
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
