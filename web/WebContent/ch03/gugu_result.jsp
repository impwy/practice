<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<%
int n =Integer.parseInt(request.getParameter("dan"));
for(int i =1; i<=9;i++){
	out.println(n +"x"+ i + "=" + (n*i) +"<br>");
}
%>

</body>
</html>

