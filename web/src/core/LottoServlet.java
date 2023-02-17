package core;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lotto")
public class LottoServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int answer = (int)(Math.random()*10)+1; //1부터 10까지	
		int input = Integer.parseInt(req.getParameter("guess"));
		
		String msg = "";
		if(answer == input) {
			msg = "<h3>축하합니다... 당첨되었어요!</h3>";
		}else {
			msg = "<h3>다음 기회에...</h3><a href='"+req.getHeader("referer")+"'>재도전</a>";
		}
		resp.setContentType("text/html; charset=utf-8");
		PrintWriter out = resp.getWriter();
		out.print(msg);
		out.close();
	}
}
