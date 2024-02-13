package com.smhrd.domain;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import com.smhrd.database.SqlSessionManager;

public class MemberDAO {
//어떤 값을 가져와서, 어떻게 넘겨줄지 
	
	 SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	 SqlSession sqlSession = sqlSessionFactory.openSession();
	 
	 //INSERT, UPDATE, DELECT는 레코드 수가 반환됨
	 
	 //회원가입 기능 구현
	 public int insertMember(Member joinMember) {
		int cnt = 0;
		try {
			cnt = sqlSession.insert("insertMember", joinMember);
			
			//내가 원하는 일 했으면 db에 반영
			if(cnt > 0) {
				System.out.println("MemberDAO : 회원가입 시 db값 잘 가져옴");
				sqlSession.commit();
			}else {
				System.out.println("MemberDAO : 회원가입 시 db값 못 가져옴");
				sqlSession.rollback();
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		return cnt;
	 }//insertMember 메소드 끝
	
	 //로그인 기능 메서드
	 public Member selectMember(Member login) {
		Member loginMember = null;
		 
		try {
			loginMember = sqlSession.selectOne("selectMember", login);
			
			if(loginMember != null) {
				System.out.println("MemberDAO : 로그인 값 가져옴");
				sqlSession.commit();
			}else{
				System.out.println("MemberDAO : 로그인 값 못가져옴");
				sqlSession.rollback();
			}
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		return loginMember;
	 }//selectMember 메소드 끝

	 
	//회원정보 수정, insert, update는 int형태로 값을 돌려받음 
	public int updateMember(Member update) {
		int cnt = 0;
		try {
			cnt = sqlSession.update("updateMember", update);
			if(cnt > 0) {
				System.out.println("개인정보 수정 : 회원정보 값 가져옴");
				sqlSession.commit();
			}else {
				System.out.println("개인정보 수정 : 회원정보 값 못 가져옴");
				sqlSession.rollback();
			}
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}			
		return cnt;
	} // updateMember 메소드 끝
	 

	//회원정보 전체 조회
	public List<Member> selectAll() {
		List<Member> memberList = null;
		
		try {
			memberList = sqlSession.selectList("selectAll");
			
			if(memberList != null) {
				System.out.println("dao: 회원 조회 성공");
				sqlSession.commit();
			}else {
				System.out.println("dao: 회원 조회 실패");
				sqlSession.rollback();
			}
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}

		return memberList;
	}// selectAll 끝

	
	
	//회원삭제
	public int deleteMember(String email) {
		int cnt = 0;
		try {
			cnt = sqlSession.delete("deleteMember", email);
			if(cnt > 0) {
				System.out.println("dao 회원삭제 성공");
				sqlSession.commit();
			}else {
				System.out.println("dao 회원삭제 실패");
				sqlSession.rollback();
			}
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		return cnt;
	}//delectMember 끝
	

	
	

	
	
}
