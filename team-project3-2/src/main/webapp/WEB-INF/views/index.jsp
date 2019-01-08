<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Health Me</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<meta name="apple-mobile-web-app-capable" content="yes">
<link href="/team-project3/resources/assets/css/bootstrap.min.css" rel="stylesheet">
<link href="/team-project3/resources/assets/css/bootstrap-responsive.min.css" rel="stylesheet">
<link href="http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600"
        rel="stylesheet">
<link href="/team-project3/resources/assets/css/font-awesome.css" rel="stylesheet">
<link href="/team-project3/resources/assets/css/style.css" rel="stylesheet">
<link href="/team-project3/resources/assets/css/pages/dashboard.css" rel="stylesheet">
<!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
</head>
<body>

<!-- header.jsp -->
	<jsp:include page="/WEB-INF/views/include/header.jsp"/>
<!-- end header.jsp -->

<div class="main">
  <div class="main-inner">
    <div class="container">
      <div class="row">
        <div class="span12">
        <div class="widget widget-nopad">
            <div class="widget-header"> <i class="icon-list-alt"></i>
              <h3> Recent News</h3>
            </div>
            <!-- /widget-header -->
            <div class="widget-content">
              <div id='calendar'>
              </div>
            </div>
            <!-- /widget-content --> 
          </div>
          <!-- /widget -->
        
        
          <div class="widget">
            <div class="widget-content">
				<div class="shortcuts">
					<a href="/team-project3/schedule/schedule.action?centerno=${ loginuser.centerNo }" class="shortcut">
						<i class="shortcut-icon icon-calendar"></i>
						<span class="shortcut-label">스케줄</span>
					</a>
					<a href="/team-project3/member/memberlist.action" class="shortcut">
						<i class="shortcut-icon icon-user"></i>
						<span class="shortcut-label">고객 관리</span> 
					</a>
					<a href="/team-project3/financial/possiblemember.action" class="shortcut"> 
						<i class="shortcut-icon icon-user-md"></i>
						<span class="shortcut-label">잠재고객 관리</span>
					</a>
					<a href="/team-project3/financial/accountant.action" class="shortcut">
						<i class="shortcut-icon icon-list-alt"></i>
						<span class="shortcut-label">회계 관리</span> 
					</a>
					<a href="/team-project3/product/productList.action?centerno=${ loginuser.centerNo }" class="shortcut">
						<i class="shortcut-icon icon-briefcase"></i>
						<span class="shortcut-label">상품 관리</span> 
					</a>
					<a href="#" class="shortcut">
						<i class="shortcut-icon icon-signal"></i>
						<span class="shortcut-label">통계분석</span> 
					</a>
					<a href="javascript:;" class="shortcut">
						<i class="shortcut-icon icon-picture"></i>
						<span class="shortcut-label">강사 관리</span> 
					</a>
					<a href="javascript:;" class="shortcut"> 
						<i class="shortcut-icon icon-tag"></i>
						<span class="shortcut-label">락커 관리</span>
					</a>
				</div>
				<!-- /shortcuts --> 
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
  </div>
  <!-- /main-inner --> 
</div>
<!-- /main -->
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
                </div>
      <!-- /row --> 
    </div>
    <!-- /container --> 
  </div>
  <!-- /extra-inner --> 
</div>
<!-- /extra -->
<div class="footer">
  <div class="footer-inner">
    <div class="container">
      <div class="row">
        <div class="span12"> &copy; 2013 <a href="#">Bootstrap Responsive Admin Template</a>. </div>
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
<script src="/team-project3/resources/assets/js/excanvas.min.js"></script> 
<script src="/team-project3/resources/assets/js/chart.min.js" type="text/javascript"></script> 
<script src="/team-project3/resources/assets/js/bootstrap.js"></script>
<link rel="stylesheet" type="text/css" href="/team-project3/resources/assets/js/full-calendar/fullcalendar.min.css" />
<script src="/team-project3/resources/assets/js/full-calendar/moment.min.js"></script>
<script language="javascript" type="text/javascript" src="/team-project3/resources/assets/js/full-calendar/fullcalendar.min.js"></script>
 
<script src="/team-project3/resources/assets/js/base.js"></script> 
<script>     
$(document).ready(function() {
	var date = new Date();
	var d = date.getDate();
	var m = date.getMonth();
	var y = date.getFullYear();
	var calendar = $('#calendar').fullCalendar({
	  header: {
	    left: 'prev,next today',
	    center: 'title',
	    right: 'month'  /* month,agendaWeek,agendaDay  */
	  },

	  defaultView: "month",
	 // selectable: true,
	 // selectHelper: true,
	  editable: true,
		

	  events: 
		  ${healthinfo}

	});
	});
       
    </script><!-- /Calendar -->
</body>
</html>

