package com.smhrd.database;

import java.io.IOException;
import java.io.InputStream;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class SqlSessionManager {
	
	static SqlSessionFactory sqlSessionFactory;
	
	static {
		try {
			String resource = "com/smhrd/database/config.xml";
			InputStream inputStream;
			inputStream = Resources.getResourceAsStream(resource);
			
			sqlSessionFactory =
					new SqlSessionFactoryBuilder().build(inputStream);
			
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public static SqlSessionFactory getSqlSession() {
		return sqlSessionFactory;
		
	}

}
