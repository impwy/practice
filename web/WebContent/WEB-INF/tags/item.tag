<%@ tag body-content="scriptless" language="java" pageEncoding="UTF-8"%>

<%@ attribute name="bgcolor" %>
<%@ attribute name="border" %>

<jsp:useBean id="product" class="ch06.bean.Product"/>

<h2><jsp:doBody/></h2>
<table border="${border}" bgcolor="${bgcolor}" width="150">
	<%
		for(String item : product.getProductList()){
			out.print("<tr><td>" + item+ "</td></tr>");
		}
	%>
</table>