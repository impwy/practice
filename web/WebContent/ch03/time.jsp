<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스크립팅 예제</title>
</head>
<body>
<%
String name = request.getParameter("name");
java.time.LocalTime it = java.time.LocalTime.now();
%>
<h3>Hello <%=name ==null ? "Guest" : name%>!
방문 시간 : <%=it.getHour()+"시"+it.getMinute() + "분" + it.getSecond()+"초" %>
</h3>
</body>
</html>

