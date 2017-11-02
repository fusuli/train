package org.fusu.dao.impl;

import java.sql.SQLException;

import org.fusu.entity.User;
import org.junit.Assert;
import org.junit.Test;

public class UserDaoImplTest {
	@Test
	public void testQueryUserByName() {
		String name = "12";
		UserDaoImpl userDaoImpl = new UserDaoImpl();
		User user = userDaoImpl.queryUserByName(name);
		System.out.println("账号" + user.getName());
		System.out.println("密码" + user.getPassword());
		// Assert.assertEquals(0, 0);
	}

	@Test
	public void testInsertUser() {
		User user = new User();
		user.setName("1");
		user.setPassword("1");
		int n = UserDaoImpl.insertUser(user);
		System.out.println("结果" + n);

		Assert.assertEquals(n, 1);
	}

	@Test
	public void testLoginUser() throws ClassNotFoundException, SQLException {
		User user = new User();
		user.setName("1");
		user.setPassword("1");
		UserDaoImpl userDaoImpl =new UserDaoImpl();
		int n = userDaoImpl.loginUser(user);
		System.out.println("结果" + n);

		Assert.assertEquals(n, 1);
	}
}
