package kr.or.smhrd;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/JoinService")
public class ex11_form extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//POST방식은 한글 인코딩
		request.setCharacterEncoding("UTF-8");
		
		//요청
		String id =	request.getParameter("id");
		System.out.println("id : "+id);
		
		String pw =	request.getParameter("pw");
		System.out.println("pw : "+pw);
		
		String pwCheck = request.getParameter("pwCheck");
		System.out.println("pwCheck : "+pwCheck);
		
		String gender =	request.getParameter("gender");
		System.out.println("gender : "+gender);
		
		String[] blood =	request.getParameterValues("blood");
		System.out.print("blood : ");
		for(String bl : blood) {
			System.out.print(bl+" ");
		}
		System.out.println();
		
		String birthDate = request.getParameter("birthDate");
		System.out.println("birthDate : "+birthDate);

		String[] hobby =	request.getParameterValues("hobby");
		System.out.print("hobby : ");
		for(String hb : hobby) {
			System.out.print(hb+" ");
		}
		System.out.println();
		
		String color =	request.getParameter("color");
		System.out.println("color : "+color);
		
		String text =	request.getParameter("text");
		System.out.println("text : "+text);
		
		
	}

}
