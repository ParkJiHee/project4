<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>상품결제</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<meta name="apple-mobile-web-app-capable" content="yes">
<link href="/team-project3/resources/assets/css/bootstrap.min.css" rel="stylesheet">
<link href="/team-project3/resources/assets/css/bootstrap-responsive.min.css" rel="stylesheet">
<link href="http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600"
        rel="stylesheet">
<link href="/team-project3/resources/assets/css/font-awesome.css" rel="stylesheet">
<link href="/team-project3/resources/assets/css/style.css" rel="stylesheet">
<link href="/team-project3/resources/assets/css/pages/dashboard.css" rel="stylesheet">
</head>
<body>

<jsp:include page="/WEB-INF/views/include/navbar.jsp"></jsp:include>

<div class="main">
  <div class="main-inner">
    <div class="container">
      <div class="row">
        <div class="span11">
          <div class="widget widget-nopad">
            <div class="widget-header"> <i class="icon-list-alt"></i>
              <h3>상품결제</h3>
            </div>
            <!-- /widget-header -->
            <form id="payment" action="/team-project3/purchase/purRegister.action" method="post">
            <div class="widget-content">
              <div class="widget big-stats-container">
                <div class="widget-content">
                  <div id="big_stats" class="cf">
                    <div class="stat"> 
                    	<h3 class="bigstats">회원 정보</h3>
                        <div class="stats">
                        	<input type="hidden" name="memberNo" value="${ member.memberNo }">
                        	<input type="hidden" name="centerNo" value="${ loginuser.centerNo }">
	                        <span class="label_title">이름</span>
	                        <span>${ member.memName }</span><br>
	                        <span class="label_title">번호</span>
	                        <span>${ member.memPhone }</span>
                        </div>
                        
                        <h3 class="bigstats">결제 상품 정보</h3>
                        <div class="stats">
	                        <table>
	                        	<tr>
	                        		<td class="label_title">상품명</td>
	                        		<td>${ product.productName }</td>
	                        	</tr>
	                        	<tr>
	                        		<td class="label_title">상품설명</td>
	                        		<td>${ product.productExplain }</td>
	                        	</tr>
	                        	<tr>
	                        		<td class="label_title">상품가격</td>
	                        		<td>${ product.productPrice }원</td>
	                        	</tr>
	                        </table>
                        	<input type="hidden" name="productNo" value="${ product.productNo }">
                       		<input type="hidden" name="purName" value="${ product.productName }">
                            <input type="hidden" name="purPrice" value="${ product.productPrice }">
                        </div>
                        
                        <h3 class="bigstats">상품결제 금액 확인</h3>
                        <div class="stats">
                        
                        <table id="paymentPrice">
                           <tbody>
                               <tr>
                                   <td class="label_title" style="text-align: left; width: 50%;">카드</td>
                                   <td style="text-align: right; width: 50%;"><span id="paymentCard">0</span> 원</td>
                               </tr>
                               <tr>
                                   <td class="label_title">현금</td>
                                   <td style="text-align: right;"><span id="paymentCash">0</span> 원</td>
                               </tr>
                               <tr>
                                   <td class="label_title">총 결제금액</td>
                                   <td style="text-align: right;"><span id="paymentTotal">0</span> 원</td>
                               </tr>
                               <tr>
                                   <td class="label_title">미 결제금액</td>
                                   <td style="text-align: right;"><span id="unPayment" style="color:red">${ product.productPrice }</span> 원 </td>
                               </tr>
                            </tbody>
                        </table>
                        </div>
                    </div>
                    
                    <!-- .stat -->
                    
                    <div class="stat"> 
                    	<h3 class="bigstats">결제 진행</h3>
                    	<div class="stats">
                        <p>
                            <span class="label_title">결제 담당자 선택</span><br>
                            <span>${ loginuser.cenId }</span>
                        </p>
                        <p>
                        <span class="label_title">이용 시작일 선택</span><br>
                        <input type="date" name="purDateto" id="purDateto">
                     	</p>
                        <p>
                        <span class="label_title">이용 만료일 선택</span><br>
                        <input type="date" name="purDatefrom" id="purDatefrom">
                     	</p>
                  
                        <p>
                        <span class="label_title">결제일자</span><br>
                        <input type="date" name="purRegdate" id="purRegdate">
                        </p>
	                        <div class="input_cost">
	                        	<span class="label_title">금액입력</span><br>
	                            <input type="text" placeholder="금액을 입력하여 주십시오." name="purPrice" id="pay-amount" value=""><br>
	                            <input type="button" class="btn btn-primary" id="insert_pay" value="불러오기">&nbsp;&nbsp;
	                            <input type="button" class="btn btn-warning" id="reset_pay" value="지우기">
	                        </div><br>
							<div>
								<input type="button" value="1" id="nb" onclick="engine(this.value)">
								<input type="button" value="2" id="nb" onclick="engine(this.value)">
								<input type="button" value="3" id="nb" onclick="engine(this.value)"><br>
								<input type="button" value="4" id="nb" onclick="engine(this.value)">
								<input type="button" value="5" id="nb" onclick="engine(this.value)">
								<input type="button" value="6" id="nb" onclick="engine(this.value)"><br>
								<input type="button" value="7" id="nb" onclick="engine(this.value)">
								<input type="button" value="8" id="nb" onclick="engine(this.value)">
								<input type="button" value="9" id="nb" onclick="engine(this.value)"><br>
								<input type="button" value="0" id="nb" onclick="engine(this.value)">
								<input type="button" value="00" id="nb" onclick="engine(this.value)">
								<input type="button" value="000" id="nb" onclick="engine(this.value)"><br>
							</div>
                       </div>
                        <!-- //숫자 입력 패드 -->
                        
                    </div>
                    <!-- .stat -->
                    
                    <div class="stat">
                    	<h3 class="bigstats">상품결제 수단 선택</h3>
                        <div class="stats">
                        <div class="Method">
                            <input type="button" id="card" class="btn btn-success"  value="카드">&nbsp;
                            <input type="button" id="cash" class="btn btn-success"  value="현금">&nbsp;
                            <input type="hidden" name="purMethod" id="purMethod" value="">
                        </div><br> 
                        <div>
                            <span class="label_title">결제 메모</span><br>
                            <textarea name="purMemo" id="purMemo"></textarea>
                        </div>
                        
                        </div>
                        <input type="hidden" name="statement" value="1">
                    </div>
                    <!-- .stat -->
                  </div>
                </div>

                <div class="form-actions" align="center">
                	<button type="submit" class="btn btn-success">상품 등록</button>
                	<input type="button" value="취소"  class="btn btn-warning" onclick="history.back(-1);">
                	<input type="reset" class="btn btn-danger" onclick="reset_pay" value="초기화">
                </div>
              </div>
            </div>
            </form>
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
<script src="/team-project3/resources/assets/js/base.js"></script> 
<script type="text/javascript">
$(function() {
	$('#card').on('click', function(event) {
		$('#purMethod').val('카드');
		$('#paymentCard').text($('#pay-amount').val());
		$('#paymentCash').text("0");
		$('#paymentTotal').text($('#pay-amount').val());
		$('#paymentTotal').css("color", "#0054FF");
		$('#unPayment').text("0");
		$('#unPayment').css("color", "black");
	});
	
	$('#cash').on('click', function(event) {
		$('#purMethod').val('현금');
		$('#paymentCash').text($('#pay-amount').val());
		$('#paymentCard').text("0");
		$('#paymentTotal').text($('#pay-amount').val());
		$('#paymentTotal').css("color", "#0054FF");
		$('#unPayment').text("0");
		$('#unPayment').css("color", "black");
	});
	
	$('#insert_pay').on('click', function(event) {
		$('#pay-amount').val('${ product.productPrice }');
	});

	$('#reset_pay').on('click', function(event) {
		$('#pay-amount').val('');
	});
});
function engine(n){ // onclick으로 인해 이벤트 발생
    // 버튼을 누를때마다 기존 String에 더해진다. ex) 2345
    var x = $("#pay-amount").val() + n;
    // 더해진 String 을 calculat에 입력한다.
    $("#pay-amount").val(x);
}
</script>
</body>
</html>

