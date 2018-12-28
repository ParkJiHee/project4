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
<!-- 
 <script type="text/javascript">
 $(function(){
 calendarEvent();
});

function calendarEvent(eventData){
 $("#calender").html("");
 var date = new Date();
 var d = date.getDate();
 var m = date.getMonth();
 var y = date.getFullYear();
 var calendar = $('#calender').fullCalendar({
  header: {
   left: "",
   center: "title",
//    right: "month,basicWeek,basicDay"
   right: "today prev,next"
   },
   editable: true,
   titleFormat: {
   month: "yyyy년 MMMM",
   week: "[yyyy] MMM dd일{ [yyyy] MMM dd일}",
   day: "yyyy년 MMM d일 dddd"
   },
   allDayDefault: false,
   defaultView: "month",
   editable: false,
   monthNames: ["1월","2월","3월","4월","5월","6월","7월","8월","9월","10월","11월","12월"],
   monthNamesShort: ["1월","2월","3월","4월","5월","6월","7월","8월","9월","10월","11월","12월"],
   dayNames: ["일요일","월요일","화요일","수요일","목요일","금요일","토요일"],
   dayNamesShort: ["일","월","화","수","목","금","토"],
   buttonText: {
   today : "오늘",
   month : "월별",
   week : "주별",
   day : "일별",
   },
   events : eventData,
   timeFormat : "HH:mm",
 });
} 
</script>   -->
  <script>
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

$(document).ready(function() {
var date = new Date();
var d = date.getDate();
var m = date.getMonth();
var y = date.getFullYear();
var calendar = $('#calendar').fullCalendar({
  header: {
    left: 'prev,next today',
    center: 'title',
    right: 'month'  /* ,agendaWeek,agendaDay  */
  },
  selectable: true,
  selectHelper: true,
  select: function(start, end, allDay) {
    var title = prompt('Event Title:');
    if (title) {
      calendar.fullCalendar('renderEvent',
        {
          title: title,
          start: start,
          end: end,
          allDay: allDay
        },
        true // make the event "stick"
      );
    }
    calendar.fullCalendar('unselect');
  },
  editable: true,
  events: [
    {
      title: 'All Day Event',
      start: new Date(y, m, 1)
    },
    {
      title: 'Long Event',
      start: new Date(y, m, d+5),
      end: new Date(y, m, d+7)
    },
    {
      id: 999,
      title: 'Repeating Event',
      start: new Date(y, m, d-3, 16, 0),
      allDay: false
    },
    {
      id: 999,
      title: 'Repeating Event',
      start: new Date(y, m, d+4, 16, 0),
      allDay: false
    },
    {
      title: 'Meeting',
      start: new Date(y, m, d, 10, 30),
      allDay: false
    },
    {
      title: 'Lunch',
      start: new Date(y, m, d, 12, 0),
      end: new Date(y, m, d, 14, 0),
      allDay: false
    },
    {
      title: 'Birthday Party',
      start: new Date(y, m, d+1, 19, 0),
      end: new Date(y, m, d+1, 22, 30),
      allDay: false
    },
    {
      title: 'EGrappler.com',
      start: new Date(y, m, 28),
      end: new Date(y, m, 29),
      url: 'http://EGrappler.com/'
    }
  ]
});
});
</script>
 -->
</head>
<body>
<!-- header.jsp -->
	<jsp:include page="/WEB-INF/views/include/header.jsp">
		<jsp:param value="#f9f6f1" name="bgcolor" />
	</jsp:include>
<!-- end header.jsp -->

<div id="calendar"></div>

</body>
</html>