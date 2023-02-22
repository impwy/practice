package jspbook.addrbook;

import java.sql.*;
import java.util.*;

public class AddrBean {

	private AddrBean() {
	}

	// JDBC 드라이버 변수 설정
	Connection conn = null;
	PreparedStatement pstmt = null;

	String jdbc_driver = "oracle.jdbc.driver.OracleDriver";
	String jdbc_url = "jdbc:oracle:thin:@localhost:1521:xe";

	// JDBC Driver 연결 로직
	void connect() {
		try {
			Class.forName(jdbc_driver);

			conn = DriverManager.getConnection(jdbc_url);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	//데이터 처리가 끝나면 Connection,PreparedStatement를
	//닫아주어 메모리를 재할당한다.
	void disconnect() {
		if (pstmt != null) {
			try {
				pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if (conn != null) {
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	//query update 메서드 만들기
	 public boolean updateDB(AddrBook addrbook) {
		 //db연결
		 connect();
		 
		 //update문
		 String sql = "update addrbook set ab_name=?, ab_email=?, ab_birth=?, ab_tel=?," +
		 " ab_comdept=?, ab_memo=? where ab_id=?";
		 
		 try {
			 //?자리에 VO에 있는 값을 넣어준다.
			 pstmt = conn.prepareStatement(sql);
			 pstmt.setString(1, addrbook.getAb_name());
			 pstmt.setString(2, addrbook.getAb_email());
			 pstmt.setString(3, addrbook.getAb_birth());
			 pstmt.setString(4, addrbook.getAb_tel());
			 pstmt.setString(5, addrbook.getAb_comdept());
			 pstmt.setString(6, addrbook.getAb_memo());
			 pstmt.setInt(7, addrbook.getAb_id());
			 pstmt.executeUpdate();
		 
		 }catch(SQLException e) {
			 e.printStackTrace();
			 //연결에 실패하면 false리턴
			 return false;
		 }finally {
			 //실행이 끝나면 DB연결을 해제해준다.
			 disconnect();
		 }
		 //실행에 성공하면 true 리턴
		 return true;
	 }
	 
	 //DB 데이터 삭제 query
	 public boolean deleteDB(int gb_id) {
		 connect();
		 
		 String sql = "delete from addrbook where ab_id=?";
		 
		 try {
			 //입력한 id의 데이터를 삭제한다.
			 pstmt = conn.prepareStatement(sql);
			 pstmt.setInt(1, gb_id);
			 pstmt.executeUpdate();
		 }catch(SQLException e) {
			 e.printStackTrace();
			 return false;
		 }finally {
			 disconnect();
		 }
		 return true;
	 }
	 
	 public boolean insertDB(AddrBook addrbook) {
		 connect();
		 
		 String sql = "insert into addrbook(ab_id, ab_name, ab_email, ab_birth, ab_tel, ab_comdept, ab_memo)"+
		 " values(ab_seq.nextval,?,?,?,?,?,?)";
		 
		 try {
			 pstmt = conn.prepareStatement(sql);
			 pstmt.setString(1, addrbook.getAb_name());
			 pstmt.setString(2, addrbook.getAb_email());
			 pstmt.setString(3, addrbook.getAb_birth());
			 pstmt.setString(4, addrbook.getAb_tel());
			 pstmt.setString(5, addrbook.getAb_comdept());
			 pstmt.setString(6, addrbook.getAb_memo());
			 pstmt.executeUpdate();
		 }catch(SQLException e) {
			 e.printStackTrace();
			 return false;
		 }finally {
			disconnect(); 
		 }
		 return true;
	 }
	 
	 public AddrBook getDB(int gb_id) {
		 connect();
		 
		 String sql = "select * from addrbook where ab_id=?";
		 AddrBook addrbook = new AddrBook();
		 try {
			 pstmt = conn.prepareStatement(sql);
			 pstmt.setInt(1,gb_id);
			 ResultSet rs = pstmt.executeQuery();
			 
			 rs.next();
			 addrbook.setAb_id(rs.getInt("ab_id"));
			 addrbook.setAb_name(rs.getString("ab_name"));
			 addrbook.setAb_email(rs.getString("ab_email"));
			 addrbook.setAb_birth(rs.getString("ab_birth"));
			 addrbook.setAb_tel(rs.getString("ab_tel"));
			 addrbook.setAb_comdept(rs.getString("ab_comdept"));
			 addrbook.setAb_memo(rs.getString("ab_memo"));
			 rs.close();
			 
		 }catch(SQLException e) {
			 e.printStackTrace();
		 }finally {
			 disconnect();
		 }
		return addrbook;
	 }
	 
	 public ArrayList<AddrBook> getDBList(){
		 connect();
		 ArrayList<AddrBook> datas = new ArrayList<>();
		 
		 String sql = "select * from addrbook order by ab_id desc";
		 try {
			 
			 pstmt = conn.prepareStatement(sql);
			 
			 ResultSet rs = pstmt.executeQuery();
			
			 while(rs.next()) {
				 AddrBook addrbook = new AddrBook();
				 addrbook.setAb_id(rs.getInt("ab_id"));
				 addrbook.setAb_name(rs.getString("ab_name"));
				 addrbook.setAb_email(rs.getString("ab_email"));
				 addrbook.setAb_comdept(rs.getString("ab_comdept"));
				 addrbook.setAb_birth(rs.getString("ab_birth"));
				 addrbook.setAb_tel(rs.getString("ab_tel"));
				 addrbook.setAb_memo(rs.getString("ab_memo"));
				 datas.add(addrbook);
			 }
			 
		 }catch(SQLException e) {
			 e.printStackTrace();
		 }finally {
			 disconnect();
		 }
		 	return datas;
	 }
	
}
