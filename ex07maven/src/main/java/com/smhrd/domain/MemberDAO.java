package com.smhrd.domain;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import com.smhrd.database.SqlSessionManager;

//mybatis를 사용하며 db와 연동하는 클래스
public class MemberDAO {

	//SqlSessionManager클래스의 getSqlSession메소드를 호출하여 SqlSessionFactory 가져온다. 
	//SqlSessionFactory은 마이바티스에서 DB와 세션을 생성하는 팩토리  
	//이를 통해 mybatis에 sqlSession을 생성
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();

	// SqlSession sqlSession = sqlSessionFactory.openSession(); 얻어진
	// sqlSessionFactory를 이용하여 새로운 sqlSession을 연다. 
	// sqlSession은 db 상호작용을 수행하는 인터페이스 
	SqlSession sqlSession = sqlSessionFactory.openSession();
	
	
	//회원가입 기능 insertMember메소드(MavenMember타입의 joinMember객체를 매개변수로 받는다)  
	public int insertMember(MavenMember joinMember) {
		System.out.println("MemberDAO MavenMember 메소드 실행");	
		int cnt = 0;
		try {
			//MemberMapper.xml 에서 정의된 id="insertMember"의 SQL쿼리를 실행하여 
			//회원정보를 DB에 삽입한다. joinMember객체의 필드들이 SQL매개변수에 매핑됨 
			cnt = sqlSession.insert("insertMember", joinMember);
			if(cnt > 0) {
				System.out.println("DAO메소드에서 값을 잘 가져옴");
				sqlSession.commit();
			}else {
				System.out.println("DAO메소드에서 값을 가져오지 못함");
				sqlSession.rollback();
			}
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}	
		// 반환된 레코드 수, 삽입된 행의 수 반환 
		return cnt; 
	}//회원가입 끝
	

}
