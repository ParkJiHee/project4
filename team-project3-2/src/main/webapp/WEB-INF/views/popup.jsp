<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<!DOCTYPE html>
<html lang="en">
  
<head>
    <meta charset="utf-8">
    <title>404 - Bootstrap Admin Template</title>

	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="apple-mobile-web-app-capable" content="yes"> 
	    
	<link href="/team-project3/resources/assets/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
	<link href="/team-project3/resources/assets/css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css" />
	
	<link href="/team-project3/resources/assets/css/font-awesome.css" rel="stylesheet">
	    <link href="http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600" rel="stylesheet">
	    
	<link href="/team-project3/resources/assets/css/style.css" rel="stylesheet" type="text/css" />

</head>

<body>
	
	<!-- navbar.jsp -->
	<jsp:include page="/WEB-INF/views/include/navbar.jsp"></jsp:include>
	<!-- navbar.jsp -->



<div class="container">
	
	<div class="row">
		
		<div class="span12">
			
			<div class="error-container">
				<h1>사용방법</h1>
				
				<p>먼저 이 서비스는 센터별로 사용할 수 있는 서비스기 때문에 
아무나 접속해서 가입할 수 있는 환경이 아닌 
이서비스의 총 관리자(admin)만 센터를 가입시켜주는 형식으로 개발하였습니다.
센터아이디로 로그인 하면 가입 할 수 없습니다!
홈 화면에는 센터의 스케줄을 달별로 한눈에 보여줄 수 있도록 구현하였습니다.
 
먼저 스케줄 관리로 들어가보겟습니다.
스케줄은 현정님께서 구현해 주셨습니다. 
스케줄로 들어가보면 주별로 강의를 보여줄 수 있습니다.
그리고 스케줄을 등록 할 수도 있고 스케줄을 삭제 할 수도 있습니다.

다음으론 고객관리로 들어가보겠습니다.
고객관리는 지희님께서 구현해 주셨습니다.
고객관리로 들어가보면 전체 등록된 회원들이 있고, 이용중인 회원, 미결제 회원,
만료된회원, 만료전 회원별로 보여줄 수 있게 구현 되어있습니다.
회원의 이름으로 검색 할 수 있도록 하였습니다.
회원을 등록을 할 수 도 있습니다.
회원을 삭제 할 수도 있고, 회원의 상세 정보도 볼 수 있고,
이 회원한테 상품을 판매할 수도 있습니다.

상품을 판매하고 결제하는 시스템은 정우찬님께서 구현해주셨습니다.
판매화면으로 넘어가면, 상품을 선택 할 수 있고, 상품을 선택하면 결제 화면으로 넘어가서 
금액을 불러와서 상품을 결제를 진행 할 수 있습니다. 
상품을 결제하게 되면 이용중인 회원으로 옮겨지는 것을 볼 수 있습니다.

회계관리로 들어가 보겠습니다.
회계관리는 허선아님께서 구현해주셨습니다.
회계관리로 들어가보면 아까 결제 했던 총 매출과, 결제 수단 별로 매출도 한눈에 볼 수 있습니다.
아래로 내려가보면 주문번호와 결제일시등 결제정보를 볼 수 있고, 
회원이름으로 검색도 가능합니다.

마지막으로 상품 관리로 들어가 보겠습니다.
상품관리는 박현주님께서 구현해주셨습니다.
상품관리로 들어가보면, 센터를 이용할 수 있는 이용권 상품을 볼 수 있습니다. 
그리고 센터에서 각자 상품을 등록할 수 있습니다.
이용권을 수정할 수도 있고, 삭제 할 수도 있습니다.

지금까지 저희가 구현한 부분은 이렇습니다. 앞으로 락커관리나 잠재고객관리등 아직 미흡한 부분들을 
구현할 예정입니다.

감사합니다.</p>
					
					<h3>admin 계정 -> 아이디 : admin, 비밀번호 : 1234</h3>
					
				</div> <!-- /error-actions -->
							
			</div> <!-- /error-container -->			
			
		</div> <!-- /span12 -->
		
	</div> <!-- /row -->
	
</div> <!-- /container -->


<script src="/team-project3/resources/assets/js/jquery-1.7.2.min.js"></script>
<script src="/team-project3/resources/assets/js/bootstrap.js"></script>

</body>

</html>

