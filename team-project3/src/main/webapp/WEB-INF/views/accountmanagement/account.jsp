<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

<style>
.payw {
	width: 40%;
	float: left;
}

.payw tr {
	text-align: left;
}

.payvalue {
	width: 40%;
}

#payvalueid {
	
}

.dropdown {
	margin-left:40px;
}
.total td{
	font-weight: bold;
	font-size: 50px;
}
</style>


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

						<li class="dropdown"><a href="#" 	 class="dropdown-toggle"
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


					<li><a href="charts.jsp"> <i class="icon-facetime-video"></i> <span>잠재고객관리</span>
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

	<div class="dropdown">
		<select name="product" size="1" style="width:95px">
                <option value="ironman">상품명선택</option>
                <option value="deadpool">데드풀</option>
                <option value="spiderman">스파이더맨</option>
        </select> 
        
        <select name="product" size="1" style="width:90px">
			<option value="ironman">매출분류</option>
			<option value="deadpool">데드풀</option>
			<option value="spiderman">스파이더맨</option>
		</select> 
		
		<select name="product" size="1" style="width:85px">
                <option value="ironman">담당자</option>
                <option value="deadpool">데드풀</option>
                <option value="spiderman">스파이더맨</option>
        </select> 
        
        <select name="product" size="1" style="width:90px">
			<option value="ironman">결제형태</option>
			<option value="deadpool">신용카드</option>
			<option value="spiderman">이체</option>
			<option value="spiderman" href="#">현금</option>
		</select>
		&nbsp;&nbsp;&nbsp;
		<input type="date" style="width:120px"> - <input type="date" style="width:120px">
		<a href="#" class="btn btn-small btn-success">조회</a>
		
	</div>
		<br><br><br>
		
		<%-- 총이용권상품매출 --%>
		<div style="margin-left: 50px">
			<table class="total">
				<tr>
					<th>총 이용권상품 매출</th>
					<th>총 이용권상품 결제금액</th>
					<th>총 이용권상품 환불(현금/이체)</th>
				</tr>
				<tr>
					<td>100,000원</td>
					<td>100,000원</td>
					<td>0원</td>
				</tr>
			</table>
		</div>
		<br>
		<br>
		<br>
		<br>
		<br>

		<%-- 결제수단테이블 2개 // css 나중에 위에서 한꺼번에 처리--%>
		<div id="payway" style="margin-left: 50px">

			<span style="font-weight: bold">결제수단</span>
			<hr style="border-color: orange; width: 40%">

			<table class="payw" border="solid 1px">
				<tr>
					<th style="text-align: left" colspan="3">매출</th>
				</tr>
				<tr>
					<th>신용카드</th>
					<td>0건</td>
					<td>0원</td>
				</tr>
				<tr>
					<th>이체</th>
					<td>0건</td>
					<td>0원</td>
				</tr>
				<tr>
					<th>현금</th>
					<td>0건</td>
					<td>0원</td>
				</tr>
				<tr>
					<th style="color: orange">이체/현금 환불</th>
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

		<%-- 매출분류 --%>
		<div id="payvalueid">
			<span style="font-weight: bold">매출분류</span>
			<hr style="border-color: orange; width: 40%">
			<table class="payvalue" border="solid 1px">
				<tr>
					<th style="text-align: left" colspan="3">매출분류</th>
				</tr>
				<tr>
					<th>신용카드</th>
					<td>0건</td>
					<td>0원</td>
				</tr>
				<tr>
					<th>이체</th>
					<td>0건</td>
					<td>0원</td>
				</tr>
				<tr>
					<th>현금</th>
					<td>0건</td>
					<td>0원</td>
				</tr>
				<tr>
					<th style="color: orange">이체/현금 환불</th>
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
		<br><br><br><br><br><br><br><br>
	</div>
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

$(function () {
	
	guidely.add ({
		attachTo: '#target-1'
		, anchor: 'top-left'
		, title: 'Guide Title'
		, text: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut.'
	});
	
	guidely.add ({
		attachTo: '#target-2'
		, anchor: 'top-right'
		, title: 'Guide Title'
		, text: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut.'
	});
	
	guidely.add ({
		attachTo: '#target-3'
		, anchor: 'middle-middle'
		, title: 'Guide Title'
		, text: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut.'
	});
	
	guidely.add ({
		attachTo: '#target-4'
		, anchor: 'top-right'
		, title: 'Guide Title'
		, text: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut.'
	});
	
	guidely.init ({ welcome: true, startTrigger: false });


});

</script>
</body>

</html>

