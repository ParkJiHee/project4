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
<link href="/team-project3/resources/assets/css/pages/signin.css" rel="stylesheet" type="text/css">
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
    
    <jsp:include page="/WEB-INF/views/setting.jsp"/>
    
      <div class="row">
        <div class="span6">
          <div class="widget widget-nopad">
            <div class="widget-header"> <i class="icon-list-alt"></i>
              <h3> Today's Stats</h3>
            </div>
            <!-- /widget-header -->
            <div class="widget-content">
              <div class="widget big-stats-container">
                <div class="widget-content">
                  <h6 class="bigstats">A fully responsive premium quality admin template built on Twitter Bootstrap by <a href="http://www.egrappler.com" target="_blank">EGrappler.com</a>.  These are some dummy lines to fill the area.</h6>
                  <div id="big_stats" class="cf" align="center">
                    <div class="stat"> <i class="icon-anchor"></i> <span class="value">851</span> </div>
                    <!-- .stat -->
                    
                    <div class="stat"> <i class="icon-thumbs-up-alt"></i> <span class="value">423</span> </div>
                    <!-- .stat -->
                    
                    <div class="stat"> <i class="icon-twitter-sign"></i> <span class="value">922</span> </div>
                    <!-- .stat -->
                    
                    <div class="stat"> <i class="icon-bullhorn"></i> <span class="value">25%</span> </div>
                    <!-- .stat --> 
                  </div>
                </div>
                <!-- /widget-content --> 
                
              </div>
            </div>
          </div>
          <!-- /widget -->
          <div class="widget widget-nopad">
            <div class="widget-header"> <i class="icon-list-alt"></i>
              <h3> Schedule </h3>
            </div>
            <!-- /widget-header -->
            <div class="widget-content">
              <div id='calendar'>
              </div>
            </div>
            <!-- /widget-content --> 
          </div>
          <!-- /widget -->
        </div>
        <!-- /span6 -->
        <div class="span6">
          <div class="widget">
            <div class="widget-header"> <i class="icon-bookmark"></i>
              <h3> Menu </h3>
            </div>
            <!-- /widget-header -->
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
            <!-- /widget-content --> 
          </div>
          <!-- /widget -->
          <div class="widget">
            <div class="widget-header"> <i class="icon-signal"></i>
              <h3> Area Chart Example</h3>
            </div>
            <!-- /widget-header -->
            <div class="widget-content">
              <canvas id="area-chart" class="chart-holder" height="250" width="538"> </canvas>
              <!-- /area-chart --> 
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
<jsp:include page="/WEB-INF/views/include/footer.jsp"></jsp:include>
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
		height: 400,
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
	var lineChartData = {
        labels: ["January", "February", "March", "April", "May", "June", "July"],
        datasets: [
			{
			    fillColor: "rgba(220,220,220,0.5)",
			    strokeColor: "rgba(220,220,220,1)",
			    pointColor: "rgba(220,220,220,1)",
			    pointStrokeColor: "#fff",
			    data: [65, 59, 90, 81, 56, 55, 40]
			},
			{
			    fillColor: "rgba(151,187,205,0.5)",
			    strokeColor: "rgba(151,187,205,1)",
			    pointColor: "rgba(151,187,205,1)",
			    pointStrokeColor: "#fff",
			    data: [28, 48, 40, 19, 96, 27, 100]
			}
		]

    }

    var myLine = new Chart(document.getElementById("area-chart").getContext("2d")).Line(lineChartData);


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
       
    </script><!-- /Calendar -->
    
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
    
/////////////문자열 자르기
	var phone = "${ loginuser.cenPhone }";
	var tmpPhone = phone.split("-");
	
	$('#phone1').val(tmpPhone[0]);
	$('#phone2').val(tmpPhone[1]);
	$('#phone3').val(tmpPhone[2]);
	
	// 마지막에 입력 시 입력되게 한다.
    $("#phone3").change(function(){
    	var phone2 = $('#phone1').val()+'-'+$('#phone2').val()+'-'+$(this).val();
        $('#cenPhone').val(phone2);
    });
	
    $('#centermodify').on('click', function(event) {
		//event.preventDefault(); //이벤트를 발생시킨 객체의 기본 동작 수행 차단
		//event.stopPropagation(); //상위 객체로의 이벤트 전달 차단
		
		//var data = $('#memberupdateform').serializeArray(); // [{boardno:'xxx'}, {writer:'yyy'}, ]
		var formData = new FormData($('#centermodifyform')[0]);
		
		$.ajax({
			"url": "setting.action",
			"type": "POST",
			"data": formData,
			"enctype": 'multipart/form-data',
			"processData" : false,
            "contentType" : false,
			"success": function(formData, status, xhr) {
				if(formData === "success") {
					alert('센터 정보를 수정했습니다.');
				} else {
					alert('센터 정보 수정 실패');
				}
					
				location.href="/team-project3/home.action";
				location.reload(true);
			},
			"error": function(xhr, status, err) {
				alert('센터 정보 수정 실패');
				location.reload(true);
			}
		});
	}); 
});

</script>
</body>
</html>

