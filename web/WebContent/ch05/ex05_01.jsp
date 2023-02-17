<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Forward 사용</title>
</head>
<body>
<%
	if(request.getParameter("type")==null || request.getParameter("type").equals("admin")){
%>
<jsp:forward page="adminPage.jsp">
<jsp:param name="message" value="Hi! Adiministrator" />
</jsp:forward>
<%} else { %>
<jsp:forward page="userPage.jsp">
<jsp:param value="Hi! User!" name="message"/>
</jsp:forward>
<%} %>
</body>
</html>

