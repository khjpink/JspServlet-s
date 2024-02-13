package kr.or.smhrd;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/getContent")
public class ex09_getContent extends HttpServlet {
	private static final long serialVersionUID = 1L;


	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//인코딩
		request.setCharacterEncoding("UTF-8");
		
		//요청
		String id = request.getParameter("id");
		String msg = request.getParameter("msg"); 
		System.out.println("id는 "+id+"msg는"+msg);
		

	}
}
