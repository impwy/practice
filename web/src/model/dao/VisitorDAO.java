package model.dao;
import java.sql.*;
import java.util.*;
import javax.sql.*;
import javax.naming.*;

import model.vo.*;

public class VisitorDAO {
	public ArrayList<VisitorVO> listAll(){
		ArrayList<VisitorVO> result = null;
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		try {
			Context initCtx = new InitialContext();
			Context envCtx = (Context)initCtx.lookup("java:comp/env");
			DataSource ds = (DataSource)envCtx.lookup("jdbc/myoracle");
			
			conn = ds.getConnection();
			stmt = conn.createStatement();
			
			rs = stmt.executeQuery("select name, to_char(writedate, 'yyyy\"년\"mm\"월\"dd\"일\"'),content from visitor");
			
			//ArrayList 생성
			result = new ArrayList<>();
			//VisitorVO 객체 생성
			VisitorVO vo = null;
			
			//DB에서 데이터를 가져와 ArrayList인 result에 값을 담는다.
			while(rs.next()) {
				vo = new VisitorVO();
				vo.setName(rs.getString(1));
				vo.setWriteDate(rs.getString(2));
				vo.setContent(rs.getString(3));
				//DB에서 하나씩 데이터를 가져와 result 리스트에 담는다.
				result.add(vo);
			}
		}catch(Exception e) {
			System.out.println("예외 발생!---"+e);
		}finally {
			try {
				if(rs != null)
					rs.close();
				if(stmt != null)
					stmt.close();
				if(conn != null)
					conn.close();
			}catch(SQLException e) {
				e.printStackTrace();
			}
		}
		//ArrayList를 반환한다.
		return result;
	}
	public boolean insert(VisitorVO vo) {
		boolean result = true;
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			//JDBC로 연결한다.
			Context initCtx = new InitialContext();
			Context envCtx = (Context)initCtx.lookup("java:comp/env");
			DataSource ds = (DataSource)envCtx.lookup("jdbc/myoracle");
			conn = ds.getConnection();
			
			//query로 데이터를 추가한다.
			pstmt = conn.prepareStatement("insert into visitor (name,writedate,content) values(?,sysdate,?)");
			pstmt.setString(1, vo.getName());
			pstmt.setString(2, vo.getContent());
			
			//query결과를 변수 su에 담는다
			int su = pstmt.executeUpdate();
			
			if(su !=1) {
				result = false;
			}
		}catch(Exception e) {
			result = false;
			System.out.println("예외 발생!!--"+e);
		}finally {
			try {
				if(pstmt != null)
					pstmt.close();
				if(conn != null)
					conn.close();
			}catch(SQLException e) {
				e.printStackTrace();
			}	
		}
		//result boolean을 반환한다.
		return result;
	}
}
