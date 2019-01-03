<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">

<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
<script type="text/javascript">

 </script>

</head>
<body>
<!-- Modal -->
<div id="input" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">등록목적</h4>
      </div>
      <div class="modal-body">
      <form id="register-frm" name="chkbox" method="post">
      	<input type="hidden" name="memberNo" value="11">
       	<input type="checkbox" name="purpose" value="시설이용"/> 시설이용
       	<input type="checkbox" name="purpose" value="개인레슨"/> 개인레슨
       	<input type="checkbox" name="purpose" value="그룹수업"/> 그룹수업
       	<input type="checkbox" name="purpose" value="다이어트"/> 다이어트 <br>
       	<input type="checkbox" name="purpose" value="재활운동"/> 재활운동
       	<input type="checkbox" name="purpose" value="체형교정"/> 체형교정
       	<input type="checkbox" name="purpose" value="체력증가"/> 체력증가
       	<input type="checkbox" name="purpose" value="건강유지"/> 건강유지 <br>
       	<input type="checkbox" name="purpose" value=""/> 기타 <input type="text" id="etc"/>
       	
      <div class="form-actions" style="text-align:center">
		<a class="btn btn-primary" onclick="checkboxarr()">저장</a>				
		<button class="btn" data-dismiss="modal">닫기</button>	
	</div> <!-- .actions -->   
		</form>
      </div>
    </div>

  </div>
</div>

</body>
</html>