<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<!-- Modal -->
  <div class="modal fade" id="myCenter" role="dialog" style="top: 40%; z-index: -100;">
  <div class="modal-dialog">
  <div class="modal-content">
  <div class="modal-header" style="background-color: #00ba8b;">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h3 class="modal-title" style="color: white;">센터 정보 수정</h3>
  </div>
    <div class="content clearfix">
		
		<form id="centermodifyform" enctype='multipart/form-data'>			
			<input type="hidden" name="centerNo" value="${ loginuser.centerNo }">
			<div class="form-horizontal">
			
			<div class="img_wrap">
			<c:choose>
			<c:when test="${ not empty loginuser.attachments }">
				<c:forEach var="attach" items="${ loginuser.attachments }">
						<img id="img" src="/team-project3/resources/member-upload/${ attach.savedFileName }" alt="" 
						onerror="this.src = '/team-project3/resources/assets/img/user.png'" class="control-label" style="width:64px; height:64px; border-radius: 70px;"/>
				</c:forEach>
			</c:when>
			<c:otherwise>
				<img id="img" src="/team-project3/resources/assets/img/user.png" style="width:64px; height:64px; border-radius: 70px;"/>
			</c:otherwise>
			</c:choose>
			</div>
						
				
				<div class="control-group">
					<label class="control-label" for="file">첨부파일</label>
					<div class="controls">
						<input type="file" name="attach" id="attach"/>
					</div>
				</div>
				
				<fieldset>
				<div class="control-group">											
					<label class="control-label" for="cenId">센터 아이디</label>
					<div class="controls">
						<input type="text" name="cenId" id="cenId" value="${ loginuser.cenId }"/>
					</div> <!-- /controls -->				
				</div> <!-- /control-group -->
				
				<div class="control-group">											
					<label class="control-label" for="cenPasswd">센터 비밀번호</label>
					<div class="controls">
						<input type="password" name="cenPasswd" id="cenPasswd"/>
					</div> <!-- /controls -->				
				</div> <!-- /control-group -->
				
				<div class="control-group">											
					<label class="control-label" for="cenPhone">센터 전화번호</label>
					<div class="controls">
						<input type="text" id="phone1" class="span1 m-wrap"/>
						<input type="text" id="phone2" class="span1 m-wrap"/>
						<input type="text" id="phone3" class="span1 m-wrap"/>
						
                        <input type="hidden" name="cenPhone" id="cenPhone" value="${ loginuser.cenPhone }"/>
					</div> <!-- /controls -->				
				</div> <!-- /control-group -->
				
				
			
				<!-- <div class="control-group">											
					<label class="control-label" for="memEmail">이메일</label>
					<div class="controls">
						<input type="text" name="memEmail" id="memEmail" value="" class="span3 m-wrap">
					</div> /controls				
				</div> --> <!-- /control-group -->
			</fieldset>
			</div>
			
		</form>		
		
		<div class="modal-footer form-actions">
				
				<button class="btn btn-default" data-dismiss="modal">닫기</button>
				<button id="centermodify" class="btn btn-primary" data-dismiss="modal">센터 정보 수정</button>
				<!-- <button id="signupsell" class="btn btn-default" data-dismiss="modal">등록후 상품 판매</button> -->
				
			</div> <!-- .actions -->
	</div> <!-- /content -->
	</div>
	</div>
  </div>
  <!-- end Modal -->

