package core;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Collection;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@WebServlet("/upload")
@MultipartConfig(location = "C:/uploadtest", maxFileSize = 1024*1024 *5,maxRequestSize = 1024*1024*5*5)
public class UploadServlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html;charset=utf-8");
		PrintWriter out = resp.getWriter();
		String path = "C:/uploadtest";
		File isDir = new File(path);
		if(!isDir.isDirectory()) {
			isDir.mkdirs();
		}
		Collection<Part> parts = req.getParts();
		for(Part part : parts) {
			if(part.getContentType() != null) {
				String fileName = part.getSubmittedFileName();
				if(fileName != null) {
					part.write(fileName.substring(0,fileName.lastIndexOf("."))+"_"
				+System.currentTimeMillis()+fileName.substring(fileName.lastIndexOf(".")));
					out.print("<br>업로드한 파일 이름: " + fileName);
					out.print("<br> 크기: "+part.getSize());
				}
			}else {
				String partName = part.getName();
			}
		}
	}

}