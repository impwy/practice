<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
	img{
		border : 0;
		width : 70px;
		height : 30;
	}
</style>
<title></title>
</head>
<body>
<%
	String name = request.getParameter("name");
	String selectedColor = request.getParameter("selectedColor");
%>
<h2>포워딩 되는 페이지 - <%=selectedColor + ".jsp" %></h2>
<b><%=name %></b>님의 좋아하는 색은 <%=selectedColor %>이고
자기탐구와 내적성장을 상징하는 색입니다.<br>
<img alt="" src="images/<%=selectedColor + ".jpg"%>">
</body>
</html>

