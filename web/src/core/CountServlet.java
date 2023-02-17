package core;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/CountServlet")
public class CountServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html; charset=utf-8");
		PrintWriter out = resp.getWriter();
		HttpSession session = req.getSession();
		if(session.getAttribute("cnt") == null) {  //getAttribute로 가져온다
			session.setAttribute("cnt", new int[1]); //setAttribute로 값 셋팅
		}
		int[] count = (int[])session.getAttribute("cnt");
		count[0]++;
		out.print("<h3>당신은"+count[0] + "번째 방문입니다.</h3>");
		out.close();
	}

}
