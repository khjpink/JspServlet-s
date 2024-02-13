package Controller;

import java.io.IOException;
import java.net.URLEncoder;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/carrotList")
public class ex04_carrotList extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//post타입 인코딩
		request.setCharacterEncoding("UTF-8");

		//체크박스 파라미터 가져오기
		String[] check = request.getParameterValues("check");

		//객체 생성
		Cookie cookie = null;
		
		//쿠키가 널이라면
		if(check == null){
			//쿠키 배열에 값 넣기
			cookie = new Cookie("item", "");
			
		//쿠키가 널이 아니라면  
		}else if(check != null) {
			for(int i=0; i<check.length; i++) {
				//쿠키 배열에 값 넣기
				cookie = new Cookie("item"+i, URLEncoder.encode(check[i], "UTF-8"));
				//쿠키 사용자 응답
				response.addCookie(cookie);		
			}
		}//else 끝		

		
		//쿠키 잘보냈으면 다시 jsp로 이동
		response.sendRedirect("ex04_carrot.jsp");


		
	}
}