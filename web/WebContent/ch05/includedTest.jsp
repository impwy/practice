<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<% String name = request.getParameter("name"); %>
포함되는 페이지 includedTest.jsp 입니다.<p>
<b><%=name %>님 오셨군요</b>
<hr>
</body>
</html>

