<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<h2>config 내장객체</h2>
<%
String name = config.getServletName();
%>

현재 페이지의 서블릿 객체 : <%=name %>
</body>
</html>

