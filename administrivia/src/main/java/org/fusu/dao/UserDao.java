package org.fusu.dao;

import org.fusu.entity.User;

public interface UserDao {
	public User queryUserByName(String name);

	public int loginUser(User user);
}
