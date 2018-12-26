<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="navbar navbar-fixed-top">
	
	<div class="navbar-inner">
		
		<div class="container">
			
			<a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</a>
			
			<a class="brand" href="/team-project3/home.action">
				Health Me				
			</a>		
			
			
			<c:choose>
			   <c:when test="${ not empty param.bgcolor }">

					<div class="nav-collapse">
						<ul class="nav pull-right">

							<li class=""><a href="/team-project3/home.action" class="">
									<i class="icon-chevron-left"></i> Back to Homepage
							</a></li>
						</ul>

					</div>
					<!--/.nav-collapse -->

				</c:when>
				
			<c:otherwise>
				
			</c:otherwise>
			</c:choose>	
	
		</div> <!-- /container -->
		
	</div> <!-- /navbar-inner -->
	
</div> <!-- /navbar -->