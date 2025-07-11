<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%
    request.setCharacterEncoding("UTF-8");
%>
<html>
    <head>
        <title>Решение квадратного уравнения и суммы</title>
    </head>
    <body>
        <form action="Main" method="POST">
            Решение квадратного уравнения и суммы:<br /><br />
            Введите A: <input type="text" name="a" /> <br />
            Введите B: <input type="text" name="b"/> <br />
            Введите C: <input type="text" name="c"/><br /> 
            Введите D: <input type="text" name="d"/><br /> <br /> 
            <input type="submit" name="calcQE" value="Решить квадратное уравнение" /> <br />
            <input type="submit" name="calcSum" value="Найти сумму всех цифр" /> <br />
            <input type="reset" name="clear" value="Очистить" />
        </form>
    </body>
</html>