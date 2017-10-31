package org.fusu.mapper.impl;

import org.fusu.entity.User;
import org.junit.Assert;
import org.junit.Test;

public class UserMapperImplTest {
	@Test
	public void testInsertUser() {

		User userInfo = new User();
		userInfo.setName("112");
		userInfo.setPassword("1234");
		int i = UserMapperImpl.insertUser(userInfo);
		System.out.println("结果" + i);
		Assert.assertEquals(i, 1);
	}

	@Test
	public void testQueryUserBynp() {
		System.out.println("成功");
		User user = new User();
		user.setName("12");
		user.setPassword("1234");
		
		int i = UserMapperImpl.queryCountBynp(user);
		System.out.println("结果" + i);
		Assert.assertEquals(i, 1);
	}
}
