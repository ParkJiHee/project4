<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>상품선택</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<meta name="apple-mobile-web-app-capable" content="yes">
<link href="/team-project3/resources/assets/css/bootstrap.min.css" rel="stylesheet">
<link href="/team-project3/resources/assets/css/bootstrap-responsive.min.css" rel="stylesheet">
<link href="http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600" rel="stylesheet">
<link href="/team-project3/resources/assets/css/font-awesome.css" rel="stylesheet">
<link href="/team-project3/resources/assets/css/style.css" rel="stylesheet">
<link href="/team-project3/resources/assets/css/pages/plans.css" rel="stylesheet">
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
							<h3>상품결제</h3> 
						</div> 
						<!-- /widget-header -->
						<div class="widget-content">
							<div class="pricing-plans plans-3">
								<p align="right" style="margin-right: 5%">
									<a href="/team-project3/product/productRegister.action"
									class="button btn btn-primary">상품등록</a>
								</p> 
								<c:forEach var="product" items="${ products }">
									<div class="plan-container">
										<div class="plan">
											<div class="plan-header">
												<div class="plan-title">
													${ product.productName }
												</div>
												<!-- /plan-title -->
												<div class="plan-price">
													<h3>${ product.productPrice } 원</h3>
												</div>
												<!-- /plan-price -->
											</div>
											<!-- /plan-header -->
											<div class="plan-actions">
												<a href="/team-project3/purchase/purRegister.action?productno=${ product.productNo }&memberno=${ member.memberNo } "
													class="btn btn-success"><i class="icon-shopping-cart"></i> 결제</a>
											</div>
											<!-- /plan-actions -->
										</div>
										<!-- /plan -->
									</div>
									<!-- /plan-container -->
								</c:forEach>
							</div>
							<!-- /pricing-plans -->
						</div>
						<!-- /widget-content -->
					</div>
					<!-- /widget -->
				</div>
				<!-- /span12 -->
			</div>
			<!-- /row -->
		</div>
		<!-- /container -->
	</div>
	<!-- /main-inner -->
</div>
<!-- /main -->

<div class="extra">
	<div class="extra-inner">
		<div class="container">
			<div class="row">
				<div class="span3">
					<h4>About Free Admin Template</h4>
					<ul>
						<li><a href="javascript:;">EGrappler.com</a></li>
						<li><a href="javascript:;">Web Development Resources</a></li>
						<li><a href="javascript:;">Responsive HTML5 Portfolio
								Templates</a></li>
						<li><a href="javascript:;">Free Resources and Scripts</a></li>
					</ul>
				</div>
				<!-- /span3 -->
				<div class="span3">
					<h4>Support</h4>
					<ul>
						<li><a href="javascript:;">Frequently Asked Questions</a></li>
						<li><a href="javascript:;">Ask a Question</a></li>
						<li><a href="javascript:;">Video Tutorial</a></li>
						<li><a href="javascript:;">Feedback</a></li>
					</ul>
				</div>
				<!-- /span3 -->
				<div class="span3">
					<h4>Something Legal</h4>
					<ul>
						<li><a href="javascript:;">Read License</a></li>
						<li><a href="javascript:;">Terms of Use</a></li>
						<li><a href="javascript:;">Privacy Policy</a></li>
					</ul>
				</div>
				<!-- /span3 -->
				<div class="span3">
					<h4>Open Source jQuery Plugins</h4>
					<ul>
						<li><a href="">Open Source jQuery Plugins</a></li>
						<li><a href="">HTML5 Responsive Tempaltes</a></li>
						<li><a href="">Free Contact Form Plugin</a></li>
						<li><a href="">Flat UI PSD</a></li>
					</ul>
				</div>
				<!-- /span3 -->
			</div>
			<!-- /row -->
		</div>
		<!-- /container -->
	</div>
	<!-- /extra-inner -->
</div>
<!-- /extra -->

<div class="footer">
	<div class="footer-inner">
		<div class="container">
			<div class="row">
				<div class="span12">
					&copy; 2013 <a href="#">Bootstrap Responsive Admin Template</a>.
				</div>
				<!-- /span12 -->
			</div>
			<!-- /row -->
		</div>
		<!-- /container -->
	</div>
	<!-- /footer-inner -->
</div>
<!-- /footer -->

<!-- Le javascript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="/team-project3/resources/assets/js/jquery-1.7.2.min.js"></script>
<script src="/team-project3/resources/assets/js/bootstrap.js"></script>
<script src="/team-project3/resources/assets/js/base.js"></script>
<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
<script type="text/javascript">
$(function() {
	$("#keyword").on('keyup', function() {
		var k = $(this).val();
		$(".plan-container").hide();

		var temp = $("div.plan-title:contains('" + k + "')");
		$(temp).parents(".plan-container").show();
	})
})
</script>
</body>
</html>