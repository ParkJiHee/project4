<%@page import="com.teamproject3.vo.MemberVo" %>
<%@page import="com.teamproject3.vo.PurchaseVo"%>
<%@page import="com.teamproject3.vo.VisitPurposeVo" %>
<%@page import="com.teamproject3.vo.ScheduledDateVo" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>잠재고객관리</title>
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
    <style>
    	#file { width:0; height:0; } 
    	#menu2 { text-align: right}
    	#reservationList td { text-align:center;}
    </style>
    
    <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
    <script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
    <script type="text/javascript">
    $(function(){          
    	$('#btn-upload').click(function(e){
    		e.preventDefault();
    		
    		$("input:file").click();
    		var ext = $("input:file").val().split(".").pop().toLowerCase();
    		if(ext.length > 0){
    			if($.inArray(ext, ["gif","png","jpg","jpeg"]) == -1) { 
    				alert("gif,png,jpg 파일만 업로드 할수 있습니다.");
    				return false;  
    			}                  
    		}
    		<%-- $("input:file").val().toLowerCase(); <!-- 기존방법, 파일명 남기는 부분은 컨트롤러에서--> --%>
    		var file = $("input:file").val().toLowerCase();
    		var image = file
    		$('#image').val(image);
    	}); 
    	
    	$('#possible').on('click', function(event) {
    		 event.preventDefault();
        	 event.stopPropagation();
        	 $('#newregister').submit();
		});
    	
    	
    	
    	 <%-- 체크 --%>
    	 $('#checkAll').click(function(event) { 
    		 if($("#checkAll").prop("checked")) { 
    			 $("input[type=checkbox]").prop("checked",true);  
    		}else {  
    			 $("input[type=checkbox]").prop("checked",false); 
    		} 
    	 });
    	 
    	 
    	 <%--테이블 --%>
    	 $('#listdel').on('click', function (event) {
    		 var checkRow="";
    		 if(checkRow == ''){
    			    alert("제거할 대상을 선택하세요.");
    			    return false;
    		}
    		 console.log("### checkRow => {}"+checkRow);

    		 if(confirm("정보를 삭제 하시겠습니까?")){
    		      
    			 
    		      //삭제처리 후 다시 불러올 리스트 url      
/*     		      var url = document.location.href;
    		      var page = $("#page").val();
    		      var saleType = $("#saleType").val();
    		      var schtype = $("#schtype").val();
    		      var schval = $("#schval").val();
    		      location.href="${rc.contextPath}/test_proc.do?idx="+checkRow+"&goUrl="+url+"&page="+page+"&saleType="+saleType+"schtype="+schtype+"schval="+schval;      
 */    		  }
		});
    	 
    	 $('#call').on('click', function (event) {
    		 var call= "";
    		 if(call == ''){
    			    alert("대상을 선택하세요.");
    			    return false;
    		}
		});
    	 
    	 $('#visit').on('click', function (event) {
    		 var visit= "";
    		 if(visit == ''){
    			    alert("대상을 선택하세요.");
    			    return false;
    		}
		});
    	 
    	 
    	 
    	 $('#saved').on('click', function (event) {
    			var data = $("#register-frm").serialize();
        		
        		jQuery.ajaxSettings.traditional = true;
        		
        		$.ajax({
        			"url": "registerpurpose.action",
        			"method": "POST",
        			"data": data,
        			"success": function(data, status, xhr) {
        	
        				if(data == "success"){
        					alert('저장했습니다');
        					$('#purposelist').load(
        						"get-input-list.action", 
        						{ "memberNo" : ${membervo.memberNo} },
        						function (a,b,c) {
        							alert('확인ㄴ')
									
								}
        					);
        				}else{ alert('저장 실패'); }
        				
        				<%-- 화면갱신 --%>
        				
        			},
        			"error": function(xhr, status, err) {
        				
        			}
        		});
		})
		
    });<%-- end script --%>   
	   
    <%-- 우편번호 --%>
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("sample6_extraAddress").value = extraAddr;
                
                } else {
                    document.getElementById("sample6_extraAddress").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample6_postcode').value = data.zonecode;
                document.getElementById("sample6_address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("sample6_detailAddress").focus();
            }
        }).open();
    }
        <%-- 우편번호 끝--%>
      
        
    <%--     function checkboxarr() {
    		/* var checkarr = [];
    		$("input[name='purpose']:checked").each(function(i){
    			checkarr.push($(this).val());
    		}); */
    		
    		//var valueArrTest = checkarr;
    		
    		var data = $("#register-frm").serialize();
    		
    		jQuery.ajaxSettings.traditional = true;
    		
    		$.ajax({
    			"url": "registerpurpose.action",
    			"method": "POST",
    			"data": data,
    			"success": function(data, status, xhr) {
    	
    				if(valueArrTest == success){
    					alert('저장했습니다');
    				}else{ alert('저장 실패'); }
    				
    				화면갱신
    				$('#purposelist').load("get-input-list.action", { "memberNo" : ${meber.memberNo} });
    			},
    			"error": function(xhr, status, err) {
    				
    			}
    		});
    	} --%>
    
 	</script>
</head>
<body>

  <jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>

    <div class="main">
        <div class="main-inner">
            <div class="container">
            
			
           <div class="dropdown">등록일 &nbsp;
			<select name="product" size="1" style="width: 95px">
				<option>결제구분</option>
				<option value="deadpool" name="deadpool">결제고객</option>
				<option value="spiderman">미결제 고객</option>
				
			</select> <select name="salesvalue" size="1" style="width: 90px">
				<option>고객관리 담당자선택</option>
				<option value="deadpool">신규결제</option>
				<option value="spiderman">재 결제</option>
				<option value="spiderman">카드취소</option>
				<option value="spiderman">이체/현금 환불</option>
				
			</select> <select name="manager" size="1" style="width: 85px">
				<option>유입경로선택</option>
				<option value="deadpool">전단지</option>
				<option value="spiderman">간판</option>
				<option value="spiderman">회원추천 및 소개</option>
				<option value="spiderman">지인소개</option>
				<option value="spiderman">페이스북</option>
				<option value="spiderman">인스타그램</option>
				<option value="spiderman">블로그</option>
				<option value="spiderman">검색</option>
				<option value="spiderman">기업제휴</option>
				<option value="spiderman">재등록</option>
				
				
			</select> <select name="payment" size="1" style="width: 90px">
				<option>정렬</option>
				<option value="deadpool">등록일순</option>
				<option value="spiderman">최근 연락일순</option>
			</select> 
			
			<input type="text" width="5px" name="membersearch" placeholder="회원명">
				<button type="submit" id="search" name="search" class="btn btn-small btn-success">검색</button>
			<button type="button" id="register" name="register" class="btn btn-small btn-success" data-toggle="modal" data-target="#myModal">신규고객등록</button>
		
		</div>
	
		<jsp:include page="/WEB-INF/views/financial/newregister.jsp"/>
		
		
		<%-- 두번째 메뉴 --%>
		<hr>
		<div id="menu2">
		<a href="#" id="call" class="btn btn-warning">전화연락</a>
		<a href="#" id="visit" class="btn btn-warning">방문상담</a>
		<a href="" id="listdel" class="btn btn-danger">목록에서제거</a>
		</div>
		
		<br>
		 
            
      <%-- 전체 월별 리스트 --%>
		<div id="list">
			<table class="table table-bordered table-condensed table-hover"
				id="reservationList">
				<thead>
					<tr>
						<th style="width: 1%"><input type="checkbox" name="checkAll" id="checkAll" />
						</th>

						<th style="width: 7%">등록일</th>
						<th style="width: 5%">최근연락일</th>
						<th style="width: 6%">고객관리담당자</th>
						<th style="width: 8%">고객정보</th>

						<th style="width: 7%">유입경로</th>
						<th style="width: 6%">등록목적</th>
						<th style="width: 8%">유입상태</th>
						<th style="width: 6%">방문예정일</th>

						<th style="width: 6%">결제상태</th>
						<!-- <th style="width: 6%">예상 환불금액</th> -->
						<th style="width: 8%">미결제사유</th>
						<!-- 2.0v 2017-08-07 수정 -->
						<th style="width: 5%">연락상태</th>
					</tr>
				</thead>

<%-- 				<c:choose>
					<c:when test="${ empty data }">
						<tbody>
							<td colspan="15" style="text-align:center">목록이 없습니다</td>
						</tbody>
					</c:when>
					<c:otherwise> --%>
					
					
					<c:forEach var="member" items="${ members }"> <%-- 컨트롤러에서 저장하기 --%>
						<tbody>
							<tr>
								<td><input type="checkbox" name="checkRow" id="checkRow"/></td>
								<td> ${member.memVisitDate} </td><%-- --%>
								<td></td>
								<td></td>
								<td>${member.memName} / ${member.age}세 / ${member.memGender} <br>
								${member.memPhone} </td>
								
								<td></td>
								<c:choose>
								<c:when test="${ not empty visitpurposevo.purpose }">	
								<td id="purposelist">
								 ${visitpurposevo.purpose}
								</td>
								
								</c:when>
								
								<c:otherwise>
							<%-- 	<c:forEach var="purpose" items="visitpurposevo.purpose" > --%>
								
								<td>
								<button type="button" class="btn btn-small btn-success" 
								data-toggle="modal" data-target="#input">입력하기
								</button>
								</td>
								<%-- </c:forEach> --%>
								
								</c:otherwise>
								</c:choose>
								
								<td>${member.memRoute}</td>
								
								<c:choose>
								<c:when test="${ empty data }">
								<td>
								<button type="button" class="btn btn-small btn-success" 
								data-toggle="modal" data-target="#reserve">예약하기
								</button>
								</td>		
								</c:when>
								
								<c:otherwise>
								<td id="schsuccess">
								${scheduleddatevo.visit} / ${scheduleddatevo.hourfrom} : ${scheduleddatevo.minuetfrom} ~ ${scheduleddatevo.hourto} : ${scheduleddatevo.minuetto} <br>
								<a data-toggle="modal" data-target="#reserve">예약일수정</a><%-- update --%>
								</td>
								</c:otherwise>
								</c:choose>
												
								<c:choose>
								<c:when test="${ member.statement eq '0' }">
								<td style="color:orange">미결제</td>
								</c:when>
								
								<c:otherwise>
								<td style="color:blue">결제</td>
								</c:otherwise>
								</c:choose>
								
								<td></td>
								<td></td>
							</tr>


							<%-- <!-- if not empty연락상태 -->
							if 전화{
							전화: ${ date } ${담당자}
							}
							else if( ? )
							?: ${ date } ${ 담당자 }
							--%>
						</tbody>
					</c:forEach>
					<%-- </c:otherwise>
				</c:choose>
 --%>			</table>
 ${ pager }
		</div>
	
	<jsp:include page="/WEB-INF/views/financial/registerpurpose.jsp"/>
	
	<jsp:include page="/WEB-INF/views/financial/visit.jsp"/>



   
            </div>
            <!-- /container -->
        </div>
        <!-- /main-inner -->
    </div>
    <!-- /main -->
  <div id="xy"></div>
    <div class="footer">
        <div class="footer-inner">
            <div class="container">
                <div class="row">
                    <div class="span12">
                        &copy; 2018 <a href="#">헬스장 다니자</a>.
                    </div>
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
    <script src="/team-project3/resources/assets/js/base.js"></script>
    <script>
        var doughnutData = [
				{
				    value: 30,
				    color: "#F7464A"
				},
				{
				    value: 50,
				    color: "#46BFBD"
				},
				{
				    value: 100,
				    color: "#FDB45C"
				},
				{
				    value: 40,
				    color: "#949FB1"
				},
				{
				    value: 120,
				    color: "#4D5360"
				}

			];

        var myDoughnut = new Chart(document.getElementById("donut-chart").getContext("2d")).Doughnut(doughnutData);


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

var myLine = new Chart(document.getElementById("bar-chart").getContext("2d")).Bar(barChartData);

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

				var chartData = [
			{
			    value: Math.random(),
			    color: "#D97041"
			},
			{
			    value: Math.random(),
			    color: "#C7604C"
			},
			{
			    value: Math.random(),
			    color: "#21323D"
			},
			{
			    value: Math.random(),
			    color: "#9D9B7F"
			},
			{
			    value: Math.random(),
			    color: "#7D4F6D"
			},
			{
			    value: Math.random(),
			    color: "#584A5E"
			}
		];
				var myPolarArea = new Chart(document.getElementById("line-chart").getContext("2d")).PolarArea(chartData);
	</script>
</body>
</html>
