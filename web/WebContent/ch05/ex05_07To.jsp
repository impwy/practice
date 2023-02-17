<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	String name = request.getParameter("name");
	String sports = request.getParameter("sports");
%>
<b><%=name %></b> 님이 좋아하는 스포츠는 "<%=sports %>" 입니다.
</body>
</html>

