<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
</head>
<body>

<%--Modal --%>  
<div id="reserve" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">방문 예정일</h4>
      </div>
      <div class="modal-body">
      <form action="/team-project3/financial/possiblemember.action"  method="post" modelAttribute="shceduledate">
		방문 예정일  &nbsp;&nbsp;<input type='date' /> <br>
		시간  &nbsp;&nbsp;
			<select name="product" size="1" style="width: 60px">
				<option value="ironman">00</option>
				<option value="deadpool" name="deadpool">01</option>
				<option value="spiderman">02</option>
				<option value="spiderman">03</option>
				<option value="spiderman">04</option>
				<option value="spiderman">05</option>
				<option value="spiderman">06</option>
				<option value="spiderman">07</option>
				<option value="spiderman">08</option>
				<option value="spiderman">09</option>
				<option value="spiderman">10</option>
				<option value="spiderman">11</option>
				<option value="spiderman">12</option>
				<option value="spiderman">13</option>
				<option value="spiderman">14</option>
				<option value="spiderman">15</option>
				<option value="spiderman">16</option>
				<option value="spiderman">17</option>
				<option value="spiderman">18</option>
				<option value="spiderman">19</option>
				<option value="spiderman">20</option>
				<option value="spiderman">21</option>
				<option value="spiderman">22</option>
				<option value="spiderman">23</option>
			</select>&nbsp; 시 
			
			<select name="salesvalue" size="1" style="width: 60px">
				<option value="salesvalue">00</option>
				<option value="deadpool">05</option>
				<option value="spiderman">10</option>
				<option value="spiderman">15</option>
				<option value="spiderman">20</option>
				<option value="spiderman">25</option>
				<option value="spiderman">30</option>
				<option value="spiderman">35</option>
				<option value="spiderman">40</option>
				<option value="spiderman">45</option>
				<option value="spiderman">50</option>
				<option value="spiderman">55</option>	
			</select> &nbsp;-&nbsp;
			
			<select name="product" size="1" style="width: 60px">
				<option value="ironman">00</option>
				<option value="deadpool" name="deadpool">01</option>
				<option value="spiderman">02</option>
				<option value="spiderman">03</option>
				<option value="spiderman">04</option>
				<option value="spiderman">05</option>
				<option value="spiderman">06</option>
				<option value="spiderman">07</option>
				<option value="spiderman">08</option>
				<option value="spiderman">09</option>
				<option value="spiderman">10</option>
				<option value="spiderman">11</option>
				<option value="spiderman">12</option>
				<option value="spiderman">13</option>
				<option value="spiderman">14</option>
				<option value="spiderman">15</option>
				<option value="spiderman">16</option>
				<option value="spiderman">17</option>
				<option value="spiderman">18</option>
				<option value="spiderman">19</option>
				<option value="spiderman">20</option>
				<option value="spiderman">21</option>
				<option value="spiderman">22</option>
				<option value="spiderman">23</option>
			</select>&nbsp; 시 
			
			<select name="salesvalue" size="1" style="width: 60px">
				<option value="salesvalue">00</option>
				<option value="deadpool">05</option>
				<option value="spiderman">10</option>
				<option value="spiderman">15</option>
				<option value="spiderman">20</option>
				<option value="spiderman">25</option>
				<option value="spiderman">30</option>
				<option value="spiderman">35</option>
				<option value="spiderman">40</option>
				<option value="spiderman">45</option>
				<option value="spiderman">50</option>
				<option value="spiderman">55</option>	
			</select>
		
      <div class="form-actions" style="text-align:center">
		<button type="submit" id="possible"class="btn btn-primary">저장</button>				
		<button class="btn" data-dismiss="modal">닫기</button>	
	</div> <!-- .actions -->   
		</form>
      </div>
    </div>

  </div>
</div>
<%-- modal end --%>

</body>
</html>