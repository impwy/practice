package ch09.update;

import java.util.*;
import java.sql.*;
import javax.naming.*;
import javax.sql.*;

import work.crypt.*;

public class UpdateDBBean {
	private static UpdateDBBean instance = new UpdateDBBean();
	
	//오브젝트를 리턴하는 get메서드
	public static UpdateDBBean getInstance() {
		return instance;
	}
	
	//빈 생성자
	private UpdateDBBean() {}
	
	//Connect Pool을 연결하는 메서드 반환 타입은 Connection
	private Connection getConnection() throws Exception{
		Context initCtx = new InitialContext();
		Context envCtx = (Context) initCtx.lookup("java:comp/env");
		DataSource ds = (DataSource) envCtx.lookup("jdbc/myoracle");
		return ds.getConnection();
	}
	
	//member 테이블의 내용을 얻어내며, cryptProcessList.jsp 페이지에서 사용한다.
	//가져온 데이터는 List에 담는다
	public List<UpdateDataBean> getMembers() throws Exception{
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<UpdateDataBean> memberList = null;
		
		int x = 0;
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement("select count(*) from member");
			rs = pstmt.executeQuery();
			
			//DB 테이블의 column 수만큼 증가한다.
			if(rs.next()) x= rs.getInt(1);
			
			pstmt = conn.prepareStatement("select id, passwd from member");
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				memberList = new ArrayList<>(x);
				do {
					UpdateDataBean member = new UpdateDataBean();
					member.setId(rs.getString("id"));
					member.setPasswd(rs.getString("passwd"));
					memberList.add(member);
				}while(rs.next());
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			if(rs != null) try {rs.close();}catch(SQLException e) {}
			if(pstmt != null) try {pstmt.close();}catch(SQLException e) {}
			if(conn != null) try {conn.close();}catch(SQLException e) {}
		}
		return memberList;
	}
	
	//member 테이블의 비밀번호를 일괄적으로 암호화해서 저장하며,
	//cryptProcess.jsp에서 사용
	public void updateMember() {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		//SHA-256을 사용하는 SHA256 클래스의 객체를 얻어낸다.
		SHA256 sha = SHA256.getInsatnce();
		
		try {
			conn = getConnection();
			
			pstmt = conn.prepareStatement("select id, passwd from member");
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				String id = rs.getString("id");
				String orgPass = rs.getString("passwd");
				
				//SHA256클래스의 getSha256()메서드를 사용해
				//원래의 비밀번호를 SHA-256방식으로 암호화
				String shaPass  = sha.getSha256(orgPass.getBytes());
				
				//SHA-256방식으로 암호화된 값을 다시 BCrypt클래스의
				//hashpw()메서드를 사용해 bcrypt방식으로 암호화
				//BCrypt.gensalt() 메서드는 salt값을 난수를 사용해 생성.
				String bcPass = BCrypt.hashpw(shaPass, BCrypt.gensalt());
				
				pstmt = conn.prepareStatement("update member set passwd = ? where id=?");
				
				pstmt.setString(1, bcPass);
				pstmt.setString(2, id);
				pstmt.executeUpdate();
				
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			if(rs != null) try {rs.close();}catch(SQLException e) {}
			if(pstmt != null) try {pstmt.close();}catch(SQLException e) {}
			if(conn != null) try {conn.close();}catch(SQLException e) {}
		}
	}
}
