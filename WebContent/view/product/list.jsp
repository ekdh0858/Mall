<%@page import="dto.Product"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<jsp:useBean id="productDAO" class="dao.Repository" scope="session"/><%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="row" align="center">

<%
	List<Product> listOfProducts = productDAO.getAllproducts();
%>

<%
for(int i=0; i<listOfProducts.size();i++){
	Product product = listOfProducts.get(i);
			
%>
	<div class="col-md-4">
		<h3><%= product.getPname() %></h3>
		<p><%= product.getDescription() %></p>
		<p><%= product.getUnitPrice() %>원</p>
		<p><a href="frontController.jsp?active=product_info&id=<%=product.getProductId() %>" class="btn btn-secondary" role="button">상세정보</a></p>
	</div>
			
<%
}
%>
</div>