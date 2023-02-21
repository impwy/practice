<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="style.css">
<title>Select Query</title>
</head>
<body>
<h1>Select Query</h1>

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
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs =null;
		
		try{
			//jdbc 연결
			String jdbcUrl = "jdbc:oracle:thin:@localhost:1521:xe";
			String dbId = "mvcdb";
			String dbPass = "12345";
			
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection(jdbcUrl,dbId,dbPass);
			
			// sql select query문
			String sql = "select * from member";
			pstmt = conn.prepareStatement(sql);
			
			//sql 데이터 가져오기
			rs = pstmt.executeQuery();
			
			//반복문으로 전부 가져온다.
			while(rs.next()){
				String id = rs.getString("id");
				String passwd = rs.getString("passwd");
				String name = rs.getString("name");
				Timestamp register = rs.getTimestamp("reg_date");
				String address = rs.getString("address");
				String tel = rs.getString("tel");
%>
			<!-- 가져온 데이터를 td에 넣어준다. -->
			<tr>
				<td><%=id %></td>
				<td><%=passwd %></td>
				<td><%=name %></td>
				<td><%=register.toString() %></td>
				<td><%=address %></td>
				<td><%=tel %></td>
<% } %>

<%
			
		}catch(Exception e){
			e.printStackTrace();	
		}finally{
			if( rs != null)
				try{rs.close();}catch(SQLException e){}
			if(pstmt != null)
				try{pstmt.close();}catch(SQLException e){}
			if(conn != null)
				try{conn.close();}catch(SQLException e){}
		}
%>	
</table>
</body>
</html>

