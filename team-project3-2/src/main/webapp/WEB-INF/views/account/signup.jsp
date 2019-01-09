<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
  
 <head>
    <meta charset="utf-8">
    <title>Signup - Bootstrap Admin Template</title>

	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="apple-mobile-web-app-capable" content="yes"> 
    
<link href="/team-project3/resources/assets/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<link href="/team-project3/resources/assets/css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css" />

<link href="/team-project3/resources/assets/css/font-awesome.css" rel="stylesheet">
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600" rel="stylesheet">
    
<link href="/team-project3/resources/assets/css/style.css" rel="stylesheet" type="text/css">
<link href="/team-project3/resources/assets/css/pages/signin.css" rel="stylesheet" type="text/css">
<style type="text/css">
		.error { color: red; }
</style>
</head>

<body>
	
	<!-- navbar.jsp -->
	<jsp:include page="/WEB-INF/views/include/navbar.jsp">
		<jsp:param value="#00ba8b" name="bgcolor" />
	</jsp:include>
	<!-- navbar.jsp -->

<div class="account-container register">
	
	<div class="content clearfix">
		
		<form:form action="signup.action" method="post" modelAttribute="center" enctype="multipart/form-data">
		
			<h1>센터 회원가입</h1>			
			
			<div class="login-fields">
				<div class="img_wrap">
					<img id="img" src="/team-project3/resources/assets/img/user.png" style="width:64px; height:64px; border-radius: 70px;"/>
				</div>
				
				<div class="control-group">
					<label class="control-label" for="file">첨부파일</label>
					<div class="controls">
						<input type="file" name="attach" id="attach"/>
					</div>
				</div>
				
				<div class="field">
					<label for="cenId">ID:</label>	
					<form:input type="text" id="cenId" path="cenId" placeholder="jooho@example.com" class="login" />
					<form:errors path="cenId" cssClass="error" class="login" />
				</div> <!-- /field -->
				
				<div class="field">
					<label for="cenPhone">Phone Number:</label>
					<form:input type="text" id="cenPhone" path="cenPhone" placeholder="Phone Number" class="login"/>
					<form:errors path="cenPhone" cssClass="error" class="login" />
				</div> <!-- /field -->
				
				<div class="field">
					<label for="cenPhone">Password:</label>
					<form:input type="password" id="cenPasswd" path="cenPasswd" placeholder="Password" class="login"/>
					<form:errors path="cenPasswd" cssClass="error" class="login" />
				</div> <!-- /field -->
				
				<div class="field">
					<label for="confirm_password">Confirm Password:</label>
					<input type="password" id="confirm_password" name="confirm_password" placeholder="Confirm Password" class="login"/>
				</div> <!-- /field -->
				
			</div> <!-- /login-fields -->
			
			<div class="login-actions">
				
				<span class="login-checkbox">
					<input id="Field" name="Field" type="checkbox" class="field login-checkbox" value="First Choice" tabindex="4" />
					<label class="choice" for="Field">Agree with the Terms & Conditions.</label>
				</span>
									
				<button class="button btn btn-primary btn-large">Register</button>
				
			</div> <!-- .actions -->
			
		</form:form>
		
	</div> <!-- /content -->
	
</div> <!-- /account-container -->

<script src="/team-project3/resources/assets/js/jquery-1.7.2.min.js"></script>
<script src="/team-project3/resources/assets/js/bootstrap.js"></script>

<script src="/team-project3/resources/assets/js/signin.js"></script>
<script type="text/javascript">

$(function() {
var sel_file;
    
    $('#attach').on('change', function(event){
    	var files = event.target.files;
    	var filesArr = Array.prototype.slice.call(files);
    	
    	filesArr.forEach(function(f){
    		if(!f.type.match("image.*")){
    			alert("확장자는 이미지 확장자만 가능합니다.");
    			return;
    		}
    		
    		sel_file = f;
    		
    		var reader = new FileReader();
    		reader.onload = function(e){
    			$('#img').attr('src',e.target.result);
    		}
    		reader.readAsDataURL(f);
    	});
    });
});

</script>
</body>

 </html>

