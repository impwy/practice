<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<div align="center">
<h2>request 테스트 결과 -1</h2>

<hr />
<table border="1">
<tr>
<td>이름</td>
<td><%=request.getParameter("username") %></td>
</tr>
<tr>
<td>직업</td>
<td><%=request.getParameter("job") %></td>
</tr>
<tr>
<td>관심 분야</td>
<td><%
	//for-each로 checkbox에 찍힌 모든 값을 불러온다.
	String[] favorites = request.getParameterValues("favorite");
	for(String favorite : favorites){
		out.print(favorite+"<br>");
	}
%></td>
</tr>
</table>
<hr>
<h2>request 테스트 결과 -2</h2>
<table>
<tr>
	<td>
		1.클라이언트 IP주소 : <%=request.getRemoteAddr() %><br>
		2.요청 메서드 : <%=request.getMethod() %><br>
		<%
			Cookie cookie[] = request.getCookies();
		%>
		3. <%=cookie[0].getName() %> 에 설정된 쿠키값: <%=cookie[0].getValue() %><br>
		4.프로토콜 : <%=request.getProtocol() %>
	</td>
</tr>
</table>
</div>
</body>
</html>

