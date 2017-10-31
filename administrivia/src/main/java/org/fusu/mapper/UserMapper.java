package org.fusu.mapper;

import org.fusu.entity.User;

public interface UserMapper {
	// 用户登录
	public int queryCountBynp(User user);

	// 用户注册
	public int insertUser(User user);

}
