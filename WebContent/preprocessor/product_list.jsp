<%@page import="dto.Product"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:useBean id="productDAO" class="dao.Repository" scope="session"/><%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="greeting" value="상품 목록"/>
<%
	List<Product> listOfProducts = productDAO.getAllproducts();
%>
