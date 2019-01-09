<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<style type="text/css">
    body {
        margin:40px 10px;
        padding:0;
        font-family:"Lucida Grande", Helvetica, Arial, Verdana, sans-serif;
        font-size:14px;
        
    }

    #loading {
        display:none;
        position:absolute;
        top:10px;
        right:10px;
    }

    #calendar {
        max-width:900px;
        margin:0 auto;
    }

    div.barKategorie {
        float:left;
        margin:5px;
        padding-top:5px;
        padding-bottom:5px;
        padding-left:5px;
        padding-right:10px;
        border-radius:5px;
        font-weight:bold;
    }
</style>

<link rel="stylesheet" type="text/css" href="/team-project3/resources/assets/js/full-calendar/fullcalendar.min.css" />

<script src="/team-project3/resources/assets/js/full-calendar/moment.min.js"></script>


<script src="/team-project3/resources/assets/js/jquery-1.7.2.min.js"></script> 
<script src="/team-project3/resources/assets/js/chart.min.js" type="text/javascript"></script>
<script src="/team-project3/resources/assets/js/excanvas.min.js"></script> 
<script src="/team-project3/resources/assets/js/bootstrap.js"></script>

 <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<meta name="apple-mobile-web-app-capable" content="yes">
<link href="/team-project3/resources/assets/css/bootstrap.min.css" rel="stylesheet">
<link href="/team-project3/resources/assets/css/bootstrap-responsive.min.css" rel="stylesheet">
<link href="http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600"
        rel="stylesheet">
<link href="/team-project3/resources/assets/css/font-awesome.css" rel="stylesheet">
<link href="/team-project3/resources/assets/css/style.css" rel="stylesheet">
<link href="/team-project3/resources/assets/css/pages/dashboard.css" rel="stylesheet">
 
<script language="javascript" type="text/javascript" src="/team-project3/resources/assets/js/full-calendar/fullcalendar.min.js"></script>

 <script>
/* var lineChartData = {
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

//var myLine = new Chart(document.getElementById("area-chart").getContext("2d")).Line(lineChartData);


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
 */
$(document).ready(function() {
var date = new Date();
var d = date.getDate();
var m = date.getMonth();
var y = date.getFullYear();
var calendar = $('#calendar').fullCalendar({
  header: {
    left: 'prev,next today',
    center: 'title',
    right: 'agendaWeek,month'  /* month,agendaWeek,agendaDay  */
  },
  eventClick: function removeEvents(calEvent, jsEvent, view){
	//  alert('Event: ' + calEvent.title);
	//  alert('View: ' + view.name);
	  alert('삭제하겠습니까?');
	  if(removeEvents){
		 location.href="/team-project3/schedule/scheduleDelete.action?centerno=${ loginuser.centerNo }&scheduleno="+calEvent.scheduleNo;
	  }else{
		  return false;
	  } 
  },
  defaultView: "agendaWeek",
 // selectable: true,
 // selectHelper: true,
  editable: true,
	

  events: 
	  ${healthinfo}

});
});
</script>  


</head>
<body>
<!-- header.jsp -->
	<jsp:include page="/WEB-INF/views/include/header.jsp">
		<jsp:param value="schedule" name="bgcolor" />
	</jsp:include>
<!-- end header.jsp -->
<div id="calendar"></div>
<div style= margin-top:20px;margin-right:60px>
<a href="/team-project3/schedule/scheduleRegister.action" class="button btn btn-primary" style=" margin-left:80%">스케줄등록</a>
</div>



</body>
</html>