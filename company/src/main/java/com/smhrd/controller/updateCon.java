package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.domain.Member;
import com.smhrd.domain.MemberDAO;

/**
 * Servlet implementation class updateCon
 */
public class updateCon extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("[UpdateCon]");
		//post 인코딩
		request.setCharacterEncoding("UTF-8");
		
		//어떤 사람의 회원정보를 수정할지 세션에서 email 가져오기
		HttpSession session = request.getSession();
		Member loginMember = (Member)session.getAttribute("loginMember");
		String email = loginMember.getEmail();
		
		//파라미터 가져오기
		String pw = request.getParameter("pw");
		String tel = request.getParameter("tel");
		String address = request.getParameter("address");

		//파라미터를 멤버객체에 담아주기
		Member update = new Member(email, pw, tel, address);
		
		//dao일시키기
		MemberDAO dao = new MemberDAO();
		int cnt = dao.updateMember(update);
		
		//매퍼 sql쿼리 수정
		
		//명령후 처리
			// 접속한 이메일 유지되게 해서 가져오기, 출력되야함
		if(cnt > 0) {
			System.out.println("개인정보 수정 성공");
			response.sendRedirect("main.jsp");
			// 수정해서 메인갔는데, 메인이 가지고 있는 세션정보는 처음 로그인 세션임, 수정된 세션으로 다시 저장해야함
			session.setAttribute("loginMember", update); // 같은 이름으로 수정된값 덮어쓰기  
		}else {
			System.out.println("개인정보 수정 실패");
			response.sendRedirect("update.jsp");
		}
		
		
	}

}
