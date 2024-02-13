package kr.or.smhrd;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/info")
public class ex10_info extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//인코딩
		request.setCharacterEncoding("UTF-8");
		
		//요청
		String job = request.getParameter("job");
		String gender = request.getParameter("gender");
		String[] hobbyArray = request.getParameterValues("hobby");
		
		System.out.print("직업은 "+job+", 성별은 "+gender+", 취미는 ");
		for(String hb: hobbyArray) {
			System.out.print(hb+" ");	
		}
		
	}

}
