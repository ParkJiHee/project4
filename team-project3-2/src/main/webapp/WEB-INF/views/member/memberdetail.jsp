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
    <link href="/team-project3/resources/assets/css/pages/signin.css" rel="stylesheet">
	<link href="/team-project3/resources/assets/css/pages/dashboard.css" rel="stylesheet">
    <style type="text/css">
    	.stats-box-all-info{
    		font-size: 15px;
    	}
    	ul.mylist, ol.mylist {
		    list-style: none;
		    margin: 0px;
		    padding: 0px;
		    max-width: 520px;
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
		<jsp:param value="memberdetail" name="bgcolor" />
	</jsp:include>
<!-- end header.jsp -->

<!-- Modal -->
  <div class="modal fade" id="myModify" role="dialog" style="top: 30%; z-index: -100;">
  <div class="modal-dialog">
  <div class="modal-content">
  <div class="modal-header" style="background-color: #00ba8b;">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h3 class="modal-title" style="color: white;">회원 정보 수정</h3>
  </div>
    <div class="content clearfix">
		
		<form id="memberupdateform" enctype="multipart/form-data">			
			<input type="hidden" name="centerNo" value="${ loginuser.centerNo }">
			<input type="hidden" name="memberNo" value="${ member.memberNo }"/>
			<div class="form-horizontal">
			
			<img src="/team-project3/resources/assets/img/user.png"/>
						
				<p>Create your free account:</p>
				<div class="control-group">
					<label class="control-label" for="file">첨부파일</label>
					<div class="controls">
						<input type="file" name="attach"/>
					</div>
				</div>
				
				<fieldset>
				<div class="control-group">											
					<label class="control-label" for="memName">*회원명</label>
					<div class="controls">
						<input type="text" name="memName" id="memName" value="${ member.memName }"/>
						
						<label class="radio inline">
                            <input type="radio" name="memGender" value="남"/> 남성
                       </label>
                       
                       <label class="radio inline">
                            <input type="radio" name="memGender" value="여"/> 여성
                       </label>
					</div> <!-- /controls -->				
				</div> <!-- /control-group -->
				
				<div class="control-group">											
					<label class="control-label" for="memPhone">*휴대전화번호</label>
					<div class="controls">
						<input type="text" id="phone1" class="span1 m-wrap"/>
						<input type="text" id="phone2" class="span1 m-wrap"/>
						<input type="text" id="phone3" class="span1 m-wrap"/>
						<label class="checkbox inline">
                           <input type="checkbox" checked="checked"> SNS 수신 동의
                        </label>
                        <input type="hidden" name="memPhone" id="memPhone" value="${ member.memPhone }"/>
					</div> <!-- /controls -->				
				</div> <!-- /control-group -->
				
				<div class="control-group">											
					<label class="control-label" for="memRoute">*유입 상태</label>
					<div class="controls">
						<label class="radio inline">
                            <input type="radio" name="memRoute" value="방문"/> 방문
                       </label>
                       
                       <label class="radio inline">
                            <input type="radio" name="memRoute" value="전화"/> 전화
                       </label>
                       
                       <label class="radio inline">
                            <input type="radio" name="memRoute" value="온라인"/> 온라인
                       </label>
                       
					</div> <!-- /controls -->				
				</div> <!-- /control-group -->
				
				<div class="control-group">											
					<label class="control-label" for="memVisitDate">*방문일</label>
					<div class="controls">
						<input type="date" name="memVisitDate" id="memVisitDate" value="${ member.memVisitDate }"/>
					</div> <!-- /controls -->				
				</div> <!-- /control-group -->
				
				<hr>
				
				<div class="control-group">											
					<label class="control-label" for="memBrith">생년월일</label>
					<div class="controls">
						<input type="date" name="memBrith" id="memBrith" value="${ member.memBrith }"/>
						<input type="text" name="age" id="age" class="span1 m-wrap" placeholder="나이" value="${ member.age }">
					</div> <!-- /controls -->				
				</div> <!-- /control-group -->
				
				<div class="control-group">											
					<label class="control-label" for="memAddress">주소</label>
					<div class="controls">
						<!-- <input type="text" id="address1" class="span3 m-wrap" placeholder="주소를 입력하세요">
						<input type="text" id="address2" class="span3 m-wrap" placeholder="상세주소 입력"> -->
						<input type="text" id="sample6_postcode" class="span2 m-wrap" placeholder="우편번호">
						<input type="button" onclick="sample6_execDaumPostcode()" class="btn" value="우편번호 찾기"><br>
						<input type="text" id="sample6_address" class="span3 m-wrap" placeholder="주소"><br>
						<input type="text" id="sample6_detailAddress" class="span2 m-wrap" placeholder="상세주소">
						<input type="text" id="sample6_extraAddress" class="span2 m-wrap" placeholder="참고항목">

						<input type="hidden" name="memAddress" id="memAddress" value="${ member.memAddress }"/>
						
						<script src="https://ssl.daumcdn.net/dmaps/map_js_init/postcode.v2.js"></script>
						<script>
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
						                document.getElementById("memAddress").value = data.zonecode+" "+addr+','+extraAddr;
						            }
						        }).open();
						    }
						</script>
					</div> <!-- /controls -->				
				</div> <!-- /control-group -->
			
				<div class="control-group">											
					<label class="control-label" for="memEmail">이메일</label>
					<div class="controls">
						<input type="text" name="memEmail" id="memEmail" value="${ member.memEmail }" class="span3 m-wrap">
					</div> <!-- /controls -->				
				</div> <!-- /control-group -->
			</fieldset>
			</div>
			
		</form>		
		
		<div class="modal-footer form-actions">
				
				<button class="btn btn-default" data-dismiss="modal">닫기</button>
				<button id="update" class="btn btn-primary" data-dismiss="modal">수정</button>
				<button id="updatesell" class="btn btn-default" data-dismiss="modal">수정 후 상품 판매</button>
				
			</div> <!-- .actions -->
	</div> <!-- /content -->
	</div>
	</div>
  </div>
  <!-- end Modal -->

    
<div class="main">
	
	<div class="main-inner">

	    <div class="container">
	    	
	     <div class="row">
	      	
	      	<div class="span12">
	      
	      	<div class="info-box">
               <div class="row-fluid stats-box" style="margin: 10px 0px;">
                 
                 <div class="span4">
                    <div class="stats-box-all-info">				
                    	<img class="control-label" src="/team-project3/resources/assets/img/user.png"/>&emsp;&emsp;이름 : ${ member.memName }
						<div class="controls">
							<p>${ member.age }세 / ${ member.memBrith }</p>
						</div>				
					</div>
                    
                  </div>
                  
                  <div class="span4">
                    <div class="stats-box-all-info"><i class="icon-thumbs-up"  style="color:#F30"></i> 성별 : ${ member.memGender }</div>
                    <div class="stats-box-all-info"><i class="icon-map-marker"></i> 주소 : ${ member.memAddress }</div>
                  </div>
                  
                  <div class="span4">
                  <div class="stats-box-all-info"><i class="icon-phone"></i> 전화번호 : ${ member.memPhone }</div>
                    <div class="stats-box-all-info"><i class="icon-envelope-alt"></i> 이메일 : ${ member.memEmail }</div>
                 </div>
             </div>
         </div>
         </div> 
         </div>           	
	  	  <!-- /row -->
	
	      <div class="row">
	      	
	      	<div class="span6">
	      		
	      		<div class="widget">
						
					<div class="widget-header">
						<i class="icon-star"></i>
						<h3>개인 정보</h3>
					</div> <!-- /widget-header -->
					
					<div class="widget-content" style="height:300px;">
							
							<ul class="mylist">
						        <li><span>회원 번호</span> &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;${ member.memberNo }</li>
						        <li><span>첫 등록일</span> &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;${ member.memVisitDate }</li>
						        <li><span>담당자</span> &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;${ loginuser.cenId }</li>
						        <li><span>락커번호</span> &emsp;&emsp;&emsp;&emsp;&emsp;ㅇㅇㅇㅇ</li>
						        <li><span>바코드번호</span> &emsp;&emsp;&emsp;&emsp;&emsp;ㅇㅇㅇㅇ</li>
						    </ul>
						
						<br>
						<h3>메모</h3>
						<hr>
					</div> <!-- /widget-content -->
						
				</div> <!-- /widget -->
				
		    </div> <!-- /span6 -->
		    
		    <div class="span6">
	      		
	      		<div class="widget">
						
					<div class="widget-header">
						<i class="icon-star"></i>
						<h3>이용권 목록</h3>
					</div> <!-- /widget-header -->
					
					<div class="widget-content" style="overflow-y: scroll; height:300px;">
						<div class="span3">
	      		
				      		<div class="widget">
				      			
				      			<div class="widget-content">
				      				
						      		<h1>3 Columns</h1>
						      		
						      		<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.</p>	
						      		
					      		</div> <!-- /widget-content -->
					      		
				      		</div> <!-- /widget -->
				      		
			      		</div> <!-- /span3 -->
			      		
			      		<div class="span3">
	      		
				      		<div class="widget">
				      			
				      			<div class="widget-content">
				      				
						      		<h1>3 Columns</h1>
						      		
						      		<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.</p>	
						      		
					      		</div> <!-- /widget-content -->
					      		
				      		</div> <!-- /widget -->
				      		
			      		</div> <!-- /span3 -->
			      		
			      		<div class="span3">
	      		
				      		<div class="widget">
				      			
				      			<div class="widget-content">
				      				
						      		<h1>3 Columns</h1>
						      		
						      		<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.</p>	
						      		
					      		</div> <!-- /widget-content -->
					      		
				      		</div> <!-- /widget -->
				      		
			      		</div> <!-- /span3 -->
			      		
			      		<div class="span3">
	      		
				      		<div class="widget">
				      			
				      			<div class="widget-content">
				      				
						      		<h1>3 Columns</h1>
						      		
						      		<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.</p>	
						      		
					      		</div> <!-- /widget-content -->
					      		
				      		</div> <!-- /widget -->
				      		
			      		</div> <!-- /span3 -->
					</div> <!-- /widget-content -->
						
				</div> <!-- /widget -->
				
		    </div> <!-- /span6 -->
	      	
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

<script type="text/javascript">
$(function() {
	
	$("input[name='memGender']").each(function(i){
		if($("input[name='memGender']").eq(i).attr("value") == "${ member.memGender }"){
			$("input[name='memGender']").eq(i).prop('checked', true);
		}
	});
	
	$("input[name='memRoute']").each(function(i){
		if($("input[name='memRoute']").eq(i).attr("value") == "${ member.memRoute }"){
			$("input[name='memRoute']").eq(i).prop('checked', true);
		}
	});
	
	/////////////문자열 자르기
	var phone = "${ member.memPhone }";
	var tmpPhone = phone.split("-");
	
	$('#phone1').val(tmpPhone[0]);
	$('#phone2').val(tmpPhone[1]);
	$('#phone3').val(tmpPhone[2]);
	
	var address = "${ member.memAddress }";
	
	if(address.length != 0){
		
		/* var address1 = address.split("(");
		var address2 = address1[1].split(")");
		
		$('#address1').val(address1[0]);
		$('#address2').val(address2[0]); */
		
		var address1 = address.split("(");
		var address2 = address1[0].split(", ");
		$('#sample6_postcode').val(address1[0].substring(0,5));
		$('#sample6_address').val(address1[0].substring(6,address1[0].length-(address2[1].length+2)));
		if(address2[1].length != 0){
			$('#sample6_detailAddress').val(address2[1].substring(0,address2[1].length-1));
		}
		$('#sample6_extraAddress').val(' ('+address1[1]);
	}
	///////////// end 문자열 자르기
	
	// 마지막에 입력 시 입력되게 한다.
    $("#phone3").change(function(){
    	var phone2 = $('#phone1').val()+'-'+$('#phone2').val()+'-'+$(this).val();
        $('#memPhone').val(phone2);
    });

    $("#sample6_extraAddress").change(function(){
    	var add = $('#sample6_postcode').val()+' '+$('#sample6_address').val()+', '+$(this).val();
        $('#memAddress').val(add);
    });
	
    $("#sample6_detailAddress").change(function(){
    	var add = $('#sample6_postcode').val()+' '+$('#sample6_address').val();
    	var add2 = $(this).val();
    	
    	if(address2.length != 0){
    		add = add+', '+$(this).val();
    		$('#memAddress').val(add+$('#sample6_extraAddress').val());
    	}else{
    		$('#memAddress').val(add+','+$('#sample6_extraAddress').val());
    	}
    });
	
	
	$('#memberdelete').on('click',function(event){
		var memberArray = new Array();
		
		memberArray.push(${ member.memberNo });
		
		if(memberArray.length == 0){
			alert("회원 번호가 없습니다.");
		}else{
			alert(memberArray);
			//alert("삭제할 회원이 있다!!.");
			if(confirm("삭제하시겠습니까?")==true){ //확인
				$.ajax({
					"url": "memberdelete.action",
					"type": "POST",
					"data": {0:0, memberArray:memberArray},
					"success": function(data, status, xhr) {
						if (data === "success") {
							alert('회원을 삭제했습니다.');
						} else {
							alert('회원 삭제 실패');
						}
						
						location.href="/team-project3/member/memberlist.action"
					},
					"error": function(xhr, status, err) {
						alert('회원 등록 실패');
					}
				});
				
				memberArray = new Array();
			}else{ //취소
				location.reload(true);
			}
		}
	});
	
	
	$('#update').on('click', function(event) {
		var content = $('#age').val();
		var num = 0;
		if(content.length == 0){
			$('#age').val(num);
		}
		
		//event.preventDefault(); //이벤트를 발생시킨 객체의 기본 동작 수행 차단
		//event.stopPropagation(); //상위 객체로의 이벤트 전달 차단
		
		var data = $('#memberupdateform').serializeArray(); // [{boardno:'xxx'}, {writer:'yyy'}, ]
		
		$.ajax({
			"url": "memberupdate.action",
			"type": "POST",
			"data": data,
			"success": function(data, status, xhr) {
				if (data === "success") {
					alert('회원 정보를 수정했습니다.');
				} else {
					alert('회원 정보 수정 실패');
				}
					
				location.href="/team-project3/member/memberdetail.action?memberno=${ member.memberNo }"
			},
			"error": function(xhr, status, err) {
				alert('회원 수정 실패');
				location.reload(true);
			}
		});
	}); 
	
	$('#updatesell').on('click', function(event) {
		var content = $('#age').val();
		var num = 0;
		if(content.length == 0){
			$('#age').val(num);
		}	
		
			//event.preventDefault(); //이벤트를 발생시킨 객체의 기본 동작 수행 차단
			//event.stopPropagation(); //상위 객체로의 이벤트 전달 차단
			
			var data = $('#memberupdateform').serializeArray(); // [{boardno:'xxx'}, {writer:'yyy'}, ]
			
			$.ajax({
				"url": "memberupdate.action",
				"type": "POST",
				"data": data,
				"success": function(data, status, xhr) {
					if (data === "success") {
						alert('회원 정보를 수정했습니다.');
					} else {
						alert('회원 정보 수정 실패');
					}
					
					location.href="/team-project3/purchase/purSelect.action?memberno=${ member.memberNo }&centerno=${ loginuser.centerNo }";
				},
				"error": function(xhr, status, err) {
					alert('회원 수정 실패');
					location.reload(true);
				}
			});
		});
});
</script>


  </body>

</html>

