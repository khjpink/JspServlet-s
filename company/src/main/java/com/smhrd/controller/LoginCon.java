package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.omg.CORBA.Request;

import com.smhrd.domain.Member;
import com.smhrd.domain.MemberDAO;

import oracle.net.ns.SessionAtts;

public class LoginCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		
		String email = request.getParameter("email");
		String pw = request.getParameter("pw");
		
		//객체에 담기
		Member login = new Member(email, pw);
		System.out.println(login.toString());
		
		//객체에 담은 값을 셀렉트메소드 매개변수로 보내줘서, dao일시키고
		MemberDAO dao = new MemberDAO();
		Member loginMember = dao.selectMember(login);
		
		
		//로그인 성공 여부 확인
		if(loginMember != null) {
			System.out.println("로그인 성공");
			
			HttpSession session = request.getSession();	//세션 객체 
			session.setAttribute("loginMember", loginMember); //세션 저장하기
		}else {
			System.out.println("로그인 실패");
		}
		response.sendRedirect("main.jsp");
		
	}

}
