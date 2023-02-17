<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:useBean id="login" class="ch05.bean.LoginBean" scope="page">
	<jsp:setProperty name="login" property="*" />
</jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login.jsp</title>
</head>
<body>
<div align="center">
	<h2>로그인 예제</h2>
	<hr />
	<%
		if(!login.checkUser()){
			out.print("로그인 실패!!");
		}else{
			out.print("로그인 성공 !!");
		}
	%>
	
	<hr>
	사용자 아이디 : <jsp:getProperty property="userid" name="login"/><br>
	사용자 패스워드 : <jsp:getProperty property="passwd" name="login"/>
</div>
</body>
</html>

