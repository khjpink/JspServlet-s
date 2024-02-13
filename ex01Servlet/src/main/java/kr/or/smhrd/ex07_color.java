package kr.or.smhrd;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/ex07_color")
public class ex07_color extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//색깔
		String color = request.getParameter("color");
		System.out.println(color); // #ff24c5
		
		//응답
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		out.print("<html>");
		out.print("<head>");
		out.print("</head>");
		out.print("<style>body{background-color: "+color+";}</style>");
		out.print("<body>");
		out.print("</body>");
		out.print("</html>");

		
	}

}
