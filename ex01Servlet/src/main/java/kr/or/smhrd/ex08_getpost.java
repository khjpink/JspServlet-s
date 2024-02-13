package kr.or.smhrd;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/getpost")
public class ex08_getpost extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//post방식은 한글 인코딩
		request.setCharacterEncoding("UTF-8");
		
		//파라미터 수집
		String data = request.getParameter("data"); 
		System.out.println(data);
		
		
	}
}
