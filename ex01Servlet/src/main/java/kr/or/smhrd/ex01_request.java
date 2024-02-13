package kr.or.smhrd;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//톰캣 실행 단축키 : Ctrl + F11
//url 맵핑
@WebServlet("/request")
public class ex01_request extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//request 객체 : 요청에 대한 정보를 담고 있는 객체 
		String ip = request.getRemoteAddr();
		System.out.println(ip); // 127.0.0.1
	
		String T = "125.67.8.5.1";
		

		response.setContentType("text/html; charset=UTF-8");
		
		PrintWriter out = response.getWriter();
		
		if(ip.equals(T)) {
			out.println("T 반가워");
		}else{
			out.println("안녕");
		}

	}//service 메소드

}
