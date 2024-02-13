package kr.or.smhrd;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "table", urlPatterns = { "/table" })
public class ex06_table extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//요창
		int floor = Integer.parseInt(request.getParameter("floor"));
		System.out.println("입력받은 층의 개수 :"+floor);
		
		int room = Integer.parseInt(request.getParameter("room"));
		System.out.println("입력받은 방의 개수 :"+room);
		

		
		//응답
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		//출력
		out.print("<table border='1px soild'>");
		
		for(int j=floor; j>=1; j--) {
			out.print("<tr>");
			for(int i=1; i<=room; i++) {
				out.print("<td>"+j+"층"+i+"호실</td>");
			}
			out.print("</tr>");
		}
		out.print("</table>");
		
		
	}

}
