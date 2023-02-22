<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="ch09.update.*, java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="style.css">
<title></title>
</head>
<body>
<%
	List<UpdateDataBean> memberList = null;
	UpdateDBBean dbPro = UpdateDBBean.getInstance();
	memberList = dbPro.getMembers();
%>
<table>
	<tr class="label">
		<td>아이디</td>
		<td>비밀번호</td>
	</tr>
<%
	for(int i=0; i< memberList.size(); i++){
		UpdateDataBean member = (UpdateDataBean)memberList.get(i);
		String id = member.getId();
		String passwd = member.getPasswd();
%>
		<tr>
		<td><%=id %></td>
		<td><%=passwd %></td>
		</tr>
<%} %>
</table>
</body>
</html>

