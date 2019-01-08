<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
  
<head>
    <meta charset="utf-8">
    <title>Product Detail</title>
    
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="apple-mobile-web-app-capable" content="yes">    
    
    <link href="/team-project3/resources/assets/css/bootstrap.min.css" rel="stylesheet">
    <link href="/team-project3/resources/assets/css/bootstrap-responsive.min.css" rel="stylesheet">
    
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600" rel="stylesheet">
    <link href="/team-project3/resources/assets/css/font-awesome.css" rel="stylesheet">
    
    <link href="/team-project3/resources/assets/css/style.css" rel="stylesheet">
   

  </head>

<body>

<jsp:include page="/WEB-INF/views/include/header.jsp">
		<jsp:param value="product" name="bgcolor" />
	</jsp:include>

<div class="main">
	
	<div class="main-inner">

	    <div class="container">
	
	      <div class="row">
	      	
	      	<div class="span12">      		
	      		
	      		<div class="widget ">
	      			
	      			<div class="widget-header">
	      				<i class="icon-edit"></i>
	      				<h3>상품 상세</h3>
	  				</div> <!-- /widget-header -->
					
					<div class="widget-content">
						
						<div class="tabbable">
						
						
						<br>
						
							<div class="tab-content">
								<div class="tab-pane active" id="formcontrols">
								<form id="edit-profile" class="form-horizontal" 
									action="/team-project3/product/productDetail.action" method="post">
									<fieldset>
										
										<div class="control-group">											
											<label class="control-label">센터 번호</label>
											<div class="controls">
												<input type="text" readonly="readonly" class="span6" name="centerNo" value="${ loginuser.centerNo }">
												<p class="help-block">센터 번호는 로그인과 동시에 저장됩니다. 바꿀 수 없습니다.</p>
											</div> <!-- /controls -->				
										</div> <!-- /control-group -->
										
										<div class="control-group">											
											<label class="control-label">센터 이름</label>
											<div class="controls">
												<input type="text" class="span6 disabled" name="cenId" value="${ loginuser.cenId }" disabled>
												<p class="help-block">센터 이름은 로그인과 동시에 저장됩니다. 바꿀 수 없습니다.</p>
											</div> <!-- /controls -->				
										</div> <!-- /control-group -->
										
										<input type="hidden" class="span6" name="productNo" value="${ product.productNo }">
										
										<div class="control-group">											
											<label class="control-label">상품 이름</label>
											<div class="controls">
												<input type="text" class="span6" name="productName" readonly="readonly">
											</div> <!-- /controls -->				
										</div> <!-- /control-group -->
										
										
										<div class="control-group">											
											<label class="control-label">상품 설명</label>
											<div class="controls">
												<!-- <input type="text" class="span6" id="productcontent"> -->
												<textarea rows="5" class="span6" name="productExplain" readonly="readonly"></textarea>
											</div> <!-- /controls -->				
										</div> <!-- /control-group -->
                                        
                                        
                                        
                                        
                                        <div class="control-group">											
											<label class="control-label">상품 금액</label>
											
                                            <div class="controls">
                                               <div class="input-prepend input-append">
                                                  <input class="span2" name="productPrice" type="text" readonly="readonly">
                                                  <span class="add-on">원</span>
                                                </div>
                                              </div>	<!-- /controls -->			
										</div> <!-- /control-group -->
                                        
											
										 <br />
										
											
										<div class="form-actions">
											<a href="/team-project3/product/productList.action?centerno=${ loginuser.centerNo }" class="btn">취소</a>
										</div> <!-- /form-actions -->
									</fieldset>
								</form>
								</div>
								
								
							</div>
						  
						  
						</div>
						
						
						
						
						
					</div> <!-- /widget-content -->
						
				</div> <!-- /widget -->
	      		
		    </div> <!-- /span8 -->
	      	
	      	
	      	
	      	
	      </div> <!-- /row -->
	
	    </div> <!-- /container -->
	    
	</div> <!-- /main-inner -->
    
</div> <!-- /main -->
    
    
    
 
<jsp:include page="/WEB-INF/views/include/footer.jsp"></jsp:include>


<script src="/team-project3/resources/assets/js/jquery-1.7.2.min.js"></script>
	
<script src="/team-project3/resources/assets/js/bootstrap.js"></script>
<script src="/team-project3/resources/assets/js/base.js"></script>


  </body>

</html>

