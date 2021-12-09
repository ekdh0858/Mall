<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%-- 상품 등록 페이지는 아무나 접근하면 안되고 권한이 있는 사용자 / 즉, 관리자만 접근할 수 있어야 한다. --%>
<%-- 관리자다 아니다 를 구분하기 위해서 IP주소를 활용을 할 수 있음 --%>
<%-- 이 페이지에 접근한 사용자의 IP를 알 수 있는 방법 request.getRemoteAddr()--%>
<%-- 내 컴퓨터의 아이피로 접근했을 때는 상품 등록 버튼이 보이도록 처리 --%>
<%
	String userIP = request.getRemoteAddr();
	boolean isAdmin = userIP.equals("192.168.10.11");
	
	String currentURI = request.getRequestURI();
	System.out.println("CurrentURI ="+currentURI);
	
	Map<String, String> activeMap = new HashMap<>();
	activeMap.put("main","/");
	activeMap.put("productlist","product_list");
	// 상품 목록 페이지 또는 상품 정보 페이지로 들어갔을 때 상품 목록 버튼을 활성화 하기 위한 URI
	activeMap.put("productInfo","product_info");
	
	if(isAdmin){
		activeMap.put("productInsert","product_insert");
	}	
	
	boolean isMain = activeMap.get("main").equals(currentURI);
	boolean isProductList = activeMap.get("productlist").equals(currentURI);
	boolean isProductInfo = activeMap.get("productInfo").equals(currentURI);
	
	boolean isProductInsert=false;
	
	
	if(isAdmin){
		isProductInsert = activeMap.get("productInsert").equals(currentURI);
	}
	String[] menuBtnList = {
			"<li {here}> <a href=\"http://mall.com/frontController.jsp?active=main\">Home</a></li>",
			"<li {here}> <a href=\"http://mall.com/frontController.jsp?active=product_list\">상품목록</a></li>",
			""
	};
	
	if(isAdmin){
		menuBtnList[2] = "<li {here}> <a href=\"http://mall.com/frontController.jsp?active=product_insert\">상품등록</a></li>";
	}
	
	if(isMain){
		menuBtnList[0] = menuBtnList[0].replace("{here}","class=\"active\"");
		menuBtnList[1] = menuBtnList[1].replace("{here}","");
		menuBtnList[2] = menuBtnList[2].replace("{here}","");
	} else if(isProductList || isProductInfo){
		menuBtnList[0] = menuBtnList[0].replace("{here}","");
		menuBtnList[1] = menuBtnList[1].replace("{here}","class=\"active\"");
		menuBtnList[2] = menuBtnList[2].replace("{here}","");
	} else if(isProductInsert){
		menuBtnList[0] = menuBtnList[0].replace("{here}","");
		menuBtnList[1] = menuBtnList[1].replace("{here}","");
		menuBtnList[2] = menuBtnList[2].replace("{here}","class=\"active\"");
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