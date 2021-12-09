<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalDateTime"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="greeting" value="웹 쇼핑몰에 오신 것을 환영합니다" scope="request"/>
<c:set var ="tagline" value="Welcome to web Market!" scope="request"/>




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

<c:set var="currentTime" value="<%= CT%>" scope="request"/>