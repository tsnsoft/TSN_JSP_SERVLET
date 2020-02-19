<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%
    request.setCharacterEncoding("UTF-8");
%>
<html>
    <head>
        <title>Сумма всех цифр</title>
    </head>
    <body>
        <a href="Main">Назад</a><br/><br/>
        Сумма всех цифр:<br/>
        <%
            double sum = (double) request.getAttribute("sum");
            out.println(String.format("sum= %.3f<br/>", sum));
        %>
</html>