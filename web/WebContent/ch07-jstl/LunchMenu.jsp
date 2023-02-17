<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<%
	String[] arr = {"불고기 백반", "콩국수", "오므라이스"};
	request.setAttribute("MENU", arr);
%>
<jsp:forward page="LunchMenuView.jsp"></jsp:forward>
</body>
</html>

