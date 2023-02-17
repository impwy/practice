<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<h3>exam07.jsp</h3>
${param.id } / ${param.pwd }
<hr>
<%=request.getParameter("id") %> / <%=request.getParameter("pwd") %>
</body>
</html>

