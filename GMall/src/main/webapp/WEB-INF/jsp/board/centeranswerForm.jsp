<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/jspHeader.jsp" %>      
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>고객센터 답변</title>
<style type="text/css">
a
{
  color : black;
}  
</style>
</head>
<body>
<div class="container-fluid" style="padding-left: 0px; padding-right: 0px;">
  <div class="col-xs-2"></div>
    <div class="col-xs-8 info_content">
<form:form modelAttribute="board" action="centeranswer.mall?pageNum=${pageNum}" enctype="multipart/form-data" name="answerform">
	<form:hidden path="board_no" />
	<form:hidden path="id" />
	<table class="table table-hover" style="border-bottom: 1px solid #e5e5e5; width:800px;" align="center">
	  <tr><td colspan="2" align="center"><h2>고객센터 답변</h2></td></tr>
	  <tr><td>제목</td>
	      <td><form:input path="subject" />
	      <font color="red"><form:errors path="subject"/></font></td>
      </tr>
      <tr><td>내용</td>
	      <td><form:textarea path="content" cols="67" rows="15"/>
	      <font color="red"><form:errors path="content"/></font></td>
      </tr>
      <tr>
        <td colspan="2" align="center">
          <button class="btn btn-default"><a href="javascript:document.answerform.submit()">답변</button>
          <button class="btn btn-default"><a href="centeraddeForm.mall?num=${board.board_no}&pageNum=${param.pageNum}">삭제</button>
          <button class="btn btn-default" onclick="location href='centerList.mall?pageNum=${param.pageNum}'">목록</button>        
        </td>
      </tr>                  	 
	</table>  
</form:form>
  </div>
  <div class="col-xs-2"></div>
</div>
</body>
</html>