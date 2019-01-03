<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  
 <head>
    <meta charset="utf-8">
    <title>회원 상세 보기</title>
    
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="apple-mobile-web-app-capable" content="yes">

    <link href="/team-project3/resources/assets/css/bootstrap.min.css" rel="stylesheet">
    <link href="/team-project3/resources/assets/css/bootstrap-responsive.min.css" rel="stylesheet">
    
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600" rel="stylesheet">
    <link href="/team-project3/resources/assets/css/font-awesome.css" rel="stylesheet">
    
    <link href="/team-project3/resources/assets/css/style.css" rel="stylesheet">
    
    <link href="/team-project3/resources/assets/css/pages/reports.css" rel="stylesheet">
    <style type="text/css">
    	.stats-box-all-info{
    		font-size: 15px;
    	}
    	ul.mylist, ol.mylist {
		    list-style: none;
		    margin: 0px;
		    padding: 0px;
		  
		    max-width: 250px;
		    width: 100%;
		}
		
		ul.mylist li, ol.mylist li {
		    padding: 5px 0px 5px 5px;
		    margin-bottom: 5px;
		    border-bottom: 1px solid #efefef;
		    font-size: 12px;
		}
    </style>
  </head>

<body>

<!-- header.jsp -->
	<jsp:include page="/WEB-INF/views/include/header.jsp">
		<jsp:param value="memberlist" name="bgcolor" />
	</jsp:include>
<!-- end header.jsp -->
    
    
<div class="main">
	
	<div class="main-inner">

	    <div class="container">
	    	
	     <div class="row">
	      	
	      	<div class="span12">
	      
	      	<div class="info-box">
               <div class="row-fluid stats-box">
                 
                 <div class="span4">
                    <div class="stats-box-all-info">
                    	<img src="/team-project3/resources/assets/img/user.png"/> 이름 : 
                    </div>
                    <div class="stats-box-all-info">
                    	<p> "나이"세 / 등록일</p> 
                    </div>
                  </div>
                  
                  <div class="span4">
                    <div class="stats-box-all-info"><i class="icon-thumbs-up"  style="color:#F30"></i> 성별 : </div>
                    <div class="stats-box-all-info"><i class="icon-map-marker"></i> 주소 : </div>
                  </div>
                  
                  <div class="span4">
                  <div class="stats-box-all-info"><i class="icon-phone"></i> 전화번호 : </div>
                    <div class="stats-box-all-info"><i class="icon-envelope-alt"></i> 이메일 : </div>
                 </div>
             </div>
         </div>
         </div> 
         </div>           	
	  	  <!-- /row -->
	
	      <div class="row">
	      	
	      	<div class="span4">
	      		
	      		<div class="widget">
						
					<div class="widget-header">
						<i class="icon-star"></i>
						<h3>개인 정보</h3>
					</div> <!-- /widget-header -->
					
					<div class="widget-content" style="height:400px;">
							
							<ul class="mylist">
						        <li>목록 아이템 1</li>
						        <li>목록 아이템 2</li>
						        <li>목록 아이템 3</li>
						        <li>목록 아이템 4</li>
						        <li>목록 아이템 5</li>
						    </ul>
						
					</div> <!-- /widget-content -->
						
				</div> <!-- /widget -->
				
		    </div> <!-- /span4 -->
	      	
	      	
	      	<div class="span4">
	      		
	      		<div class="widget">
						
					<div class="widget-header">
						<i class="icon-star"></i>
						<h3>입장 관리</h3>
					</div> <!-- /widget-header -->
					
					<div class="widget-content" style="overflow-y: scroll; height:400px;">
						
					</div> <!-- /widget-content -->
						
				</div> <!-- /widget -->
				
		    </div> <!-- /span4 -->
		    
		    <div class="span4">
	      		
	      		<div class="widget">
						
					<div class="widget-header">
						<i class="icon-star"></i>
						<h3>이용권 목록</h3>
					</div> <!-- /widget-header -->
					
					<div class="widget-content" style="overflow-y: scroll; height:400px;">
						
					</div> <!-- /widget-content -->
						
				</div> <!-- /widget -->
				
		    </div> <!-- /span4 -->
	      	
	      </div> <!-- /row -->
	      
	      
	      
	      
			
	      
	      
	    </div> <!-- /container -->
	    
	</div> <!-- /main-inner -->
    
</div> <!-- /main -->
    

    

<div class="extra">

	<div class="extra-inner">

		<div class="container">

			<div class="row">
                    <div class="span3">
                        <h4>
                            About Free Admin Template</h4>
                        <ul>
                            <li><a href="javascript:;">EGrappler.com</a></li>
                            <li><a href="javascript:;">Web Development Resources</a></li>
                            <li><a href="javascript:;">Responsive HTML5 Portfolio Templates</a></li>
                            <li><a href="javascript:;">Free Resources and Scripts</a></li>
                        </ul>
                    </div>
                    <!-- /span3 -->
                    <div class="span3">
                        <h4>
                            Support</h4>
                        <ul>
                            <li><a href="javascript:;">Frequently Asked Questions</a></li>
                            <li><a href="javascript:;">Ask a Question</a></li>
                            <li><a href="javascript:;">Video Tutorial</a></li>
                            <li><a href="javascript:;">Feedback</a></li>
                        </ul>
                    </div>
                    <!-- /span3 -->
                    <div class="span3">
                        <h4>
                            Something Legal</h4>
                        <ul>
                            <li><a href="javascript:;">Read License</a></li>
                            <li><a href="javascript:;">Terms of Use</a></li>
                            <li><a href="javascript:;">Privacy Policy</a></li>
                        </ul>
                    </div>
                    <!-- /span3 -->
                    <div class="span3">
                        <h4>
                            Open Source jQuery Plugins</h4>
                        <ul>
                            <li><a href="">Open Source jQuery Plugins</a></li>
                            <li><a href="">HTML5 Responsive Tempaltes</a></li>
                            <li><a href="">Free Contact Form Plugin</a></li>
                            <li><a href="">Flat UI PSD</a></li>
                        </ul>
                    </div>
                    <!-- /span3 -->
                </div> <!-- /row -->

		</div> <!-- /container -->

	</div> <!-- /extra-inner -->

</div> <!-- /extra -->


    
    
<div class="footer">
	
	<div class="footer-inner">
		
		<div class="container">
			
			<div class="row">
				
    			<div class="span12">
    				&copy; 2013 <a href="#">Bootstrap Responsive Admin Template</a>.
    			</div> <!-- /span12 -->
    			
    		</div> <!-- /row -->
    		
		</div> <!-- /container -->
		
	</div> <!-- /footer-inner -->
	
</div> <!-- /footer -->
    

<script src="/team-project3/resources/assets/js/jquery-1.7.2.min.js"></script>
<script src="/team-project3/resources/assets/js/excanvas.min.js"></script>
<script src="/team-project3/resources/assets/js/chart.min.js" type="text/javascript"></script>
<script src="/team-project3/resources/assets/js/bootstrap.js"></script>
<script src="/team-project3/resources/assets/js/base.js"></script>
<script>

    var pieData = [
				{
				    value: 30,
				    color: "#F38630"
				},
				{
				    value: 50,
				    color: "#E0E4CC"
				},
				{
				    value: 100,
				    color: "#69D2E7"
				}

			];

    var myPie = new Chart(document.getElementById("pie-chart").getContext("2d")).Pie(pieData);

    var barChartData = {
        labels: ["January", "February", "March", "April", "May", "June", "July"],
        datasets: [
				{
				    fillColor: "rgba(220,220,220,0.5)",
				    strokeColor: "rgba(220,220,220,1)",
				    data: [65, 59, 90, 81, 56, 55, 40]
				},
				{
				    fillColor: "rgba(151,187,205,0.5)",
				    strokeColor: "rgba(151,187,205,1)",
				    data: [28, 48, 40, 19, 96, 27, 100]
				}
			]

    }

    var myLine = new Chart(document.getElementById("bar-chart").getContext("2d")).Bar(barChartData);
	var myLine = new Chart(document.getElementById("bar-chart1").getContext("2d")).Bar(barChartData);
	var myLine = new Chart(document.getElementById("bar-chart2").getContext("2d")).Bar(barChartData);
	var myLine = new Chart(document.getElementById("bar-chart3").getContext("2d")).Bar(barChartData);
	
	</script>


  </body>

</html>

