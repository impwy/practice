package core;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet({"/queryget","/querypost"})
public class QueryServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html;charset=utf-8");
		PrintWriter out = resp.getWriter();
		String userName = req.getParameter("guestName");
		int number = Integer.parseInt(req.getParameter("num"));
		out.print("<h2>요청 방식 : " + req.getMethod()+"</h2>");
		out.print("<h2>요청 URL : " + req.getRequestURI()+"</h2>");
		out.print("<h2>당신의 이름은 " + userName+" 이군요!</h2>");
		out.print("<h2>당신이 좋아하는 숫자는 " + number+" 이군요!</h2>");
		out.print("<a href='"+req.getHeader("referer")+"'>입력화면으로 가기</a>");
		out.close();
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		doGet(req,resp);
	}
	
}
