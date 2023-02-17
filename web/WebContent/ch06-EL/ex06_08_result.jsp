<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<p>1.JSP 방식</p>
이름 : <%= request.getParameter("id") %><br>
비밀번호 : <%= request.getParameter("pwd") %><br>
<hr>

<p>2.EL 방식</p>
이름 : ${param.id }<br>
비밀번호 : ${param.pwd }<br>
</body>
</html>

