<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<div>
	<h2>계산</h2>
	선택한 상품 목록
	<hr>
	<%
		ArrayList<String> list = (ArrayList)session.getAttribute("productlist");
	if(list == null){
		out.print("선택한 상품이 없습니다");
	}else{
		for(Object productname : list){
			out.print(productname + "<br>");
		}
	}
	%>
</div>
</body>
</html>

