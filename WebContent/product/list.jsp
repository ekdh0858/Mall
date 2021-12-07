<%@page import="java.time.LocalDateTime"%>
<%@page import="java.util.List"%>
<%@page import="dto.Product"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:useBean id="productDAO" class="dao.Repository" scope="session"/>
<%
	List<Product> listOfProducts = productDAO.getAllproducts();
%>
<%!
	//String greeting = "Welcome to Web Shopping Mall";
	String greeting = "웹 쇼핑몰에 오신것을 환영합니다";
	
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

<%@ include file="../header.jsp" %>

<div class="jumbotron">
	<div class="container">
		<h1 class="display-3"><%=greeting %></h1>
	</div>
</div>
<main role="main">
	<div class="container">
		<div class="row" align="center">
		<%
			for(int i=0; i<listOfProducts.size();i++){
				Product product = listOfProducts.get(i);
			
		%>
			<div class="col-md-4">
			<h3><%= product.getPname() %></h3>
			<p><%= product.getDescription() %></p>
			<p><%= product.getUnitPrice() %>원</p>
			<p><a href="./product.jsp/id=<%=product.getProductId() %>" class="btn btn-secondary" role="buttono">상세정보</a></p>
			</div>
			
		<%
		}
		%>
		</div>
	</div>
</main>


	<%@ include file="../footer.jsp" %>
	
</body>
</html>