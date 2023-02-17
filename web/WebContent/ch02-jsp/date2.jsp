<%@page import="java.time.*"%>
<%@page import="java.sql.Time"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
</head>
<body>
	<%
		while (true) {
				out.print(LocalTime.now());
			try {
				Thread.sleep(1000);
			} catch (Exception e) {
				out.print(e);
			}
		}
	%>
</body>
<script>
	
</script>
</html>

