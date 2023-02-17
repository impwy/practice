<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@page import="java.io.*,java.util.*,java.sql.*" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>

<sql:setDataSource var="myoracle2" 
									driver="oracle.jdbc.OracleDriver"
									url="jdbc:oracle:thin:@127.0.0.1:1521:xe"
									user="exdb"
									password="12345"></sql:setDataSource>

<sql:query var="result" dataSource="${myoracle2}">
	select * from dept
</sql:query>									
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<table border="1">
	<tr>
		<th>DEPNO</th>
		<th>DNAME</th>
		<th>Location</th>
	</tr>
	<tr>
		<c:forEach var="row" items="${result.rows}">
		<tr>
			<td><c:out value="${row.deptno}"/></td>
			<td><c:out value="${row.dname}"/></td>
			<td><c:out value="${row.loc}"/></td>
		</tr>
		</c:forEach>
	</tr>
</table>
</body>
</html>

