<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="ch09.update.*, java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="style.css">
<title></title>
</head>
<body>
<h3>암호화 전 내용</h3>
<jsp:include page="cryptProcessList.jsp" flush="false"/>

<%
	UpdateDBBean dbPro = UpdateDBBean.getInstance();
    dbPro.updateMember();
%>

<h3>암호화 적용된 후 내용</h3>
<jsp:include page="cryptProcessList.jsp" flush="false"/>
</body>
</html>

