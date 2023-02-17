<%@page import="java.sql.Timestamp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="style.css"/>
<title></title>
</head>
<body>
<% request.setCharacterEncoding("utf-8"); %>

<jsp:useBean id="registerBean" class="ch05.bean.RegisterBean">
	<jsp:setProperty name="registerBean" property="*" />
</jsp:useBean>
<%
	registerBean.setReg_date(new Timestamp(System.currentTimeMillis()));
	%>
	<table border="1">
	<tr>
		<td>아이디</td>
		<td><jsp:getProperty name="registerBean" property="idt"/> </td>
	</tr>
	<tr>
		<td>비밀번호</td>
		<td><jsp:getProperty name="registerBean" property="passwd"/> </td>
	</tr>
	<tr>
		<td>이름</td>
		<td><jsp:getProperty name="registerBean" property="name"/> </td>
	</tr>
	<tr>
		<td>가입일</td>
		<td><jsp:getProperty name="registerBean" property="reg_date"/> </td>
	</tr>
</table>
</body>
</html>

