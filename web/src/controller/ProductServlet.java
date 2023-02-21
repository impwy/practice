package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.vo.ProductVO;

@WebServlet("/productServlet")
public class ProductServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		String pid = req.getParameter("pid");
		if(session.getAttribute("countnum")==null) {
			session.setAttribute("countnum",new ProductVO());
		}
		ProductVO pvo = (ProductVO)session.getAttribute("countnum");
		if(pid.equals("p001")) {
			pvo.setApple(1);
		}else if(pid.equals("p002")) {
			pvo.setBanana(1);
		}else if(pid.equals("p003")) {
			pvo.setHallabong(1);
		}else {
			session.removeAttribute("countnum");
		}
		req.getRequestDispatcher("/view/productView.jsp").forward(req, resp);
	}
}
