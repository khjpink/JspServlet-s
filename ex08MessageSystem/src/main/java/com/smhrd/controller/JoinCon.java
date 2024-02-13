package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.domain.Member;
import com.smhrd.domain.MemberDAO;

public class JoinCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// 0. post 방식 인코딩
		request.setCharacterEncoding("UTF-8");
	    
	    // 1. 파라미터 수집
		String email = request.getParameter("email");
		String pw = request.getParameter("pw");
		String tel = request.getParameter("tel");
		String address = request.getParameter("address");
		
		//2. 받아온 값을 Member객체에 담아주기 / 도메인 패키지의 멤버를 가져오기
		Member joinMember = new Member(email, pw, tel, address);
		
		//3. DAO 객체 생성, 일할 메소드 만들기
		MemberDAO dao = new MemberDAO();
		int cnt = dao.insertMember(joinMember);
		
		//4. MemberMapper.xml에 SQL문 만들기
		
		
		//5.명령 후 처리
		if(cnt > 0) {
			System.out.println("회원가입 성공");
			
			RequestDispatcher rd = request.getRequestDispatcher("joinSuccess.jsp");
			request.setAttribute("joinEmail", email);
			rd.forward(request, response);
		}else {
			System.out.println("회원가입 실패");
		}
		response.sendRedirect("main.jsp");
		
	}
}
