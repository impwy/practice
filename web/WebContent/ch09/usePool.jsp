<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, javax.sql.*, javax.naming.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="style.css"/>
<title></title>
</head>
<body>
<table>
	<tr class="label">
		<td>아이디</td>
		<td>비밀번호</td>
		<td>이름</td>
		<td>가입일자</td>
		<td>주소</td>
		<td>전화번호</td>
	</tr>
	<%
		Connection conn= null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try{
			Context initCtx = new InitialContext();
			//자동으로 연결해준다.
			Context envCtx = (Context)initCtx.lookup("java:comp/env");
			DataSource ds = (DataSource)envCtx.lookup("jdbc/myoracle");
			conn = ds.getConnection();
			
			String sql = "select * from member";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()){
				String id = rs.getString("id");
				String passwd = rs.getString("passwd");
				String name = rs.getString("name");
				Timestamp register = rs.getTimestamp("reg_date");
				String address = rs.getString("address");
				String tel = rs.getString("tel");
%>
				<tr>
				<td><%=id %>
				<td><%=passwd %>
				<td><%=name %>
				<td><%=register %>
				<td><%=address %>
				<td><%=tel %>
				

<%				
				
			}
		}catch(Exception e){
			
		}finally{
			if(rs!=null) try{rs.close();}catch(SQLException e){}
			if(pstmt!=null) try{pstmt.close();}catch(SQLException e){}
			if(conn!=null) try{conn.close();}catch(SQLException e){}
			
		}
	%>
</table>
</body>
</html>

