<%@page import="com.teamproject3.vo.CenterVo" %>
<%@page import="com.teamproject3.vo.MemberVo" %>
<%@page import="com.teamproject3.vo.PurchaseVo" %>
<%@page import="com.teamproject3.vo.ProductVo" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<title>회계관리</title>

<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<meta name="apple-mobile-web-app-capable" content="yes">

<link href="/team-project3/resources/assets/css/bootstrap.min.css" rel="stylesheet">
<link href="/team-project3/resources/assets/css/bootstrap-responsive.min.css" rel="stylesheet">

<link href="http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600" rel="stylesheet">
<link href="/team-project3/resources/assets/css/font-awesome.css" rel="stylesheet">
<link href="/team-project3/resources/assets/css/style.css" rel="stylesheet">
<link href="/team-project3/resources/assets/js/guidely/guidely.css" rel="stylesheet">


	<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
	<script src="//code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
	<script type="text/javascript">
	$(function(){
		 $("#keyword").on('keyup',function() {
	            var k = $(this).val();
	            $(".purchaselist").hide();
	            
	           var temp = $("td.namesearch:contains('" + k + "')");

	            $(temp).parents(".purchaselist").show();
	        });
		 
		 $('.search').on('click', function (event) {
			var classs= $(this).attr('class');
			
			if(classs === 'search'){
				$('#redi').val('search');
			}
		})
		 		 
		})
	
	</script>
</head>

<body>

 <jsp:include page="/WEB-INF/views/include/header.jsp">
      <jsp:param value="financial" name="bgcolor" />
   </jsp:include>

	<div class="main">


		<%-- 총이용권상품매출 --%>
    <div class="container">
    
    	<div class="dropdown">
			<select name="product" size="1" style="width: 95px">
				<option value="ironman">상품명선택</option>
				<c:forEach var="product" items="${ product }">
				<option value="deadpool" name="deadpool">${ product.productName }</option>
				</c:forEach>
				
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
			
			<!-- <form name="datesearch" action="/team-project3/financial/accountant.action"> -->
			<input type="date" id="from" style="width: 120px">
			- <input type="date" id="to" style="width: 120px"> 
				<button type="submit" class="btn btn-small btn-success search">조회</button>
			<input type="hidden" name="redi" id="redi"/>
	<!-- 		</form> -->
			
			
			
		</div>
		<br>
		<br>
		<br>


			<div class="accordion" id="accordion2">
				<div class="accordion-group">
					<div class="accordion-heading">
						<a class="accordion-toggle" data-toggle="collapse"
							data-parent="#accordion2" href="#collapseOne">  매출보기 </a>
					</div>
					<div id="collapseOne" class="accordion-body collapse in">
						<div class="accordion-inner" style="background-color: white">
						
						<table style="margin: 0 auto;text-align: center">
								<tr style="height: 50px; ">
									<th style=" font-size: 25px;">
										${loginuser.cenId }의 <br><br>총 이용 상품 매출</th>
									<th></th>
									<th></th>
									<th style=" font-size: 25px; color:grey">카드 이용</th>
									<th></th>
									<th></th>
									<th style=" font-size: 25px; color:grey">현금 이용</th>
								
							
								</tr>
								<tr style="text-align: center;">
									<td style="color: red; font-size: 30px; font-weight: 20px; padding-top: 20px; padding-bottom: 20px"><%-- ${totalsales}원 --%>
									<fmt:formatNumber value="${totalsales}" pattern="#,###.##"/>원</td>
									
									<td><img src="/team-project3/resources/assets/img/equal.png" style="height: 90px"></td>
									<td></td>
								
									<td style="color: orange; font-size: 30px; font-weight: 20px; padding-top: 20px; padding-bottom: 20px"><%-- ${totalsales}원 --%>
									<fmt:formatNumber value="${salesstat[1].PURTOTAL}" pattern="#,###.##"/>원</td>
				
									<td><img src="/team-project3/resources/assets/img/plus.png" style="height: 90px"></td>
									<td></td>
									<td style="color: blue; font-size: 30px; font-weight: 20px; padding-top: 20px; padding-bottom: 20px"><%-- ${totalsales}원 --%>
									<fmt:formatNumber value="${salesstat[0].PURTOTAL}" pattern="#,###.##"/>원</td></tr>
							</table>
						
						</div>
					</div>
				</div>
				<br>
				<br>
				<br>
				<br>



				<%-- 결제수단테이블 2개 // css 나중에 위에서 한꺼번에 처리--%>
				<div class="widget widget-table action-table">
					<div class="widget-header">
						<i class="icon-th-list"></i>
						<h3>결제수단</h3>
					</div>

					<div class="widget-content">
						<table class="table table-striped table-bordered">

							<tr>
								<th style="text-align: left" colspan="3">매출</th>
							</tr>
							<tr>
								<td>신용카드</td>
								<td>${salesstat[1].PURCOUNT}건</td>
								<td><fmt:formatNumber value="${salesstat[1].PURTOTAL}" pattern="#,###.##"/>원</td>
							</tr>
							<tr>
								<td>현금</td>
								<td>${salesstat[0].PURCOUNT}건</td>
								<td><fmt:formatNumber value="${salesstat[0].PURTOTAL}" pattern="#,###.##"/>원</td>
							</tr>
							<tr>
								<th>합계</th>
								<td>${alltotal[0].METHODCOUNT}건</td>
								<td><fmt:formatNumber value="${alltotal[0].METHODTOTAL}" pattern="#,###.##"/>원</td>
							</tr>

						</table>
					</div>
				</div>

				<div class="widget widget-table action-table">
					<div class="widget-header">
						<i class="icon-th-list"></i>
						<h3>매출분류</h3>
					</div>
					<!-- /widget-header -->
					<div class="widget-content">
						<table class="table table-striped table-bordered">
							<tr>
								<th style="text-align: left" colspan="3">매출분류</th>
							</tr>
							<tr>
								<td>결제</td>
								<td>${alltotal[0].METHODCOUNT}건</td>
								<td><fmt:formatNumber value="${alltotal[0].METHODTOTAL}" pattern="#,###.##"/>원</td>
							</tr>

						</table>
					</div>
				</div>

				<br> <br> <br>


				<%-- 전체 월별 리스트 --%>
				<div id="list">
					회원검색: &nbsp;&nbsp;<input type="text" width="5px" placeholder="검색"
						id="keyword">
					<table class="table table-bordered table-condensed table-hover"
						id="reservationList" style="background-color: white">
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
						<tbody>
							<c:choose>
								<c:when test="${ empty purchases }">
									<tr>
										<td colspan="15" style="text-align: center">테이블 자료가 없습니다.</td>
									</tr>
								</c:when>
								<c:otherwise>
									<c:forEach var="purchase" items="${ purchases }">
										<tr class="purchaselist">
											<%-- 검색용 class --%>
											<td>${ purchase.purchaseNo }</td>

											<td>${ purchase.member.memVisitDate }</td>

											<td class="namesearch"><input type="hidden"
												name="memberNo" value="${ purchase.member.memberNo }" />
											<%-- 검색용 class --%> ${ purchase.member.memName } (${ purchase.member.age }/
												${ purchase.member.memGender })</td>

											<td>${ purchase.member.memPhone }</td>

											<td>${ purchase.purName }</td>

											<td></td>

											<td><fmt:formatNumber value="${ purchase.purPrice }" pattern="#,###.##"/></td>

											<td></td>

											<td style="color: blue">${ purchase.purMethod}:<fmt:formatNumber value="${ purchase.purPrice }" pattern="#,###.##"/></td>

											<td></td>

											<td></td>


											<td></td>

											<td>${ loginuser.cenId }</td>
											<td></td>
										</tr>
									</c:forEach>
								</c:otherwise>
							</c:choose>

						</tbody>
					</table>
				</div>


			</div>
		</div>
		</div>
	
	<br><br><br><br><br><br>
	<!-- /main -->


	<jsp:include page="/WEB-INF/views/include/footer.jsp"></jsp:include>
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