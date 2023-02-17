package ch05.bean;

public class LoginBean {
	private String userid;
	private String passwd;
	
	//DB로 부터 가져온 아이디와 비밀번호로 가정
	final String _userid = "admin";
	final String _passwd = "1234";
	
	public boolean checkUser() {
		if(userid.equals(_userid)&&passwd.equals(_passwd)) {
			return true;
		}else {
			return false;
		}
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getPasswd() {
		return passwd;
	}

	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}
	
}
