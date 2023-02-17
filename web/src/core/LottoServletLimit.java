package core;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/lottolimit")
public class LottoServletLimit extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		// getAttribute는 object 형으로 세션에서 세션에서 name에 맞는 값을 가져온다.
		if (session.getAttribute("lottocnt") == null) {
			// (String name, Object value)
			session.setAttribute("lottocnt", new int[1]);
		}
		// getAttribute로 받는 값은 Object이기 때문에 형변환해준다.
		int[] count = (int[]) session.getAttribute("lottocnt");

		String msg = "";
		if (++count[0] > 3) {
			msg = "<h3>더이상 응모할 수 없습니다.</h3><h3> 브라우저를 재가동하여 응모하세요.</h3>";
		} else {
			int answer = (int) (Math.random() * 10) + 1;
			int input = Integer.parseInt(req.getParameter("guess"));
			if (answer == input) {
				msg = "<h3>축하합니다... 당첨되었어요</h3>";
				count[0] = 4;
			} else {
				msg = "<h3>다음 기회를</h3><a href='/web/servletexam/lotto.html'>재도전</a>";
			}
		}
		resp.setContentType("text/html; charset=utf-8");
		PrintWriter out = resp.getWriter();
		out.print(msg);
		out.close();
	}
	
}
