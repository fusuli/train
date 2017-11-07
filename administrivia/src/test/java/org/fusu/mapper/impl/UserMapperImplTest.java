package org.fusu.mapper.impl;

import org.fusu.entity.User;
import org.junit.Assert;
import org.junit.Test;

public class UserMapperImplTest {
	@Test
	public void testInsertUser() {

		User userInfo = new User();
		userInfo.setName("113332223");
		userInfo.setPassword("1234");
		int i = UserMapperImpl.insertUser(userInfo);
		System.out.println("锟斤拷锟�" + i);
		Assert.assertEquals(i, 1);
	}

	@Test
	public void testQueryUserBynp() {
		String name = "12";
		String password = "1234";

		int i = UserMapperImpl.queryCountBynp(name, password);
		System.out.println("result:" + i);
		Assert.assertEquals(i, 1);
	}
}
