package org.fusu.mapper.impl;

import org.apache.ibatis.session.SqlSession;
import org.fusu.entity.User;
import org.fusu.mapper.UserMapper;
import org.fusu.utils.SqlSessionFactoryUtil;

public class UserMapperImpl {
	private static SqlSession session = SqlSessionFactoryUtil.getSqlSessionFactory().openSession();
	static UserMapper userMapper = session.getMapper(UserMapper.class);

	/**
	 * �û���¼
	 * 
	 * @param user
	 * @return
	 */
	public static int queryCountBynp(String name,String password) {
		int rs = userMapper.queryCountBynp(name,password);
		if (rs > 0) {
			return 1;
		}
		return 0;
	}

	/**
	 * �û�ע��
	 * 
	 * @param user
	 * @return
	 */

	public static int insertUser(User user) {
		int i = userMapper.insertUser(user);
		if (i > 0) {
			session.commit();
		}
		return i;
	}

}