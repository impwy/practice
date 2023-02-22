<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<style>
	td{
		border-bottom : 1px dotted black;
		padding-right : 20px;
	}
	a {
		text-decoration : none;
	}
</style>
</head>
<body>
<h2>방명록 리스트</h2>
<hr>
<c:choose>
	<c:when test="${ !empty list}">
		<table>
			<c:forEach var="vo" items="${list}">
				<tr>
					<td>${vo.name }</td>
					<td>${vo.writeDate }</td>
					<td>${vo.content }</td>
				</tr>
			</c:forEach>
		</table>
	</c:when>
	<c:otherwise>
		<h2>${msg}</h2>
	</c:otherwise>
</c:choose>
<hr>
<a href="/web/ch09/visitorForm.html">방명록 메인화면</a>
</body>
</html>

