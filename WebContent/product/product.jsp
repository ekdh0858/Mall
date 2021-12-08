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
		<div class="row" >
			<div class="col-md-6">
				<h3><%=product.getPname() %></h3>
				<p><%=product.getDescription() %></p>
				<p> <b>상품 코드 : </b><span class="badge badge-danger"><%=product.getProductId() %></span></p>
				<p> <b>제조사 : </b> <%=product.getManufacturer() %></p>
				<p> <b>분류 : </b> <%=product.getCategory() %></p>
				<p> <b>재고 수 : </b> <%=product.getUnitsInStock() %></p>
				<h4> <%= product.getUnitPrice() %>원</h4>
				
				<p>
					<a href="#" class="btn btn-info">상품주문 &raquo;</a>
					<a href="./list.jsp" class="btn btn-secsondary">상품주문 &raquo;</a>
				</p>
			</div>
		</div>
	</div>
</main>


<%@ include file="../footer.jsp" %>
	
</body>
</html>