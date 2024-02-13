package com.smhrd.controller;

import java.io.IOException;
import java.lang.reflect.Member;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.domain.MavenMember;
import com.smhrd.domain.MemberDAO;


public class JoinCon extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		System.out.println("JoinCon 실행");
			
		//0.post방식 인코딩
		request.setCharacterEncoding("UTF-8");
		
		//1.id,pw 파라미터 수집
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		//2. id,pw를 MavenMember객체에 담아주기
		//join변수에 id,pw가 담긴다 
		MavenMember join = new MavenMember(id, pw);
		
		//3. DAO이용해서 join값 넣어주기
		//dao객체 생성후 
		//join데이터를 넣어주면 MemberDAO.java에서 매개변수로 받아와서 
		//그값을 sql문에 보내줌 :  cnt = sqlSession.insert("insertMember", joinMember);
		//insert한개 Mapper.xml에서 sql실행후 돌아온다 
		MemberDAO dao = new MemberDAO();
		int cnt = dao.insertMember(join);

		//4.dao의 명령 후 처리
		if(cnt > 0) {
			response.sendRedirect("joinSuccess.html");
		}else{	
			System.out.println("회원가입 실패");
		}
		
    }	
}
