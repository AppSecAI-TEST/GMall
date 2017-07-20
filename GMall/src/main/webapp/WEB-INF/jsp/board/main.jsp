<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/jspHeader.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<style type="text/css">
body {
	background-color: #e9ecef;
}
#category_bar {
	height: 100px;
	background-color: rgba(255, 255, 255, 1);
}
 .c-xs-3 {
	padding: 0px 0px 0px 0px;
}

.fir_line {
	background-color: rgba(255, 255, 255, 1);
	height: 500px;
	margin: 14px 14px 0px 0px;
}

.fir_line_end {
	background-color: rgba(255, 255, 255, 1);
	height: 500px;
	margin: 14px 0px 0px 0px;
}

.sec_line {
	background-color: rgba(255, 255, 255, 1);
	height: 240px;
	margin: 14px 14px 0px 0px;
}

.sec_line_end {
	background-color: rgba(255, 255, 255, 1);
	height: 240px;
	margin: 14px 0px 0px 0px;
}

.thr_line {
	background-color: rgba(255, 255, 255, 1);
	height: 240px;
	margin: 14px 14px 0px 0px;
}

.thr_line_end {
	background-color: rgba(255, 255, 255, 1);
	height: 240px;
	margin: 14px 0px 0px 0px;
}

.for_line {
	background-color: rgba(255, 255, 255, 1);
	height: 240px;
	margin: 14px 14px 14px 0px;
}

.for_line_end {
	background-color: rgba(255, 255, 255, 1);
	height: 240px;
	margin: 14px 0px 14px 0px;
}
</style>
</head>
<body>
<div class="container-fluid">
<div class="row">
<div class="col-xs-12" id="category_bar"></div>
</div>
<div class="row">
	<div class="col-xs-2">&nbsp;</div>
	<div class="col-xs-8" >
         <div>
           <div class="col-xs-3 fir_line">col-xs-3 fir_line</div>
			<div class="col-xs-3 fir_line">col-xs-3 fir_line</div>
			<div class="col-xs-3 fir_line">col-xs-3 fir_line</div>
			<div class="col-xs-3 fir_line_end">col-xs-3 fir_line</div>	
		</div>
         <div>
			<div class="col-xs-3 sec_line">col-xs-3 sec_line</div>
			<div class="col-xs-3 sec_line"></div>
			<div class="col-xs-3 sec_line"></div>
			<div class="col-xs-3 sec_line_end"></div>
		</div>

		<div>
			<div class="col-xs-3 thr_line">col-xs-3 thr_line</div>
			<div class="col-xs-3 thr_line"></div>
			<div class="col-xs-3 thr_line"></div>
			<div class="col-xs-3 thr_line_end"></div>
		</div>

		<div>
			<div class="col-xs-3 for_line">col-xs-3 for_line</div>
			<div class="col-xs-3 for_line"></div>
			<div class="col-xs-3 for_line"></div>
			<div class="col-xs-3 for_line_end"></div>
		</div>
	</div>
	<div class="col-xs-2">&nbsp;</div>
</div>
</div>
</body>
</html>