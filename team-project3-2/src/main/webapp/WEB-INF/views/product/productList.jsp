<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
  
<head>
    <meta charset="utf-8">
    <title>Prouduct List</title>
    
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="apple-mobile-web-app-capable" content="yes">    
    
    <link href="/team-project3/resources/assets/css/bootstrap.min.css" rel="stylesheet">
    <link href="/team-project3/resources/assets/css/bootstrap-responsive.min.css" rel="stylesheet">
    
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600" rel="stylesheet">
    <link href="/team-project3/resources/assets/css/font-awesome.css" rel="stylesheet">
    
    <link href="/team-project3/resources/assets/css/style.css" rel="stylesheet">
    
    
    <link href="/team-project3/resources/assets/css/pages/plans.css" rel="stylesheet">

<style type="text/css">
.error {
	color: red;
}

.overlay {
	transition: .5s ease;
	opacity: 0;
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	-ms-transform: translate(-50%, -50%);
	text-align: center;
	z-index: 1;
}

.span3 .overlay2 {
	transition: .5s ease;
	position: absolute;
	opacity: 0;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	-ms-transform: translate(-50%, -50%);
	text-align: center;
}

.span3:hover .overlay {
	opacity: 1;
}

.span3:hover .widget-content {
	background-color: #BDBDBD;
	opacity: 0.7;
}

.span3 .text {
	color: black;
	font-size: 40px;
	padding: 16px 32px;
}
</style>

<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
	<script type="text/javascript">
	$(function(){
		$("#keyword").on('keyup', function() {
			var k = $(this).val();
			$(".span3").hide();
			var temp = $("h4.media-heading:contains('" + k + "')");
			$(temp).parents(".span3").show();
		})
		
		/* $("#keyword").on('keyup',function() {
	            var k = $(this).val();
	            $(".plan-container").hide();
	            
	           var temp = $("div.plan-title:contains('" + k + "')");

	            $(temp).parents(".plan-container").show();
	        }) */
	})
	
	</script>

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
	      		
	      		<div class="widget">
					<input type="text" width="5px" placeholder="검색" id="keyword">
					<button type="submit" class="btn btn-small btn-success">검색</button>
					<div class="widget-header">
						<i class="icon-th-large"></i>
						<h3>상품관리</h3>
					</div> <!-- /widget-header -->
					
					<div class="widget-content">

								<div class="pricing-plans plans-3">
									<p align="right" style="margin-right: 5%">
										<a href="/team-project3/product/productRegister.action"
											class="button btn btn-primary">상품등록</a>
									</p>
									<c:forEach var="product" items="${ products }">
										<div class="span3">

											<div class="widget">

												<div class="widget-content">
													<input type="hidden" name="productNo"
														value="${ product.productNo }" />
													<div class="media">
														<div class="media-body">
															<h4 class="media-heading">${ product.productName }</h4>
															<hr>
															<p>${ product.productExplain }</p>
															<h4>가격 : ${ product.productPrice } 원</h4>
															
														</div>
													</div>
												</div>
												<!-- /widget-content -->

												<div class="overlay">
													<div class="inline">
														<a style="margin: 10px;"
															href="/team-project3/product/productUpdate.action?productno=${ product.productNo }"
															class="btn btn-success"><i class="icon-wrench"></i><span> 수정</span>
														</a> <a
															href="/team-project3/product/productDelete.action?centerno=${ loginuser.centerNo }&productno=${ product.productNo }"
															class="btn btn-danger"><i class=" icon-trash"></i><span> 삭제</span>
														</a>
													</div>
												</div>
												<!-- overlay end -->

											</div>
											<!-- /widget -->
										</div>
										<!-- /span3 -->
									</c:forEach>
									

								</div>
								<!-- /pricing-plans -->

							</div> <!-- /widget-content -->
						
				</div> <!-- /widget -->					
				
		    </div> <!-- /span12 -->     	
	      	
	      	
	      </div> <!-- /row -->
	
	    </div> <!-- /container -->
	    
	</div> <!-- /main-inner -->
    
</div> <!-- /main -->
    


<jsp:include page="/WEB-INF/views/include/footer.jsp"></jsp:include>
    

<!-- Le javascript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="/team-project3/resources/assets/js/jquery-1.7.2.min.js"></script>

<script src="/team-project3/resources/assets/js/bootstrap.js"></script>
<script src="/team-project3/resources/assets/js/base.js"></script>

  </body>

</html>

