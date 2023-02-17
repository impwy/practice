package ch05.bean;

import java.util.ArrayList;
import java.util.List;

//주소록 목록 DB 가정
public class AddrManager {
	
	//주소 목록을 저장하기 위한 ArrayList
	List<AddrBean> addrlist = new ArrayList<AddrBean>();
	
	//주소록에 추가하는 메서드
	public void add(AddrBean ab) {
		addrlist.add(ab);
	}
	
	//주소록 목록을 전달하는 메서드
	public List<AddrBean> getAddrList(){
		return addrlist;
	}
	
}
