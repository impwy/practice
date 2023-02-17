<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>반복수행</title>
</head>
<body>
<h2>입력한 숫자만큼 반복수행</h2>
<table border="1">
	<tr>
	<th>글번호</th>
	<th>글제목</th>
	<th>글내용</th>
	</tr>
	<%
	int num = Integer.parseInt(request.getParameter("num"));
	while(num>0){
	%>
		<tr>
		<td><%=num-- %></td>
		<td><%="제목 " + (num+1) %></td>
		<td><%="내용" + (num+1) %></td>
		</tr>
	<%} %>
</table>
</body>
</html>

