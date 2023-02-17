package core;

import java.io.IOException;
import java.util.Collection;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

//표준 파일 업로드 기능을 사용하기 위한 어노테이션
@WebServlet("/part")
@MultipartConfig 
public class PartTestServlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		//Part : 서버로 부터 파일정보를 읽어온다.
		//서버로 부터 Parts를 받아 컬렉션에 담는다.
		Collection<Part> parts = req.getParts(); 
		System.out.println("=============요청 받음================");
		
		//받은 parts를 for each를 이용하여 Part타입의 part에 담아준다.
		for(Part part: parts) {  
			System.out.println("name : ");
			System.out.println(part.getName());
			System.out.println("[ 헤더 정보 ]");
			for(String headName : part.getHeaderNames()) {
				System.out.println(headName + " : ");
				System.out.println(part.getHeader(headName));
			}
			System.out.println("size : ");
			System.out.println(part.getSize());
			System.out.println("-------------------------------------");
		}
	}

}
