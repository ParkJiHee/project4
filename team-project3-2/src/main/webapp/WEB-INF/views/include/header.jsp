<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="navbar navbar-fixed-top">
  <div class="navbar-inner">
    <div class="container"> <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse"><span
                    class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span> </a><a class="brand" href="/team-project3/home.action">Health Me </a>
      <div class="nav-collapse">
        <ul class="nav pull-right">
          <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown"><i
                            class="icon-cog"></i> Account <b class="caret"></b></a>
                            <script type="text/javascript">
					window.addEventListener('load', function(event) {
						$('#show-register-modal').on('click', function(event) {
							var register_modal = $('#myCenter');
							register_modal.css({'z-index': '1050'});
							register_modal.modal('show');
						});
						
					});
				</script>
            <ul class="dropdown-menu">
              <li><a href="#" id="show-register-modal">센터 정보 수정</a></li>
              <li><a href="javascript:;">Help</a></li>
            </ul>
          </li>
          
          <%-- 로그인 여부 확인 : session에 로그인 데이터 저장 여부 확인 --%>            
		<c:choose>
	       	<c:when test="${ not empty sessionScope.loginuser }">
	       	 <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown"><i
                            class="icon-user"></i> ${ loginuser.cenId } <b class="caret"></b></a>
		          <ul class="dropdown-menu">
		              <li><a href="javascript:;">Profile</a></li>
		              <li><a href="/team-project3/logout.action">Logout</a></li>
		              <c:if test='${ not empty loginuser and loginuser.cenId eq "admin" }'>
	                  	<li><a href="/team-project3/signup.action">Sign up</a></li>
	                  </c:if>
	            </ul>
            </li>
	       	</c:when>
	       	<c:otherwise>
	       	 <li><a href="/team-project3/login.action"> Login </a></li>
	       	</c:otherwise>
	    </c:choose>
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


<c:choose>
	<c:when test='${ not empty param.bgcolor and param.bgcolor eq "index"}'>

		<div class="subnavbar">
		  <div class="subnavbar-inner">
		    <div class="container">
		      <ul class="mainnav">
		        <li class="active"><a href="/team-project3/home.action"><i class="icon-dashboard"></i><span>Home</span> </a> </li>
		        <li></li>
		      </ul>
		    </div>
		    <!-- /container --> 
		  </div>
		  <!-- /subnavbar-inner --> 
		</div>
		<!-- /subnavbar -->

	</c:when>
	
	<c:when test='${ not empty param.bgcolor and param.bgcolor eq "memberlist" }'>
		<div class="subnavbar">
		  <div class="subnavbar-inner">
		    <div class="container">
		      <ul class="mainnav">
		        <li><a href="/team-project3/home.action"><i class="icon-home"></i><span>Home</span> </a> </li>
		        <li><a href="/team-project3/schedule/schedule.action?centerno=${ loginuser.centerNo }"><i class="icon-calendar"></i><span>스케줄러</span> </a></li>
		        <li class="active"><a href="/team-project3/member/memberlist.action"><i class="icon-user"></i><span>고객관리</span> </a> </li>
		        <li><a href="/team-project3/financial/accountant.action"><i class="icon-list-alt"></i><span>회계관리</span> </a> </li>
		        <li><a href="/team-project3/product/productList.action?centerno=${ loginuser.centerNo }"><i class="icon-briefcase"></i><span>상품관리</span> </a> </li>
		      </ul>
				<script type="text/javascript">
					window.addEventListener('load', function(event) {
						$('#show-register-modal').on('click', function(event) {
							var register_modal = $('#myModal');
							register_modal.css({'z-index': '1050'});
							register_modal.modal('show');
						});
						
					});
				</script>		      
		      <ul class="nav pull-right">
		      	<li><a class="btn btn-primary" style="text-align: center; color: white;"id="show-register-modal">
		      		<i class="icon-plus"></i><span>회원등록</span></a></li>
		      </ul>
		    </div>
		    <!-- /container --> 
		  </div>
		  <!-- /subnavbar-inner --> 
		</div>
		<!-- /subnavbar -->

	</c:when>
	
	<c:when test='${ not empty param.bgcolor and param.bgcolor eq "memberdetail" }'>
		<div class="subnavbar">
		  <div class="subnavbar-inner">
		    <div class="container">
		      <ul class="mainnav">
		        <li><a href="/team-project3/home.action"><i class="icon-home"></i><span>Home</span> </a> </li>
		        <li><a href="/team-project3/schedule/schedule.action?centerno=${ loginuser.centerNo }"><i class="icon-calendar"></i><span>스케줄러</span> </a></li>
		        <li class="active"><a href="/team-project3/member/memberlist.action"><i class="icon-user"></i><span>고객관리</span> </a> </li>
		        <li><a href="/team-project3/financial/accountant.action"><i class="icon-list-alt"></i><span>회계관리</span> </a> </li>
		        <li><a href="/team-project3/product/productList.action?centerno=${ loginuser.centerNo }"><i class="icon-briefcase"></i><span>상품관리</span> </a> </li>
		      </ul>
				<script type="text/javascript">
					window.addEventListener('load', function(event) {
						$('#show-register-modal').on('click', function(event) {
							var register_modal = $('#myModify');
							register_modal.css({'z-index': '1050'});
							register_modal.modal('show');
						});
						
					});
				</script>		      
		      <ul class="nav pull-right">
		      	<li><a href="/team-project3/purchase/purSelect.action?memberno=${ member.memberNo }&centerno=${ loginuser.centerNo }" class="btn btn-success" style="text-align: center; color: white;">
		      		<i class="icon-shopping-cart"></i><span>상품 판매</span></a></li>
		      	<li><a class="btn btn-primary" style="text-align: center; color: white;" id="show-register-modal">
		      		<i class="icon-edit"></i><span>정보 수정</span></a></li>
		      	<li><a class="btn btn-danger" style="text-align: center; color: white;" id="memberdelete">
		      		<i class="icon-minus"></i><span>회원 삭제</span></a></li>
		      </ul>
		    </div>
		    <!-- /container --> 
		  </div>
		  <!-- /subnavbar-inner --> 
		</div>
		<!-- /subnavbar -->

	</c:when>
	
	<c:when test='${ not empty param.bgcolor and param.bgcolor eq "schedule" }'>
		<div class="subnavbar">
		  <div class="subnavbar-inner">
		    <div class="container">
		      <ul class="mainnav">
		        <li><a href="/team-project3/home.action"><i class="icon-home"></i><span>Home</span> </a> </li>
		        <li class="active"><a href="/team-project3/schedule/schedule.action?centerno=${ loginuser.centerNo }"><i class="icon-calendar"></i><span>스케줄러</span> </a></li>
		        <li><a href="/team-project3/member/memberlist.action"><i class="icon-user"></i><span>고객관리</span> </a> </li>
		        <li><a href="/team-project3/financial/accountant.action"><i class="icon-list-alt"></i><span>회계관리</span> </a> </li>
		        <li><a href="/team-project3/product/productList.action?centerno=${ loginuser.centerNo }"><i class="icon-briefcase"></i><span>상품관리</span> </a> </li>
		      </ul>
		    </div>
		    <!-- /container --> 
		  </div>
		  <!-- /subnavbar-inner --> 
		</div>
		<!-- /subnavbar -->
	</c:when>
	
	<c:when test='${ not empty param.bgcolor and param.bgcolor eq "product" }'>
		<div class="subnavbar">
		  <div class="subnavbar-inner">
		    <div class="container">
		      <ul class="mainnav">
		        <li><a href="/team-project3/home.action"><i class="icon-home"></i><span>Home</span> </a> </li>
		        <li><a href="/team-project3/schedule/schedule.action?centerno=${ loginuser.centerNo }"><i class="icon-calendar"></i><span>스케줄러</span> </a></li>
		        <li><a href="/team-project3/member/memberlist.action"><i class="icon-user"></i><span>고객관리</span> </a> </li>
		        <li><a href="/team-project3/financial/accountant.action"><i class="icon-list-alt"></i><span>회계관리</span> </a> </li>
		        <li class="active"><a href="/team-project3/product/productList.action?centerno=${ loginuser.centerNo }"><i class="icon-briefcase"></i><span>상품관리</span> </a> </li>
		      </ul>
		    </div>
		    <!-- /container --> 
		  </div>
		  <!-- /subnavbar-inner --> 
		</div>
		<!-- /subnavbar -->
	</c:when>
	
	<c:when test='${ not empty param.bgcolor and param.bgcolor eq "financial" }'>
		<div class="subnavbar">
		  <div class="subnavbar-inner">
		    <div class="container">
		      <ul class="mainnav">
		        <li><a href="/team-project3/home.action"><i class="icon-home"></i><span>Home</span> </a> </li>
		        <li><a href="/team-project3/schedule/schedule.action?centerno=${ loginuser.centerNo }"><i class="icon-calendar"></i><span>스케줄러</span> </a></li>
		        <li><a href="/team-project3/member/memberlist.action"><i class="icon-user"></i><span>고객관리</span> </a> </li>
		        <li class="active"><a href="/team-project3/financial/accountant.action"><i class="icon-list-alt"></i><span>회계관리</span> </a> </li>
		        <li><a href="/team-project3/product/productList.action?centerno=${ loginuser.centerNo }"><i class="icon-briefcase"></i><span>상품관리</span> </a> </li>
		      </ul>
		    </div>
		    <!-- /container --> 
		  </div>
		  <!-- /subnavbar-inner --> 
		</div>
		<!-- /subnavbar -->
	</c:when>

	<c:otherwise>
		<div class="subnavbar">
		  <div class="subnavbar-inner">
		    <div class="container">
		      <ul class="mainnav">
		        <li class="active"><a href="/team-project3/home.action"><i class="icon-home"></i><span>Home</span> </a> </li>
		        <li><a href="/team-project3/schedule/schedule.action?centerno=${ loginuser.centerNo }"><i class="icon-calendar"></i><span>스케줄러</span> </a></li>
		        <li><a href="/team-project3/member/memberlist.action"><i class="icon-user"></i><span>고객관리</span> </a> </li>
		        <li><a href="/team-project3/financial/accountant.action"><i class="icon-list-alt"></i><span>회계관리</span> </a> </li>
		        <li><a href="/team-project3/product/productList.action?centerno=${ loginuser.centerNo }"><i class="icon-briefcase"></i><span>상품관리</span> </a> </li>
		      </ul>
		    </div>
		    <!-- /container --> 
		  </div>
		  <!-- /subnavbar-inner --> 
		</div>
		<!-- /subnavbar -->
	</c:otherwise>
</c:choose>