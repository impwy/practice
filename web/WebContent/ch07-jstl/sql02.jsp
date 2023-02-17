<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<%@page import="java.io.*,java.util.*,java.sql.*" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- sql연결 jstl 라이브러리 -->
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>

<!-- 데이터 베이스에 연결 JDBC -->
<sql:setDataSource var="myoracle2" 
									driver="oracle.jdbc.OracleDriver"
									url="jdbc:oracle:thin:@127.0.0.1:1521:xe"
									user="exdb"
									password="12345"></sql:setDataSource>

<!-- 쿼리문  -->
<sql:query var="result" dataSource="${myoracle2}">
	select * from student
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
		<th>학번</th>
		<th>이름</th>
		<th>학과</th>
	</tr>
	
	<!-- DB table의 row를 가져와 변수 row에 저장 -->
	<!-- forEach문으로 자료를 다 꺼낸다 -->
	<c:forEach var="row" items="${result.rows}">
		<tr>
			<td><c:out value="${row.stu_no}"/></td>
			<td><c:out value="${row.stu_name}"/></td>
			<td><c:out value="${row.stu_dept}"/></td>
		</tr>
	</c:forEach>
	
</table>
</body>
</html>

