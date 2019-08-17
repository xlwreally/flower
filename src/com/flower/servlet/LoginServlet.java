package com.flower.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.flower.dao.UserDao;
import com.flower.dao.impl.UserDaoImpl;
import com.flower.entity.User;

public class LoginServlet extends HttpServlet{

	@Override
	public void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(req, resp);
	}
	@Override
	public  void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		response.setCharacterEncoding("utf-8");
		String userid=request.getParameter("userid");
		String password=request.getParameter("password");

		UserDao ud=new UserDaoImpl();
        User user=ud.login(userid,password);
		if(user!=null)
		{
			HttpSession session=request.getSession();
			session.setAttribute("user",user);
			//页面跳转之  重定向
			response.sendRedirect("index.jsp");
		}
		else
		{
			//页面跳转之  请求转发
			request.setAttribute("msg", "用户名或密码错误");
			request.getRequestDispatcher("reg.jsp").forward(request, response);
		}
	}

}
