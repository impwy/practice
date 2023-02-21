package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/calcServlet")
public class CalcServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int num1 = Integer.parseInt(req.getParameter("num1"));
		String op = req.getParameter("op");
		int num2 = Integer.parseInt(req.getParameter("num2"));
		int result = 0;
		String url = "/view/calcResult.jsp";

		if (op.equals("plus")) {
			result = num1 + num2;
		} else if (op.equals("minus")) {
			result = num1 - num2;
		} else if (op.equals("multiply")) {
			result = num1 * num2;
		} else if (op.equals("division")) {
			if(num2==0) {
				req.setAttribute("msg", "나눗셈 연산 시 두 번째 숫자는 0일 수 없습니다.");
				url = "/view/errorResult.jsp";
				req.getRequestDispatcher(url).forward(req, resp);
				return;
			}else {
				result = num1 / num2;
			}
		}
		
		req.setAttribute("result", result);
		req.getRequestDispatcher(url).forward(req, resp);
	}

}
