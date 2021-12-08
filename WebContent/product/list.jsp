<%@page import="dto.Product"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>



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
			<p><a href="./product.jsp?id=<%=product.getProductId() %>" class="btn btn-secondary" role="button">상세정보</a></p>
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