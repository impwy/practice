package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.dao.VisitorDAO;
import model.vo.VisitorVO;

//form action에 visitor로 요청이 들어오게 만든다.
@WebServlet("/visitor")
public class VisitorServlet extends HttpServlet{
	
	//GET 요청으로 들어왔을때 실행한다.
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String selectedView = "/view/visitorView.jsp";
	
		VisitorDAO dao = new VisitorDAO();
		ArrayList<VisitorVO> list = dao.listAll();
		if(list != null && list.size() >0) {
			req.setAttribute("list", list);
		}else {
			req.setAttribute("msg", "방명록에 저장된 글이 없습니다.");
		}
		//로직이 끝나면 visitorView.jsp파일로 forward 시킨다.
		req.getRequestDispatcher(selectedView).forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String insertView = "/view/visitorView.jsp";
		
		req.setCharacterEncoding("utf-8");
		String name = req.getParameter("name");
		String content = req.getParameter("content");
		
		VisitorVO vo = new VisitorVO();
		vo.setName(name);
		vo.setContent(content);
		VisitorDAO dao = new VisitorDAO();
		boolean result = dao.insert(vo);
		
		if(result) {
			req.setAttribute("msg", name + "님의 글이 성공적으로 저장되었습니다.!");
		}else {
			req.setAttribute("msg", name + "님의 글 저장에 실패하였습니다.");
		}
		req.getRequestDispatcher(insertView).forward(req, resp);;
	}
	
}
