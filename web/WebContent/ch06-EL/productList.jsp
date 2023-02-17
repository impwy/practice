<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<div align="center">
	<h2>EL 예제-상품목록</h2>
	<hr />
	<form action="productSel.jsp" name="form1" method="post">
		<jsp:useBean id="product" class="ch06.bean.Product" scope="session">
		</jsp:useBean>
				<select name=sel>
					<%
						for(String item : product.getProductList()){
							out.print("<option>" + item + "</option>");
						}
					%>
				</select>
				<input type="submit" value="선택"/>
	</form>
</div>
</body>
</html>

