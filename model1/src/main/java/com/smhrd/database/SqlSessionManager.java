package com.smhrd.database;

import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.ognl.IntHashMap.Entry;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class SqlSessionManager {
	// SqlSession --> 작업을 의미하는 단어
	// 작업 : DB --> sql문장 실행 --> 연결종료
	
	
	//전역변수 선언
	 private static SqlSessionFactory sqlSession;
	
	 static{
		 // static 초기화 블럭 : 프로그램이 실행되면 자동적으로 실행되는 문법!
		 // 초기화 블럭: 생성자가 실행이될 때 자동적으로 실행 되는 문법!
		try {
			String resource = "com/smhrd/database/config.xml";

			// config.xml 파일을 수정하거나 작업을 할 수 있도록 읽어들이는 작업!
			InputStream inputStream = Resources.getResourceAsStream(resource);

			sqlSession = new SqlSessionFactoryBuilder().build(inputStream);

		} catch (Exception e) {
			e.printStackTrace();
		}

	}
	
	

	// 생성된 SqlSessionFactory의 값을 불러올 수 있는 메소드!
	public static SqlSessionFactory getSqlSession() {
		return sqlSession; //전역변수 사용
	}
	
}	// class 닫는 부분
