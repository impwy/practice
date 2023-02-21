<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JDBC && JSP</title>
</head>
<body>

<!-- JDBC를 연결하고 JSP를 이용하여 DB에 데이터 저장하기 -->
<%
	String idt = request.getParameter("idt");
	String passwd = request.getParameter("passwd");
	String name = request.getParameter("name");
	String addr = request.getParameter("addr");
	String tel = request.getParameter("tel");
	Timestamp register = new Timestamp(System.currentTimeMillis());
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	String str = "";
	try{
		//JDBC와 연결한다.
		String jdbcUrl = "jdbc:oracle:thin:@localhost:1521:xe";
		String dbId = "mvcdb";
		String dbPass = "12345";
		Class.forName("oracle.jdbc.driver.OracleDriver");
		conn = DriverManager.getConnection(jdbcUrl,dbId,dbPass);
		
		//sql쿼리로 값을 넣어준다. 각 ?에 순서에 맞춰 데이터가 들어간다.
		String sql = "insert into member values (?,?,?,?,?,?)";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, idt);
		pstmt.setString(2, passwd);
		pstmt.setString(3, name);
		pstmt.setTimestamp(4, register);
		pstmt.setString(5, addr);
		pstmt.setString(6, tel);
		pstmt.executeUpdate();
		
		out.println("member 테이블에 새로운 레코드를 추가했습니다.");
	
	}catch(Exception e){
		//연결에 실패하면 오류를 보낸다.
		e.printStackTrace();
		out.print("member 테이블에 새로운 레코드를 추가에 실패했습니다.");
	
	}finally{
		//로직이 끝나면 연결을다 닫아준다.
		if(pstmt != null)
			try{pstmt.close();}catch(SQLException sqle){}
		if(conn != null)
			try{conn.close();}catch(SQLException sqle){}
	}
%>
</body>
</html>

