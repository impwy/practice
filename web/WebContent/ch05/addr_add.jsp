<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="ch05.bean.*" %>

<%request.setCharacterEncoding("utf-8"); %>

<jsp:useBean id="addr" class="ch05.bean.AddrBean">
	<jsp:setProperty name="addr" property="*"/>
</jsp:useBean>
<jsp:useBean id="am" class="ch05.bean.AddrManager" scope="session"></jsp:useBean>

<%
	am.add(addr);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<div align="center">
	<h2>등록내용</h2>
	이름 : <jsp:getProperty property="username" name="addr"/><p>
	전화번호 : <%=addr.getTel() %><p>
	이메일 : <%=addr.getEmail() %><p>
	성별 : <%=addr.getSex() %>
	<hr>
	<a href="addr_list.jsp">목록 보기</a>
</div>
</body>
</html>

