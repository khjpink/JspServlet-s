package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.domain.MemberDAO;
 
public class DeleteCon extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//이메일과 같은 회원 정보 지우기
		
		//인코딩
		//select.jsp의 쿼리스트링 email파라미터 가져오기
		String email = request.getParameter("email");
		
		//DAO DB연결
		MemberDAO dao = new MemberDAO();
		int cnt = dao.deleteMember(email);
			
		//명령 후 처리
		if(cnt > 0) {
			System.out.println("회원삭제 성공");
		}else {
			System.out.println("회원삭제 실패");
		}
		response.sendRedirect("select.jsp");
		 
	}
}
