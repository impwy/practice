<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<%
	String sports = "eSports";
	String name = "홍길동";
%>
<jsp:forward page="ex05_07To.jsp">
		<jsp:param value="<%=name %>" name="name"/>
		<jsp:param value="<%=sports %>" name="sports"/>
</jsp:forward>
</body>
</html>

