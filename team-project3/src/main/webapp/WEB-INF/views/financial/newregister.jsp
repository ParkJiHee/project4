<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">

 <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
 <script type="text/javascript">
 $(function () {
	$('#phone3').change(function () {
		var phone = $('#phone1').val()+'-'+ $('#phone2').val()+'-'+$(this).val();
		$('#memPhone').val(phone);
	});

	<%-- 주소입력 연결하기--%>
	
	$('.form-actions > button').on('click', function (event) {
		
		event.preventDefault();
		event.stopPropagation();
		
		var id= $(this).attr('id');
		var frm = $('#newregister-form');
		
		var age = $('#age');
		age.val(age.val().length == 0 ? '0' : age.val());
		
		if (id === 'new') { 
		 frm.attr("action", "/team-project3/financial/possiblemember.action");
		} else if( id === 'prod'){
			frm.attr("action", "/team-project3/purchase/purRegister.action?productno=${ product.productNo }&memberno=${ member.memberNo }");
		}
		 frm.submit();
	})
		
 }) <%-- 메인 function끝 --%>
 
 
 </script>
</head>
<body>

<!-- Modal -->
<div id="myModal" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
 <%--      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">취소</button>
      </div> --%>
      <div class="modal-body">
        	<form name="newregister" id="newregister-form" method="post" 
        	enctype="multipart/form-data" modelAttribute="member" >			
			
			<div class="form-horizontal">

				<fieldset>
				
				<div class="control-group">											
					<label class="control-label" for="firstname">
				<img src="/team-project3/resources/assets/img/user.png"/></label>
				<input type='file' id='file' name='file' />
				<input type="text" id="image" readonly/>
			<button id='btn-upload' class="btn btn-info" onfocus="this.blur();">이미지찾기</button>
				</div>
				
				<div class="control-group">											
					<label class="control-label" for="firstname">*회원명</label>
					<div class="controls">
						<input type="hidden" name="centerNo" value="${ loginuser.centerNo }"/>
						<input type="text" name="memName" id="firstname" placeholder="이름 입력">
						<br>
						<label class="radio inline">
                            <input type="radio" name="memGender" value="m" checked="checked"> 남성
                       </label>
                       
                       <label class="radio inline">
                            <input type="radio" name="memGender" value="w"> 여성
                       </label>
					</div> <!-- /controls -->				
				</div> <!-- /control-group -->
				
				<div class="control-group">											
					<label class="control-label" for="firstname">*휴대전화번호</label>
					<div class="controls">
						<input type="text" id="phone1" class="span1 m-wrap">
						<input type="text" id="phone2" class="span1 m-wrap">
						<input type="text" id="phone3" class="span1 m-wrap">
						<label class="checkbox inline">
                           <input type="checkbox" checked="checked"> SNS 수신 동의
                        </label>
                        <input type="hidden" name="memPhone" id="memPhone"/>
					</div> <!-- /controls -->				
				</div> <!-- /control-group -->
				
				<!-- <div class="control-group">											
					<label class="control-label" for="firstname">*회원 번호</label>
					<div class="controls">
						<input type="text" name="memberNo" id="firstname">
					</div> /controls				
				</div> /control-group -->
				
				<!-- <div class="control-group">											
					<label class="control-label" for="firstname">회원 바코드 번호</label>
					<div class="controls">
						<input type="text" name="firstname" id="firstname">
					</div> /controls				
				</div> /control-group -->
				
				<div class="control-group">											
					<label class="control-label" for="firstname">*유입 상태</label>
					<div class="controls">
						<label class="radio inline">
                            <input type="radio" name="memRoute" value="방문" checked="checked"> 방문
                       </label>
                       
                       <label class="radio inline">
                            <input type="radio" name="memRoute" value="전화"> 전화
                       </label>
                       
                       <label class="radio inline">
                            <input type="radio" name="memRoute" value="온라인"> 온라인
                       </label>
					</div> <!-- /controls -->				
				</div> <!-- /control-group -->
				
				<div class="control-group">											
					<label class="control-label" for="memVisitDate">*방문일</label>
					<div class="controls">
						<input type="date" name="memVisitDate" id="memVisitDate"/>
					</div> <!-- /controls -->				
				</div> <!-- /control-group -->
				
				<hr>
				
				<div class="control-group">											
					<label class="control-label" for="firstname">고객관리 담당자</label>
					<div class="controls">
						<select name="search_expire" data-function="search" style="width: auto;">
							<option >검색조건 선택</option>
							<option value="search_service_expire">이용권 만료일 검색</option>
							<option value="search_locker_expire">락커 만료일 검색</option>
							<option value="search_visit_expire">방문 만료일 검색</option>
						</select>
					</div> <!-- /controls -->				
				</div> <!-- /control-group -->
				
				<div class="control-group">											
					<label class="control-label" for="firstname">고객 유입 경로</label>
					<div class="controls">
						<select name="search_expire" data-function="search" style="width: auto;">
							<option >검색조건 선택</option>
							<option value="search_service_expire">이용권 만료일 검색</option>
							<option value="search_locker_expire">락커 만료일 검색</option>
							<option value="search_visit_expire">방문 만료일 검색</option>
						</select>
					</div> <!-- /controls -->				
				</div> <!-- /control-group -->
				
				<div class="control-group">											
					<label class="control-label" for="memBrith">생년월일</label>
					<div class="controls">
						<input type="date" name="memBrith" id="memBrith"><br>
						<input type="text" name="age" placeholder="나이" id="age"/>
					</div> <!-- /controls -->				
				</div> <!-- /control-group -->
				
				<div class="control-group">											
					<label class="control-label" for="firstname">주소</label>
					<div class="controls">
						<input type="text"  id="sample6_postcode" placeholder="우편번호"> 
						<input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br> 
						<input type="text" id="sample6_address" placeholder="주소"><br> 
						<input type="text" id="sample6_detailAddress" placeholder="상세주소"> 
						<input type="text" id="sample6_extraAddress" placeholder="참고항목">
						<input type="hidden" name="memAddress" id="memAddress"/>
					</div> <!-- /controls -->				
				</div> <!-- /control-group -->
			
				<div class="control-group">											
					<label class="control-label" for="memEail">이메일</label>
					<div class="controls">
						<input type="text" name="memEail" id="memEail" class="span3 m-wrap">
					</div> <!-- /controls -->				
				</div> <!-- /control-group -->
				
				<!-- <div class="control-group">											
					<label class="control-label" for="firstname">메모</label>
					<div class="controls">
						<textarea rows="3" cols="30" name="memmemo"></textarea>
					</div> /controls				
				</div> /control-group -->
			</fieldset>
			</div>
			
			<div class="form-actions">				 	
				<button type="submit" class="btn btn-primary" id="new">잠재고객 등록</button>
				<button type="submit" class="btn btn-default" id="prod">등록후 상품 판매</button>
				
			</div> <!-- .actions -->
			
		</form>		
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
      </div>
    </div>

  </div>
</div>
</body>
</html>