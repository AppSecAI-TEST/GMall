<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/jspHeader.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
<script type="text/javascript">
$(document).ready(function(){
	
	    $(".list_2nd a").mouseover(function(){
	        $(".list_2nd a").css("color", "#12d8fa");
	    });
	    $(".list_2nd a").mouseout(function(){
	        $(".list_2nd a").css("color", "black");
	    });
	    $(".list_3th a").mouseover(function(){
	        $(".list_3th a").css("color", "#12d8fa");
	    });
	    $(".list_3th a").mouseout(function(){
	        $(".list_3th a").css("color", "black");
	    });
	
	
});
</script>
<link rel="stylesheet" type="text/css" href="${path }/css/delvpage.css">
<!-- <style type="text/css">
body {
	background-color: #f4f4f4;
}

.container-fluid {
	padding-top: 0 !important;
}

.info_content {
	border: 1px solid #e5e5e5;
	height: 1500px;
	margin: 30px auto 30px auto;
	padding: 0px;
	background: #fff;
	font-family: '나눔고딕', NanumGothic, '맑은고딕', MalgunGothic, '돋움', Dotum,
		Helvetica, sans-serif;
}

.my_left {
	position: absolute;
	width: 250px;
	height: 1500px;
}

.my_right {
	position: relative;
	width: 1157.61px;
	padding: 0px 40px 120px 40px;
	height: 1500px;
	margin-left: 250px;
	border-left: 1px solid #e5e5e5;
}

.left_prof {
	width: 250px;
	height: 240px;
	background-color: #bbbfc3;
	border-bottom: 1px solid #e5e5e5;
}

.left_list {
	width: 250px;
	height: 800px;
	padding-top: 40px;
	padding-left: 40px;
	padding-right: 40px;
	padding-bottom: 20px;
	text-align: left;
}
.left_list ul {
	text-align: left;
	padding: 0px;
	margin: 0px;
	font-size: 20px;
}
.list_1st{
	border-bottom: 1px solid #e5e5e5;
	margin-top: 20px;
	margin-bottom: 20px;
	padding-bottom: 20px;
}
.list_2nd{
	border-bottom: 1px solid #e5e5e5;
	margin-top: 20px;
	margin-bottom: 20px;
	padding-bottom: 20px;
}
.list_3th{
	margin-top: 20px;
	margin-bottom: 20px;
}

.list_1st a{
	text-decoration: none;
	color: #12d8fa;
}
.list_2nd a{
	text-decoration: none;
	color: black;
}
.list_3th a{
	text-decoration: none;
	color: black;
}

.right_menu {
	position: relative;
	width: 100%;
	height: 240px;
	padding: 35px 0px 35px 0px;
	border-bottom: 1px solid #e5e5e5;
}

.right_menu ul {
	list-style: none;
}

.menu_delv {
	text-align: center;
	float: left;
	border-right: 1px solid #e5e5e5;
	padding-top: 40px;
	padding-bottom: 45px;
	padding-left: 50px;
	padding-right: 100px;
}

.menu_coup {
	text-align: center;
	float: left;
	border-right: 1px solid #e5e5e5;
	padding-top: 40px;
	padding-bottom: 45px;
	padding-left: 110px;
	padding-right: 110px;
}

.menu_money {
	text-align: center;
	float: left;
	border-right: 1px solid #e5e5e5;
	padding-top: 40px;
	padding-bottom: 45px;
	padding-left: 110px;
	padding-right: 110px;
}

.menu_talk {
	text-align: center;
	float: left;
	padding-top: 40px;
	padding-bottom: 45px;
	padding-left: 110px;
}

.right_cont {
	
}

.home_group {
	margin-top :20px;
	border-top: 1px solid #e5e5e5;
}
.bus_list {
	margin-top: 20px;
	border-bottom: 1px solid #e5e5e5;
}
.bus_cont {
	margin-top: 20px;
	margin-bottom: 20px;
}
.my_category ul li{
	float: left;
	margin-right: 5px;
}
.my_category ul li input{
	width: 80px;	
}
</style> -->
</head>
<body>

   <script type="text/javascript">
 function changes(fr) {
  if(fr=="육류") {
   num = new Array("소고기", "돼지고기","닭고기","개구리 뒷다리","양고기");
  }
  else if(fr=="해산물") {
   num = new Array("소라", "멍게","해삼", "새우", "랍스터");
  }
  else if(fr=="과일") {
   num = new Array("사과", "딸기","토마토","포도", "수박");
  }
  else if(fr=="채소") {
	   num = new Array("상추", "배추","시금치", "당근", "무");
	  }
  else if(fr=="곡류") {
	   num = new Array("쌀", "보리","밀","호밀", "수수");
	  }
  else if(fr=="견과류") {
	   num = new Array("아몬드", "캐슈넛","호두","땅콩", "잣");
	  }
  else if(fr=="조미료") {
	   num = new Array("고춧가루", "후추","설탕","소금", "마약");
	  }

  //document.getElementbyId("Step2")
  
   //두번째값 넣어주기(Option함수 이용)
   for(i=0; i<num.length; i++) {
	   productForm.Step2.options[i] = new Option(num[i]);
  }
 }
</script>
	<div class="container-fluid"
		style="padding-left: 0px; padding-right: 0px;">

		<div class="col-xs-2"></div>

		<div class="col-xs-8 info_content">
			<div class="my_left">
				<div class="left_prof">
					<div style="text-align: center;"><img style="margin-top: 30px;" src="../prof/${member.picture }" class="img-circle" width="150px" height="150px"></div>
					<a href="${path }/member/passConfirmForm.mall"><img style="position: absolute; margin-left: 150px; margin-top: 18px;" src="../img/option.png"></a>
					<br>
					<div style="text-align: center;">${member.name }</div>
				</div>
				<div class="left_list">
					<ul>
						<c:if test="${member.type == 1 }">
						<li class="list_1st"><a class="on" href="${path }/member/mypage.mall">관심 사업장</a></li>
						<li class="list_2nd"><a href="${path }/trade/BSList.mall">구매 목록</a></li>
						<li class="list_3th"><a href="${path }/board/centerList.mall">고객 센터</a></li>
						</c:if>
						<c:if test="${member.type == 2 }">
						<li class="list_1st"><a class="on" href="${path }/member/mypage.mall">내사업장</a></li>
						<li class="list_2nd"><a href="${path }/trade/BSList.mall">판매 목록</a></li>
						<li class="list_3th"><a href="${path }/board/centerList.mall">고객 센터</a></li>
						</c:if>
						<c:if test="${member.type == 3 }">
						<li class="list_1st"><a class="on" href="${path }/member/mypage.mall">사이트 관리</a></li>
						<li class="list_2nd"><a href="${path }/trade/BSList.mall">회원 거래 목록</a></li>
						<li class="list_3th"><a href="${path }/board/centerList.mall">고객 센터</a></li>
						</c:if>
						<c:if test="${member.id == sana }">
						<li class="list_1st"><a class="on" href="${path }/member/mypage.mall">찌릿찌릿</a></li>
						<li class="list_2nd"><a href="">샤샤샤</a></li>
						<li class="list_3th"><a href="">낙낙!</a></li>
						</c:if>
					</ul>
				</div>
			</div>
			<div class="right_menu pull-right" style="width: calc(100% - 250px); background-color: #f7f8f8; z-index: 20px;" >
					<ul style="width: 100%; display: block; padding: 0;">
						<c:if test="${member.type == 1 }">
							<li class="menu_delv"><a href="${path }/trade/delvpage.mall"><img
									src="../img/truck2_color.png" width="64px" height="64px"><br>배송 정보</a></li>
							<li class="menu_delv"><a href="${path }/trade/couppage.mall"><img
									src="../img/coupon_color.png"><br>보유 쿠폰</a></li>
							<li class="menu_delv"><a href="${path }/member/moneypage.mall"><img
									src="../img/money_color.png"><br>보유 금액</a></li>
							<li class="menu_delv"><a href="${path }/member/talkpage.mall"><img
									src="../img/talk_color.png"><br>구디 톡톡!</a></li>
						</c:if>
						<c:if test="${member.type == 2 }">
							<li class="menu_delv"><a href="${path }/trade/delvpage.mall"><img
									src="../img/truck2_color.png" width="64px" height="64px"><br>배송 관리</a></li>
							<li class="menu_delv"><a href="${path }/trade/couppage.mall"><img
									src="../img/coupon_color.png"><br>쿠폰관리</a></li>
							<li class="menu_delv"><a href="${path }/member/moneypage.mall"><img
									src="../img/money_color.png"><br>보유 금액</a></li>
							<li class="menu_delv"><a href="${path }/member/talkpage.mall"><img
									src="../img/talk_color.png"><br>구디 톡톡!</a></li>
						</c:if>
						<c:if test="${member.type == 3 }">
							<li class="menu_delv"><a href="${path }/member/delvpage.mall"><img
									src="../img/truck2_color.png" width="64px" height="64px"><br>일반회원 관리</a></li>
							<li class="menu_coup"><a href="${path }/trade/couppage.mall"><img
									src="../img/coupon_color.png"><br>사업자회원 관리</a></li>
							<li class="menu_money"><a href="${path }/member/moneypage.mall"><img
									src="../img/money_color.png"><br>보유 금액</a></li>
							<li class="menu_talk"><a href="${path }/member/talkpage.mall"><img
									src="../img/talk_color.png"><br>구디 톡톡!</a></li>
						</c:if>
						<c:if test="${member.id==sana }"> 
							<li class="menu_delv"><a href="delvpage.mall"><img
									src="../img/truck2_color.png" width="64px" height="64px"><br>사나</a></li>
							<li class="menu_coup"><a href="couppage.mall"><img
									src="../img/coupon_color.png"><br>샤샤샤</a></li>
							<li class="menu_money"><a href="moneypage.mall"><img
									src="../img/money_color.png"><br>낙낙!</a></li>
							<li class="menu_talk"><a href="talkpage.mall"><img
									src="../img/talk_color.png"><br>오효오효쨩</a></li>
						</c:if>
					</ul>
				</div>
			<div class="my_right" style="width: calc(100% - 250px);">
				<div class="right_cont">
					<div class="col-xs-12">
					
      <form:form modelAttribute="product" action="productUpdate.mall" enctype="multipart/form-data" name="productForm">
         <table cellpadding="0" cellspacing="0"> 
            <tr align="center" valign="middle">
               <td colspan="2"><h2>상품 등록</h2></td>
            </tr>
            
         <tr> 
         <td>
         <div class="form-group">
         <label for="message-text" class="control-label" style="float: left; vertical-align: bottom;">상품 타입:</label>
         <form:select class="form-control" id="Step1" name='Step1' onchange='changes(value)' path="category" style="margin-left: 15px; margin-right: 5px; width: 90px; float:left; display:inline-block;">
         <option value="육류">육류</option>
         <option value="해산물">해산물</option>
         <option value="과일">과일</option>
         <option value="채소">채소</option>
         <option value="곡류">곡류</option>
         <option value="견과류">견과류</option>
         <option value="조미료">조미료</option></form:select>
         <form:select class="form-control" id="Step2" name='Step2' path="favorite" style="width:135px;">
         <option>----</option>
         </form:select></div></td></tr>
   
         
          <tr> 
               <td>
               <div class="form-group">
                  <label for="message-text" class="control-label">상품 이름:</label>
                  <form:input path="pro_name" class="form-control" style=""/>
                </div>
               </td>
          </tr>     
          
          <tr>
               <td>
                <div class="form-group">
                  <label for="message-text" class="control-label">수량:</label>
                  <form:input type="number" path="cnt" class="form-control" style="width:100px;"/>
                </div>
               </td>
          </tr>  
          
          <tr> 
               <td>
               	<div class="form-group">
                  <label for="message-text" class="control-label">가격:</label>
                  <form:input path="price"  class="form-control" style="width:120px;"/>
                  </div>
               </td>
          </tr>       
          
          
      
           <tr> 
               <td>
               	<label for="message-text" class="control-label">상품 정보:</label>
                <form:textarea path="pro_content" class="form-control" cols="50" rows="15" />
               </td>
          </tr>
          
          
           <tr> 
           		<td>
           		<label for="message-text" class="control-label">상품 메인 이미지:</label>
               	<form:input type="file" path="main_img"/><br>
               </td>
           </tr>
           
           <tr>
              <td>
              <label for="message-text" class="control-label">상품 서브 이미지:</label>
              <form:input type="file"  path="sub_img1"/><br>
              <form:input type="file"  path="sub_img2"/><br>
              <form:input type="file"  path="sub_img3"/><br>
              </td>
             
           </tr>
     
          <tr>
               <td colspan="2" align="center">
               <input type="button" class="btn btn-success" onclick="javascript:document.productForm.submit()" value="등록 하기">
              
               <input type="button"  class="btn btn-default" onclick="javascript:history.go(-1);" value="뒤로 가기">
             </td>
          </tr>
         </table>
      </form:form>
					</div>
				</div>
			</div>
		</div>

		<div class="col-xs-2"></div>
	</div>
</body>
</html>