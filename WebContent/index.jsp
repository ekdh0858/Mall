<%@page import="java.time.LocalDateTime"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%!
	//String greeting = "Welcome to Web Shopping Mall";
	String greeting = "웹 쇼핑몰에 오신것을 환영합니다";
	String tagline = "Welcome to Web Market";
%>

<% //집에서 형식화 해보기
	LocalDateTime ldt = LocalDateTime.now();
	String am_pm;
	int hour = ldt.getHour();
	int minute = ldt.getMinute();
	String s_minute=(minute <10 ? "0" : "") + minute;
	
	int second = ldt.getSecond();
	String s_second = (second <10 ? "0" : "") + second;
	
	if((hour/12)==0){
		am_pm="AM";
	}else{
		am_pm="PM";
		hour = hour-12;
	}
	
	String CT = hour+":"+s_minute+":"+s_second+" "+am_pm;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Mall</title>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</head>
<body>

<%@ include file="header.jsp" %>
<nav class="navbar navbar-fixed-top navbar-inverse">
	<div class="container">
		<div id="nav" class="collapse navbar-collapse">
			<ul class="nav navbar-nav">
				<li class="active"><a href="./index.jsp">Home</a></li>
			</ul>
		</div>
	</div>
</nav>

<div class="jumbotron">
	<div class="container">
		<h1 class="display-3"><%=greeting %></h1>
	</div>
</div>

	<%@ include file="footer.jsp" %>
	<footer class="container">
	<p>&copy; WebMarket</p>
	</footer>
</body>
</html>