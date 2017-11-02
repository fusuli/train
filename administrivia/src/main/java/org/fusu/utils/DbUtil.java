package org.fusu.utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DbUtil {
	public static Connection conn = null;// �������ݿ��������
	public PreparedStatement pstmt = null;// ִ��SQL������
	public ResultSet rs = null;// �����ѯ���������

	public static Connection getConnection() {
		System.out.println("��������------1");
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		try {
			conn = DriverManager.getConnection(
					"jdbc:mysql://127.0.0.1:3306/test?useUnicode=true&characterEncoding=utf8&serverTimezone=GMT",
					"root", "root");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
//		Class.forName("org.postgresql.Driver");
//		conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/article", "postgres", "123456");
		System.out.println("��������������conn��ֵ��" + conn);
		return conn;
	}

	public static void closeAll(Connection conn, PreparedStatement pstmt, ResultSet rs) {
		if (rs != null) {
			try {
				rs.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		if (pstmt != null) {
			try {
				pstmt.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		if (conn != null) {
			try {
				conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

	}
}
