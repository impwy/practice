package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.vo.MemberVO;
import model.service.EncDecService;

@WebServlet("/memberServlet")
public class MemberServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String url = "/view/memberView.jsp";
		req.setCharacterEncoding("utf-8");
		
		//Model에 데이터 저장 getter setter사용
		MemberVO mvo = new MemberVO();
		mvo.setName(req.getParameter("name"));
		mvo.setPhoneNum(req.getParameter("phonenumber"));
		mvo.setId(req.getParameter("id"));
		String pwd = req.getParameter("passwd");
		
		//암호화 작업
		String encPwd = EncDecService.encrypt(pwd);
		mvo.setPasswd(encPwd);
		req.setAttribute("membervo", mvo);
		req.getRequestDispatcher(url).forward(req, resp);
	}
	
}
