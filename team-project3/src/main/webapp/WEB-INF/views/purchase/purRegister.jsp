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

<jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>

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
            <div class="widget-content">
              <div class="widget big-stats-container">
                <div class="widget-content">
                  <div id="big_stats" class="cf">
                    <div class="stat"> 
                    	<h3 class="bigstats">회원 정보</h3>
                        <div class="stats">
	                        <span class="label_title">이름</span>
	                        <span>${ member.memName }</span><br>
	                        <span class="label_title">번호</span>
	                        <span>${ member.memPhone }</span>
                        </div>
                        
                        <h3 class="bigstats">결제 상품 정보</h3>
                        <div class="stats">
                       		<span class="label_title">상품명</span>&nbsp;&nbsp;&nbsp;
                        	<span>${ product.productName }</span><br>
                            <span class="label_title">상품설명</span>
                            <span>${ product.productExplain }</span><br>
                            <span class="label_title">상품가격</span>
                            <span>${ product.productPrice }원</span>
                        </div>
                        
                        <h3 class="bigstats">상품결제 금액 확인<span class="btn small gray resetBtn">다시 입력</span></h3>
                        <div class="stats">
                        
                        <table>
                           <tbody>
                               <tr>
                                   <td >카드</td>
                                   <td style="text-align: right;">
                                       <p class="paymentPrice" data-msg="firstPaymentCard">0 원</p>
                                       <input type="hidden" name="firstPaymentCard" value="0">
                                       <input type="hidden" name="firstCardType" value="00">
                                       <input type="hidden" name="beforeFirstPaymentCard" value="0">
                                       <span class="btn_close cardReset" style="display: none;">close</span>
                                   </td>
                               </tr>
                               <tr>
                                   <td>현금</td>
                                   <td style="text-align: right;">
                                       <p class="paymentPrice" data-msg="cash">0 원</p>
                                       <input type="hidden" name="cash" value="0">
                                       <input type="hidden" name="beforeCash" value="0">
                                       <input type="hidden" name="cashReceiptsYn" value="N">
                                       <span class="btn_close cashReset" style="display: none;">close</span>
                                   </td>
                               </tr>
                               <tr>
                                   <td>총 결제금액</td>
                                   <td class="c_blue" style="text-align: right;">
                                       <p class="paymentPrice">0 원</p>
                                       <input type="hidden" name="totalPayments" value="0">
                                       <input type="hidden" name="beforeTotalPayments" value="0">
                                   </td>
                               </tr>
                               <tr>
                                   <td >미수금</td>
                                   <td class="c_red" style="text-align: right;">
                                       <p>${ product.productPrice }원</p>
                                       <input type="hidden" name="receivables" value="100000">
                                       <input type="hidden" name="beforeReceivables" value="100000">
                                   </td>
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
                        <input class="" type="date" name="purdateto" id="purdateto">
                     	</p>
                        <p>
                        <span class="label_title">이용 만료일 선택</span><br>
                        <input class="" type="date" name="purdatefrom" id="purdatefrom">
                     	</p>
                  
                        <p>
                            <span class="label_title">결제일자</span><br>
                     
                        
                           <input class="" type="date" name="purregdate" id="purregdate">
                        
                        
                     
                  </p>
                        <div class="input_cost">
                            <span class="btn green costBtn">불러오기</span><br>
                            <input type="text" placeholder="금액을 입력하여 주십시오." id="inputCost">
                            <button class="delBtn btn small gray">지우기</button>
                        </div>

                        <!-- 숫자 입력 패드 -->
                        <div class="flex_align input_cost_num">
                            <span>1</span>
                            <span>2</span>
                            <span>3</span>
                            <span>4</span>
                            <span>5</span>
                            <span>6</span>
                            <span>7</span>
                            <span>8</span>
                            <span>9</span>
                            <span>0</span>
                            <span>00</span>
                            <span>000</span>
                        </div>
                       </div>
                        <!-- //숫자 입력 패드 -->
                        
                    </div>
                    <!-- .stat -->
                    
                    <div class="stat">
                    	<h3 class="bigstats">상품결제 수단 선택</h3>
                        <div class="stats">
                        <div class="payment">
                            <button class="card">카드</button>
                            <button class="cash">현금</button>
                        </div>
                        <p>
                            <span class="label_title">결제 메모</span><br>
                            <textarea name="comment"></textarea>
                        </p>
                        
                        </div>
                    </div>
                    <!-- .stat -->
                    
                  </div>
                </div>

                <div class="button_area" align="center">
                    <a href="/manager/member/memberSelectProduct/439649" id="btnCancel" class="btn gray">취소</a>
                    <a href="#" id="btnPaymentProduct" class="btn dark">결제하기</a>
                </div>
                
              </div>
            </div>
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
<script language="javascript" type="text/javascript" src="/team-project3/resources/assets/js/full-calendar/fullcalendar.min.js"></script>
 
<script src="/team-project3/resources/assets/js/base.js"></script> 
</body>
</html>

