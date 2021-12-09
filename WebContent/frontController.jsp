<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var ="greeting" value="" scope="request"/>

<c:choose>
	<c:when test="${empty param.acvtive or param.active eq 'main' }">
	<!-- 사용자가 메인페이지로접근햇을 때(active파라미터가 main이다) -->
	
	<!-- 특정 페이지의 처리 결과를 현재 페이지에 추가하거나 변수에 저장하는 태그 -->
	<c:import url="preprocessor/main.jsp" ></c:import>
	
	</c:when>
	
	<c:when test="${param.active eq 'product_list' }">
	<!-- 사용자가 상품 목록 페이지로 접근했을 때(active 파라미터가 product_list이다) -->
	<c:import url="preprocessor/product_list.jsp"></c:import>
	</c:when>

	<c:when test="${param.active eq 'product_product' }">
	<!-- 사용자가 상품 정보 페이지로 접근햇을 때 (active의 파라미터가 project_info이다) -->
	<c:import url="preprocessor/product_product.jsp"></c:import>
	</c:when>
	
	<c:when test="${param.active eq 'product_insert' }">
		<!-- 사용자가 상품 등록 페이지로 접근했을 때 -->
				
	</c:when>
</c:choose>
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

<div class="jumbotron">
	<div class="container">
		<!-- 각 페에지에 맞는 greeting을 출력 -->
		<h1 class="display-3">${greeting }</h1>
	</div>
</div>

<main role="main">
	<div class="container">
		<!-- 각 페이지에 맞는 컨텐츠를 출력 -->
		<c:choose>
			<c:when test="${empty param.active or param.active eq 'main' }">
				<%--메인 페이지 인클루드 --%>
				<c:import url="view/main/main.jsp"></c:import>
			</c:when>
			<c:when test="${param.active eq 'product_list' }">
				<%--상품 목록 페이지 인클루드 --%>
				<c:import url="view/product/list.jsp"></c:import>
			</c:when>
			<c:when test="${param.active eq 'product_info' }">
				<%--상품 상세  페이지 인클루드 --%>
				<c:import url="view/product/detail.jsp"></c:import>
			</c:when>
			<c:when test="${param.active eq 'product_insert' }">
				<%--상품 등록  페이지 인클루드 --%>
				<c:import url="view/product/insert.jsp"></c:import>
			</c:when>
			
		</c:choose>
		
	</div>
</main>

<%@ include file="footer.jsp" %>
</body>
</html>