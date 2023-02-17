<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<%
int n = Integer.parseInt(request.getParameter("number"));

for(int i = 1; i <= n; i++){
	for(int j = 1; j < i; j++){
		out.print("*");
	}
	out.print("<br>");
}

%>
</body>
</html>

