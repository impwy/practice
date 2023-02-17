<%@ tag body-content="empty" language="java" pageEncoding="UTF-8"%>
<%@ tag import = "java.util.Calendar"%>

<%
	Calendar cal = Calendar.getInstance();
%>
<%=cal.get(Calendar.YEAR)%>년
<%=cal.get(Calendar.MONTH)+1%>월 <!-- 월은 0부터 시작이므로 1을 더해준다. -->
<%=cal.get(Calendar.DATE)%>일