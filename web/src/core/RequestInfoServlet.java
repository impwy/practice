package core;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.regex.Pattern;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/requestinfo")
public class RequestInfoServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String contextPath = req.getContextPath();
		String method = req.getMethod();
		String protocol = req.getProtocol();
		String remoteAddr = req.getRemoteHost();
		String requestURI = req.getRequestURI();
		String requestURL = new String(req.getRequestURL());
		String serverName = req.getServerName();
		String userAgent = req.getHeader("user-agent");
		String referer = req.getHeader("referer");
		String clientMachine = "";
		boolean result = Pattern.matches(".*[win16|win32|win64|linux|max].*", userAgent.toLowerCase());
		if(result)
			clientMachine = "PC";
		else
			clientMachine = "모바일";
		String browser = "";
		if(userAgent.indexOf("Trident") > 0|| userAgent.indexOf("MSIE")>0) {
			browser = "IE";
		}else if(userAgent.indexOf("Opera") > 0) {
			browser = "Opera";
		}else if(userAgent.indexOf("Firefox")>0) {
			browser = "Firefox";
		}else if(userAgent.indexOf("Safari")>0) {
			if(userAgent.indexOf("Edge")>0) {
				browser = "Edge";
			}else if(userAgent.indexOf("Chrome")>0) {
				browser = "Chrome";
			}else {
				browser = "Safari";
			}
		}
		resp.setContentType("text/html; charset=utf-8");
		PrintWriter out = resp.getWriter();
		out.print("<h3>요청 정보를 통해서 추출한 내용</h3>");
		out.println("<ul>");
		out.println("<li>요청 컨텍스트 패스 : "+contextPath +"</li>");
		out.println("<li>요청 방식 : "+method +"</li>");
		out.println("<li>요청 프로토콜 : "+protocol +"</li>");
		out.println("<li>요청 클라이언트 주소 : "+remoteAddr +"</li>");
		out.println("<li>요청 URI : "+requestURI +"</li>");
		out.println("<li>요청 URL : "+requestURL +"</li>");
		out.println("<li>요청 서버명 :"+serverName +"</li>");
		out.println("<li>요청 클라이언트 시스템 종류 : "+clientMachine +"</li>");
		out.println("<li>요청 요청 브라우저 종류 : "+browser +"</li>");
		out.println("<li>요청 이 콘텐트를 요청한 웹 페이지 : "+referer +"</li>");
		out.println("</ul>");
		out.close();
	}

}
