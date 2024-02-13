package com.smhrd.database;

import java.io.IOException;
import java.io.InputStream;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class SqlSessionManager {
	 
	//이 파일을 만든 목적은 sqlSessionFactory을 제공받기 위함이다,
	//이녀석은 SqlSession을 생성한다(커넥션 객체와 같은 역할)   
	//돌려주는 메소드를 만들기 위해 전역변수로 만듬
	//20번줄 스테틱은 무조건 실행되면 객체가 만들어지기 때문에 키워드로 여기에도 스테틱을 붙인다  
	static SqlSessionFactory sqlSessionFactory;
	
	//static: SqlSessionManager 객체를 호출할때 무조건 한번 실행 되는 부분, sql세션 무조건 실행하기위해 스테틱에 작성
	//다른 메소드는 dao만들면 dao객체 생성하고, 거기에 dao.join기능을 불러와야 메소드가 실행이 되는데
	//SqlSessionManager은 위 기능이 이미 실행이 되서 객체를 만들었다 하면 만들어서 가지고 있다 
	static {
		try {
			//마이바티스 라이브러리가 있기 때문에 아래 객체들을 만들어서 사용할 수 있다 
			String resource = "com/smhrd/database/config.xml"; //어떤 환경설정 파일에서 
			InputStream inputStream;
			inputStream = Resources.getResourceAsStream(resource);
			//SqlSessionFactory :db연결을 미리 해놓는것(Connetion Pool : cp)를 만들
			//db연결할때마다 낭비되는 자원을 아낄 수 있다
			//커넥션 객체를 미리 만들어 놓고 비려쓰고 반납하는 형식으로 관리
			sqlSessionFactory = 
					//SqlSessionFactoryBuilder : 이녀석이 build(inputStream)경로대로  
					//MyBatis의 db.properties와 MemberMapper를 담고 있는 config.xml 설정파일을 
					//근거로 SqlSessionFactory를 만드는 SqlSessionFactoryBuilder 이녀석 일 시킬려고
					// sqlSessionFactory객체를 만든다 
					//config.xml, db.properties, MemberMapper, SqlSessionManager 파일을 만든거다
					//즉 마이바티스가 필요한 파일이 4개다. 이제 db연결만 해서 sql만 작성하면 된다
					//나중에 dao에서 이 객체를 실행만 시키면 sql세션 가져와서 일시킨다 
					//db가 연결을 유지한채 가지고 있기 때문에 회원가입,로그인,수정할때마다 연결을 끊고 하는게 없이 유지되고있는걸 빌려다쓴다
					new SqlSessionFactoryBuilder().build(inputStream);		
		} catch (IOException e) {
			e.printStackTrace();
		}
	}//static끝
	//sqlSessionFactory를 DAO에서 사용하기 위해 getSqlSession메소드를 통해 돌려주다
	//객체를 돌려주기 위해 대문자Sql
	public static SqlSessionFactory getSqlSession() {
		return sqlSessionFactory;
	}

	//static에서 sqlSessionFactory 가 만들어지면, 여기에 config.xml값이 들어가고 
	//밖에 get메소드 안에, 실행되어있는 sqlSessionFactory이걸 돌려준다 
	//이제 getSqlSession만 부르면 만들어놓은 sqlSessionFactory를 가져다 쓸 수 있다 


}