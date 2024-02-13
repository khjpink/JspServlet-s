package kr.or.smhrd;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/image")
public class ex05_image extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//입력한 이미지 이름
		//요청
		String img = request.getParameter("img"); 
		System.out.println("선택한 이미지 이름 : "+img);
		
		//응답
		//출력
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		if(img.equals("one")) {
			out.print("<img alt='yunaKim' src='images/one.jpg'>");
		}else if(img.equals("two")) {
			out.print("<img alt='yunaKim' src='images/two.jpg'>");
		}else if(img.equals("three")) {
			out.print("<img alt='yunaKim' src='images/three.jpg'>");
		}
	}

}
