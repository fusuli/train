package org.fusu.mapper.impl;

import org.apache.ibatis.session.SqlSession;
import org.fusu.entity.User;
import org.fusu.mapper.UserMapper;
import org.fusu.utils.SqlSessionFactoryUtil;

public class UserMapperImpl {
	static SqlSession session = SqlSessionFactoryUtil.getSqlSessionFactory().openSession();
	static UserMapper userMapper = session.getMapper(UserMapper.class);

	/**
	 * 用户登录
	 * 
	 * @param user
	 * @return
	 */
	public static int queryCountBynp(User user) {
		int rs = userMapper.queryCountBynp(user);
		if (rs > 0) {
			return 1;
		}
		return 0;
	}

	/**
	 * 用户注册
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
