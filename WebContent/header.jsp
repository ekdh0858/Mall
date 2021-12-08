<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
	String currentURI = request.getRequestURI();
	System.out.println("CurrentURI ="+currentURI);
	
	Map<String, String> activeMap = new HashMap<>();
	activeMap.put("main","/");
	activeMap.put("productlist","product_list");
	// 상품 목록 페이지 또는 상품 정보 페이지로 들어갔을 때 상품 목록 버튼을 활성화 하기 위한 URI
	activeMap.put("productInfo","product-info");
	
	boolean isMain = activeMap.get("main").equals(currentURI);
	boolean isProductList = activeMap.get("productlist").equals(currentURI);
	boolean isProductInfo = activeMap.get("productInfo").equals(currentURI);
	
	String[] menuBtnList = {
			"<li {here}> <a href=\"http://mall.com?active=main\">Home</a></li>",
			"<li {here}> <a href=\"http://mall.com?active=product_list\">상품목록</a></li>"
	};
	
	if(isMain){
		menuBtnList[0] = menuBtnList[0].replace("{here}","class=\"active\"");
		menuBtnList[1] = menuBtnList[1].replace("{here}","");
	} else if(isProductList || isProductInfo){
		menuBtnList[0] = menuBtnList[0].replace("{here}","");
		menuBtnList[1] = menuBtnList[1].replace("{here}","class=\"active\"");
	}
%>

<nav class="navbar navbar-fixed-top navbar-inverse">
	<div class="container">
		<div id="nav" class="collapse navbar-collapse">
			<ul class="nav navbar-nav">
<%
	for(String menuBtn : menuBtnList){
		out.print(menuBtn);
	}
%>			
			</ul>
		</div>
	</div>
</nav>