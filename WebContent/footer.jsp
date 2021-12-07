<%@page import="java.time.LocalDateTime"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%!
	String tagline = "Welcome to Web Market";
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
<main role="main">
	<div class="container">
		<div class="text=center">
			<h3><%= tagline %></h3>
			<p>현재 접속 시간 <%= CT %></p>
		</div>
	</div>
</main>
<footer class="container">
	<p>&copy; WebMarket</p>
</footer>