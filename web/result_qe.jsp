<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ page import="kz.proffix4.jsp.ResultQE" %>
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
            ResultQE result_qe = (ResultQE) request.getAttribute("resultQE");
            if (result_qe == null) {
                out.print("Нет решения!<br/><br/>");
            } else {
                out.println(String.format("x1= %.3f<br/>", result_qe.getX1()));
                out.println(String.format("x2= %.3f<br/>", result_qe.getX2()));
            }
        %>
</html>