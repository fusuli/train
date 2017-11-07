package org.fusu.web.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.fusu.mapper.impl.UserMapperImpl;

/**
 * Servlet implementation class LoginServlet
 */
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * Default constructor.
	 */
	public LoginServlet() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		String name = (String) request.getParameter("name");
		String password = (String) request.getParameter("password");

		System.out.println(name);
		System.out.println(password);

		if (name == null || password == null) {
			response.sendRedirect("/administrivia/pages/fail.jsp");
		}
		int n = UserMapperImpl.queryCountBynp(name, password);
		if (n == 0) {
			response.sendRedirect("/administrivia/pages/fail.jsp");
		}
		if (n == 1) {
			response.sendRedirect("/administrivia/pages/success.jsp");
		}
		// try {
		// UserDaoImpl userDaoImpl =new UserDaoImpl();
		// int n = userDaoImpl.loginUser(user);
		// System.out.println("��¼��ѯ�����"+n);
		// if (n == 0) {
		// response.sendRedirect("/administrivia/pages/fail.jsp");
		// }
		// if (n == 1) {
		// response.sendRedirect("/administrivia/pages/success.jsp");
		// }
		// } catch (Exception e) {
		// // TODO: handle exception
		// e.printStackTrace();
		// }
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

	@Override
	public void init() throws ServletException {
		// TODO Auto-generated method stub
		super.init();
	}

}
