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
		
//		ProductDao productDao = new OracleProductDao();
//		List<ProductVo> products = productDao.selectAllProduct();
//		return products;
		return null;
		
	}

	@Override
	public ProductVo findProductByProductNo(int productNo) {
		
//		HobbyDao hobbyDao = new OracleHobbyDao();
//		HobbyVo hobby = hobbyDao.selectHobbyByHobbyNo(hobbyNo);
//		
//		if (hobby != null) {
//			List<HobbyAttach> attachments = hobbyDao.selectHobbyAttachByHobbyNo(hobbyNo);
//			hobby.setAttachments(attachments);
//					
//		}
//		
		return null;
		
	}

	@Override
	public int findProductCount() {
		int count = productDao.selectProductCount();
		return count;
	}
	
	@Override
	public void deleteProduct(int productNo) {
//		ProductDao productDao = new OracleProductDao();
//		productDao.deleteProduct(productNo);
	}
	
	@Override
	public void updateProduct(ProductVo product) {
//		ProductDao productDao = new OracleProductDao();
//		productDao.updateProduct(product);
	}

//	@Override
//	public List<HobbyVo> findAllHobbyByPage(int from, int to) {
//		List<HobbyVo> hobbys = hobbyDao.selectAllHobbyByPage(from, to);
//		
//		// 리스트에서 사진 보여주기
//	      for (HobbyVo hobby : hobbys) {      
//	         List<HobbyAttach> attachments = hobbyDao.selectHobbyAttachByHobbyNo(hobby.getHobbyNo());
//	         hobby.setAttachments(attachments);
//	      }
//		
//		return hobbys;		
//	}



	

//	@Override
//	public void writeReply(Board board) {
//		
//		BoardDao boardDao = new OracleBoardDao();
//		
//		Board board2 = boardDao.selectBoardByBoardNo(board.getBoardNo()); //원 글 정보 조회
//		board.setGroupNo(board2.getGroupNo());
//		board.setStep(board2.getStep() + 1);
//		board.setDepth(board2.getDepth() + 1);
//		
//		boardDao.updateStep(board2.getGroupNo(), board2.getStep()); //원래 있던 글의 step 증가		
//		boardDao.insertReply(board);
//		
//		//첨부파일 등록하는 구현
//		for (BoardAttach attach : board.getAttachments()) {
//			attach.setBoardNo(board.getBoardNo());//위에서 등록한 글번호 저장
//			boardDao.insertBoardAttach(attach);
//		}
//		
//	}

	
}
