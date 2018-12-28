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
            <ul class="dropdown-menu">
              <li><a href="javascript:;">Settings</a></li>
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
	<c:when test='${ not empty param.bgcolor and param.bgcolor eq "#f9f6f1"}'>

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
		        <li><a href="/team-project3/home.action"><i class="icon-dashboard"></i><span>Home</span> </a> </li>
		        <li class="active"><a href="/team-project3/member/memberlist.action"><i class="icon-list-alt"></i><span>고객관리</span> </a> </li>
		        <li><a href="#"><i class="icon-facetime-video"></i><span>App Tour</span> </a></li>
		        <li><a href="#"><i class="icon-bar-chart"></i><span>Charts</span> </a> </li>
		        <li><a href="#"><i class="icon-code"></i><span>Shortcodes</span> </a> </li>
		      </ul>
		      
		      <ul class="nav pull-right">
		      	<li><a class="btn btn-primary" style="text-align: center; color: white;" data-toggle="modal" data-target="#myModal">
		      		<i class="icon-plus"></i><span>회원등록</span></a></li>
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
		        <li class="active"><a href="/team-project3/home.action"><i class="icon-dashboard"></i><span>Home</span> </a> </li>
		        <li><a href="/team-project3/member/memberlist.action"><i class="icon-list-alt"></i><span>고객관리</span> </a> </li>
		        <li><a href="#"><i class="icon-facetime-video"></i><span>App Tour</span> </a></li>
		        <li><a href="#"><i class="icon-bar-chart"></i><span>Charts</span> </a> </li>
		        <li><a href="#"><i class="icon-code"></i><span>Shortcodes</span> </a> </li>
		      </ul>
		    </div>
		    <!-- /container --> 
		  </div>
		  <!-- /subnavbar-inner --> 
		</div>
		<!-- /subnavbar -->
	</c:otherwise>
</c:choose>