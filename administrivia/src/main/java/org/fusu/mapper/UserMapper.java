package org.fusu.mapper;

import org.fusu.entity.User;

public interface UserMapper {
	// 登录
	public int queryCountBynp(String name,String password);

	// 注册
	public int insertUser(User user);

}
