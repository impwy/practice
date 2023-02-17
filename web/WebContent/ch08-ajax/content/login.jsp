<%@ page language="java" contentType="application/json; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	if(request.getParameter("id").equals("ajax")&&
			request.getParameter("passwd").equals("12345")){
%>
{
"result" : "ok"
}
<%
}else{
%>
{
"result" : "fail"
}
<%
}
%>

