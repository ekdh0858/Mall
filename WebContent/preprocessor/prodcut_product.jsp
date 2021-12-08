<%@page import="dto.Product"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:useBean id="productDAO" class="dao.Repository" scope="session"/>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="greeting" value="상품 정보"/>
<%
	String id = request.getParameter("id");
	Product product = productDAO.getProductById(id);
%>

