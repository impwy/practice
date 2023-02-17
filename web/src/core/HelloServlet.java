package core;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.ws.http.HTTPException;

@WebServlet("/hello")
public class HelloServlet extends HttpServlet{
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws HTTPException, IOException {
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		
		out.println("<h3>안녕하세요?</h3>");
		out.close();
	}
}
