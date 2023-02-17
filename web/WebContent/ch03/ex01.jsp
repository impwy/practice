<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 결과</title>
</head>
<body>
<h2>로그인 결과</h2>
<%
String id = request.getParameter("id");
String passwd = request.getParameter("password");

if(id.equals("abc") && passwd.equals("abc")){
%>
로그인 성공
<%}else{%>
로그인 실패
<%}%>
</body>
</html>

