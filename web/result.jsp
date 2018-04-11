<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ page import="kz.proffix4.jsp.ResultForm" %>
<%
	request.setCharacterEncoding("UTF-8");
%>
<html>
<head>
<title>Решение квадратного уравнения</title>
</head>
<body>
<a href="Main">Назад</a><br/><br/>
	Решение квадратного уравнения:<br/>
	<%
	ResultForm form = (ResultForm)request.getAttribute("form");

	if (form==null) { out.print("Нет решения!<br/><br/>"); }
	else {
		out.println(String.format("x1= %.3f<br/>",form.getX1()));
		out.println(String.format("x2= %.3f<br/>",form.getX2()));
	}
%>
</html>