package org.fusu.utils;

import java.io.IOException;
import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class SqlSessionFactoryUtil {
	public static void main(String[] args) {
		@SuppressWarnings("unused")
		SqlSessionFactory sqlSession = getSqlSessionFactory();
	}

	/**
	 * 
	 * ������̬����SqlSessionFactory����̬���������еĶ���������
	 * 
	 * �ṩ����MyBatis�ĺ��Ľӿ�SqlSession
	 */
	public static SqlSessionFactory sqlSessionFactory = null;

	public static SqlSessionFactory getSqlSessionFactory() {
		// ��ȡȫ�������ļ�
		String resource = "org/fusu/mapper/mybatis-config.xml";
		if (sqlSessionFactory == null) {
			try {
				Reader reader = Resources.getResourceAsReader(resource);
				sqlSessionFactory = new SqlSessionFactoryBuilder().build(reader);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return sqlSessionFactory;
	}
}
