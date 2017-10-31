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
	 * 创建静态变量SqlSessionFactory，静态变量被所有的对象所共享。
	 * 
	 * 提供创建MyBatis的核心接口SqlSession
	 */
	public static SqlSessionFactory sqlSessionFactory = null;

	public static SqlSessionFactory getSqlSessionFactory() {
		// 读取全局配置文件
		String resource = "org/fusu/mapper/mybatis-config.xml";
		if (sqlSessionFactory == null) {
			try {
				Reader reader = Resources.getResourceAsReader(resource);
				sqlSessionFactory = new SqlSessionFactoryBuilder().build(reader);
				System.out.println("测试成功");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return sqlSessionFactory;
	}
}