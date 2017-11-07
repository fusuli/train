//package org.fusu.dao.impl;
//
//import java.sql.Connection;
//import java.sql.PreparedStatement;
//import java.sql.ResultSet;
//import java.sql.SQLException;
//
//import org.fusu.dao.UserDao;
//import org.fusu.entity.User;
//import org.fusu.utils.DbUtil;
//
//public class UserDaoImpl implements UserDao {
//
//	public static Connection conn;// 连接数据库的连接类
//	public static PreparedStatement pstmt;// 执行SQL语句的类
//	public static ResultSet rs;// 保存查询结果集的类
//	User user = null;
//
//	public static int insertUser(User user) {
//		int result = 0;
//		String sql = "insert into admin(name,password) values(?,?)";
//		try {
//			conn = DbUtil.getConnection();
//			pstmt = conn.prepareStatement(sql);
//			// pstmt处理
//			pstmt.setString(1, user.getName());
//			pstmt.setString(2, user.getPassword());
//			result = pstmt.executeUpdate();
//			if (result != 0) {
//				return 1;
//			}
//			System.out.println(result);
//		} catch (Exception e) {
//			e.printStackTrace();
//		} finally {
//			DbUtil.closeAll(conn, pstmt, rs);
//		}
//		return result;
//	}
//
//	/**
//	 * 用户登录
//	 * 
//	 * @param user
//	 * @return
//	 * @throws SQLException
//	 * @throws ClassNotFoundException
//	 */
//	public int loginUser(User user) {
//		String sql = "select * from admin where name='" + user.getName() + "' and password='" + user.getPassword()
//				+ "'";
//
//		try {
//			try {
//				conn = DbUtil.getConnection();
//			} catch (ClassNotFoundException e) {
//				// TODO Auto-generated catch block
//				e.printStackTrace();
//			}
//
//			pstmt = conn.prepareStatement(sql);
//
//			rs = pstmt.executeQuery();
//
//			System.out.println("rs的值" + rs);
//
//			if (rs.next()) {
//				return 1;
//			}
//		} catch (SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//		return 0;
//	}
//
//	public User queryUserByName(String name) {
//		// TODO Auto-generated method stub
//		String sql = "select * from admin where name='" + name + "'";
//		try {
//			conn = DbUtil.getConnection();
//			pstmt = conn.prepareStatement(sql);
//			rs = pstmt.executeQuery();
//			user = new User();
//			if (rs.next()) {
//				user.setName(rs.getString("name"));
//				user.setPassword(rs.getString("password"));
//
//			}
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//		return user;
//	}
//
//}
