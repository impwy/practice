<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="ch06.bean.BookBean" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<% BookBean book = new BookBean(); %>
<c:set target="<%=book %>" property="title" value="The Secret"/>
<%=book.getTitle() %> <br>

<c:set var="b" value="<%=book %>"/>
<c:set target="${b }" property="author" value="Byrne, Rhonad"/>
${b.author}
</body>
</html>

