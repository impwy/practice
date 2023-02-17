<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>application 내장객체</title>

<%
	String info = application.getServerInfo();
	String path = application.getRealPath("/");
	String fileName = request.getRequestURI();
	application.log("My Log : " + fileName+" 에서 작성");
%>

웹 컨테이너 이름과 버전 : <%=info %><p>
웹 어플리케이션 폴더의 로컬 시스템 경로 : <%=path %>
</head>
<body>

</body>
</html>

