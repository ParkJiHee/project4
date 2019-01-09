<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  
<head>
    <meta charset="utf-8">
    <title>Login</title>

	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="apple-mobile-web-app-capable" content="yes"> 
    
<link href="/team-project3/resources/assets/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<link href="/team-project3/resources/assets/css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css" />

<link href="/team-project3/resources/assets/css/font-awesome.css" rel="stylesheet">
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600" rel="stylesheet">
    
<link href="/team-project3/resources/assets/css/style.css" rel="stylesheet" type="text/css">
<link href="/team-project3/resources/assets/css/pages/signin.css" rel="stylesheet" type="text/css">
<link href="/team-project3/resources/assets/css/pages/dashboard.css" rel="stylesheet">

<script type="text/javascript">
	<% if (request.getAttribute("loginfail") != null) { %>
		alert('로그인 실패! \n아이디와 패스워드를 확인하세요');
	<% } %>
</script>
</head>

<body>
	
	<!-- navbar.jsp -->
	<jsp:include page="/WEB-INF/views/include/navbar.jsp"></jsp:include>
	<!-- navbar.jsp -->
	
	<!-- <img src="/team-project3/resources/assets/img/move.gif"/> -->
	
<!-- <div>
	<img src="/team-project3/resources/assets/img/exercise.jpg"/>
</div> -->

	<div class="subnavbar">
	</div>
	
    <div class="container">
      <div class="row">
        <div class="span6">
          <div class="widget">
          <img src="/team-project3/resources/assets/img/exercise.jpg" style="width: 540px; height: 700px"/>
            <!-- /widget-content --> 
          </div>
          <!-- /widget --> 
        </div>
        <!-- /span6 -->
        <div class="span6">
        <div class="widget"></div>
        <div class="widget"></div>
        <div class="widget"></div>
        <div class="widget"></div>
        <div class="widget"></div>
        <div class="widget"></div>
        <div class="widget"></div>
          <div class="widget">
            
            <div class="widget-content">
             	<!-- <div class="account-container"> -->
	
	<div class="content clearfix">
		
		<form action="login.action" method="post">
		
			<h1>Center Login</h1>		
			
			<div class="login-fields">
				
				<p>Please provide your details</p>
				
				<div class="field">
					<label for="cenId">ID</label>
					<input type="text" id="cenId" name="cenId" value="" placeholder="ID" class="login username-field" />
				</div> <!-- /field -->
				
				<div class="field">
					<label for="cenPasswd">Password:</label>
					<input type="password" id="cenPasswd" name="cenPasswd" value="" placeholder="Password" class="login password-field"/>
				</div> <!-- /password -->
				
			</div> <!-- /login-fields -->
			
			<div class="login-actions">
				
				<span class="login-checkbox">
					<input id="Field" name="Field" type="checkbox" class="field login-checkbox" value="First Choice" tabindex="4" />
					<label class="choice" for="Field">Keep me signed in</label>
				</span>
									
				<button class="button btn btn-success btn-large">Sign In</button>
				
			</div> <!-- .actions -->
			
			
			
		</form>
		
	</div> <!-- /content -->
	
<!-- </div> --> <!-- /account-container -->
             </div>
            <!-- /widget-content --> 
          </div>
          <!-- /widget --> 
        </div>
        <!-- /span6 --> 
      </div>
      <!-- /row --> 
    </div>
    <!-- /container --> 

<script src="/team-project3/resources/assets/js/jquery-1.7.2.min.js"></script>
<script src="/team-project3/resources/assets/js/bootstrap.js"></script>
<script src="/team-project3/resources/assets/js/base.js"></script>
<script src="/team-project3/resources/assets/js/signin.js"></script>
<script type="text/javascript">
	$(function(){
		window.open("popup.action", "pop", "width=400,height=500,history=no,resizable=no,status=no,scrollbars=yes,menubar=no");
	});
</script>
</body>

</html>

