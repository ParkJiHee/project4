<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<title>회계관리</title>

<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<meta name="apple-mobile-web-app-capable" content="yes">

<link href="/team-project3/resources/assets/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="/team-project3/resources/assets/css/bootstrap-responsive.min.css"
	rel="stylesheet">

<link
	href="http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600"
	rel="stylesheet">
<link href="/team-project3/resources/assets/css/font-awesome.css"
	rel="stylesheet">

<link href="/team-project3/resources/assets/css/style.css"
	rel="stylesheet">


<link href="/team-project3/resources/assets/js/guidely/guidely.css"
	rel="stylesheet">

<!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->


</head>

<body>

	<div class="navbar navbar-fixed-top">
		<div class="navbar-inner">
			<div class="container">

				<a class="btn btn-navbar" data-toggle="collapse"
					data-target=".nav-collapse"> <span class="icon-bar"></span> <span
					class="icon-bar"></span> <span class="icon-bar"></span>
				</a> <a class="brand" href="index.jsp"> healthMe </a>

				<div class="nav-collapse">
					<ul class="nav pull-right">
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown"> <i class="icon-cog"></i> 계정관리 <b
								class="caret"></b>
						</a>

							<ul class="dropdown-menu">
								<li><a href="javascript:;">설정</a></li>
								<li><a href="javascript:;">도움말</a></li>
							</ul></li>

						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown"> <i class="icon-user"></i>
								EGrappler.com <b class="caret"></b>
						</a>

							<ul class="dropdown-menu">
								<li><a href="javascript:;">내프로필</a></li>
								<li><a href="javascript:;">로그아웃</a></li>
							</ul></li>
					</ul>

					<form class="navbar-search pull-right">
						<input type="text" class="search-query" placeholder="Search">
					</form>

				</div>
				<!--/.nav-collapse -->

			</div>
			<!-- /container -->

		</div>
		<!-- /navbar-inner -->

	</div>
	<!-- /navbar -->





	<div class="subnavbar">

		<div class="subnavbar-inner">

			<div class="container">

				<ul class="mainnav">

					<li><a href="index.jsp"> <i class="icon-dashboard"></i> <span>고객관리</span>
					</a></li>



					<li><a href="reports.jsp"> <i class="icon-list-alt"></i> <span>상품등록</span>
					</a></li>

					<li class="active"><a href="account.jsp"> <i
							class="icon-bar-chart"></i> <span>회계관리</span>
					</a></li>


					<li><a href="charts.jsp"> <i class="icon-facetime-video"></i>
							<span>잠재고객관리</span>
					</a></li>


					<li><a href="shortcodes.jsp"> <i class="icon-code"></i> <span>스케줄관리</span>
					</a></li>

					<li class="  dropdown"><a href="javascript:;"
						class="dropdown-toggle" data-toggle="dropdown"> <i
							class="icon-long-arrow-down"></i> <span>상품관리</span> <b
							class="caret"></b>
					</a>

						<ul class="dropdown-menu">
							<li><a href="icons.jsp">Icons</a></li>
							<li><a href="faq.jsp">FAQ</a></li>
							<li><a href="pricing.jsp">Pricing Plans</a></li>
							<li><a href="login.jsp">Login</a></li>
							<li><a href="signup.jsp">Signup</a></li>
							<li><a href="error.jsp">404</a></li>
						</ul></li>

				</ul>

			</div>
			<!-- /container -->

		</div>
		<!-- /subnavbar-inner -->

	</div>
	<!-- /subnavbar -->


	<div class="main">


		<%-- 총이용권상품매출 --%>
    <div class="container">
    
    	<div class="dropdown">
			<select name="product" size="1" style="width: 95px">
				<option value="ironman">상품명선택</option>
				<option value="deadpool" name="deadpool">데드풀</option>
				<option value="spiderman">스파이더맨</option>
				
			</select> <select name="salesvalue" size="1" style="width: 90px">
				<option value="salesvalue">매출분류</option>
				<option value="deadpool">신규결제</option>
				<option value="spiderman">재 결제</option>
				<option value="spiderman">카드취소</option>
				<option value="spiderman">이체/현금 환불</option>
				
			</select> <select name="manager" size="1" style="width: 85px">
				<option value="ironman">담당자</option>
				<option value="deadpool">데드풀</option>
				<option value="spiderman">스파이더맨</option>
				
			</select> <select name="payment" size="1" style="width: 90px">
				<option value="ironman">결제형태</option>
				<option value="deadpool">신용카드</option>
				<option value="spiderman">이체</option>
				<option value="spiderman" href="#">현금</option>
			</select> &nbsp;&nbsp;&nbsp; 
			<input type="date" style="width: 120px">
			- <input type="date" style="width: 120px"> <a href="#"
				class="btn btn-small btn-success">조회</a>

		</div>
		<br>
		<br>
		<br>
		
		
      <div class="row">
        <div class="span6">
          <div class="widget widget-nopad">
            <!-- /widget-header -->
            <div class="widget-content">
              <div class="widget big-stats-container">
                <div class="widget-content">
                  	<span class="txt">총 이용권상품 매출</span> 
						<!-- <span class="up">12%<span>up</span></span> -->
						<p data-msg="totalProductSalesDisp">540,000 원</p>
					</div>
					<div class="calculation">
						<span class="same"></span>
					</div>
					<div class="total_list">
						<span class="txt_back">총 이용권상품 결제금액</span>
						<!-- <span class="down">12%<span>down</span></span> -->
						<p data-msg="totalProductPayCardSales">750,000 원</p>
					</div>
					<div class="calculation">
						<span class="minus"></span>
					</div>
					<div class="total_list">
						<span class="txt_back">총 이용권상품 환불(현금/이체)</span>
						<!-- <span class="down">12%<span>down</span></span> -->
						<p data-msg="productRefundCashBankSalesReversalDisp">- 210,000 원</p>
                  
                </div>
                <!-- /widget-content --> 
                
              </div>
            </div>
          </div>
          <!-- /widget -->
          </div>
          </div>

		<%-- 결제수단테이블 2개 // css 나중에 위에서 한꺼번에 처리--%>
		 <div class="widget widget-table action-table">
            <div class="widget-header"> <i class="icon-th-list"></i>
              <h3>결제수단</h3>
            </div>

            <div class="widget-content">
              <table class="table table-striped table-bordered">
 
         <tr>
					<th style="text-align: left" colspan="3">매출</th>
				</tr>
				<tr>
					<td>신용카드</td>
					<td>0건</td>
					<td>0원</td>
				</tr>
				<tr>
					<td>현금</td>
					<td>0건</td>
					<td>0원</td>
				</tr>
				<tr>
					<td style="color: orange">현금 환불</td>
					<td>0건</td>
					<td>0원</td>
				</tr>
				<tr>
					<th>합계</th>
					<td>0건</td>
					<td>0원</td>
				</tr>
                
              </table>
              </div>
              </div>
  
            <div class="widget widget-table action-table">
            <div class="widget-header"> <i class="icon-th-list"></i>
              <h3>매출분류</h3>
            </div>
            <!-- /widget-header -->
            <div class="widget-content">
              <table class="table table-striped table-bordered">
                <tr>
					<th style="text-align: left" colspan="3">매출분류</th>
				</tr>
				<tr>
					<td>신규결제</td>
					<td>0건</td>
					<td>0원</td>
				</tr>
				<tr>
					<td>재 결제</td>
					<td>0건</td>
					<td>0원</td>
				</tr>
				<tr>
					<td>카드취소</td>
					<td>0건</td>
					<td>0원</td>
				</tr>
				<tr>
					<td style="color: orange">현금 환불</td>
					<td>0건</td>
					<td>0원</td>
				</tr>
				<tr>
					<th>합계</th>
					<td>0건</td>
					<td>0원</td>
				</tr>
              </table>
              </div>
              </div>
	
		<br>
		<br>
		<br>


		<%-- 전체 월별 리스트 --%>
		<div id="list">
			<table class="table table-bordered table-condensed table-hover"
				id="reservationList">
				<thead>
					<tr>
						<th style="width: 5%">주문번호</th>
						<th style="width: 7%">결제일시</th>
						<th style="width: 5%">구매회원</th>
						<th style="width: 6%">휴대폰 번호</th>
						<th style="width: 8%">결제내역</th>

						<th style="width: 5%">상태</th>
						<th style="width: 4%">정가</th>
						<th style="width: 6%">할인금액</th>
						<th style="width: 8%">결제금액</th>
						<th style="width: 6%">포인트 결제</th>

						<th style="width: 6%">미수금</th>
						<!-- <th style="width: 6%">예상 환불금액</th> -->
						<th style="width: 8%">환불금액</th>
						<!-- 2.0v 2017-08-07 수정 -->
						<th style="width: 5%">포인트 적립</th>
						<th style="width: 4%">결제담당</th>

						<th style="width: 4%">결제메모</th>


						<!-- <th style="width: 4%">기간</th> -->
						<!-- <th style="width: 4%">횟수</th> -->


						<!-- 통계용 -->
						<!-- 결제수단 -->
						<!-- <th style="display:none" data-statistics="payCardCnt">신용카드 결제 건수</th>
						<th style="display:none" data-statistics="payCardSales">신용카드 매출</th>
						<th style="display:none" data-statistics="payBankCnt">이체 결제 건수</th>
						<th style="display:none" data-statistics="payBankSales">이체 결제 매출</th>
						<th style="display:none" data-statistics="payCashCnt">현금 결제 건수</th>
						<th style="display:none" data-statistics="payCashSales">현금 결제 매출</th>
						
						상품분류
						<th style="display:none" data-statistics="newRegistPayCnt">신규결제 건수</th>
						<th style="display:none" data-statistics="newRegistPaySales">신규결제 매출</th>
						<th style="display:none" data-statistics="reRegistPayCnt">재결제 건수</th>
						<th style="display:none" data-statistics="reRegistPaySales">재결제 매출</th>
						<th style="display:none" data-statistics="productRefundCardCnt">카드취소 건수</th>
						<th style="display:none" data-statistics="productRefundCardSales">카드취소 환불</th>
						<th style="display:none" data-statistics="productRefundCashCnt">현금 환불 건수</th>
						<th style="display:none" data-statistics="productRefundCashSales">현금 환불</th>
						<th style="display:none" data-statistics="productRefundBankCnt">이체 환불 건수</th>
						<th style="display:none" data-statistics="productRefundBankSales">이체 환불</th>
						
						
						<th style="display:none" data-statistics="receivablesCnt">미수잔액 건수</th>
						<th style="display:none" data-statistics="receivablesSales">미수잔액 금액</th> -->
					</tr>
				</thead>

				<c:choose>
					<c:when test="${ empty data }">
						<tbody>
							<td colspan="15" style="text-align:center">테이블 자료가 없습니다.</td>
						</tbody>
					</c:when>
					<c:otherwise>
						<tbody>

						</tbody>
					</c:otherwise>
				</c:choose>
			</table>
		</div>

	</div>
	</div>
	<br><br><br><br><br><br>
	<!-- /main -->


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

	<script src="/team-project3/resources/assets/js/guidely/guidely.min.js"></script>

	<script>
		$(function() {

			guidely
					.add({
						attachTo : '#target-1',
						anchor : 'top-left',
						title : 'Guide Title',
						text : 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut.'
					});

			guidely
					.add({
						attachTo : '#target-2',
						anchor : 'top-right',
						title : 'Guide Title',
						text : 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut.'
					});

			guidely
					.add({
						attachTo : '#target-3',
						anchor : 'middle-middle',
						title : 'Guide Title',
						text : 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut.'
					});

			guidely
					.add({
						attachTo : '#target-4',
						anchor : 'top-right',
						title : 'Guide Title',
						text : 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut.'
					});

			guidely.init({
				welcome : true,
				startTrigger : false
			});

		});
	</script>
</body>

</html>