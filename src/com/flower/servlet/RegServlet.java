package com.flower.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.flower.dao.UserDao;
import com.flower.dao.impl.UserDaoImpl;
import com.flower.entity.User;

public class RegServlet extends HttpServlet{

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
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		String tel=request.getParameter("tel");
		String sex=request.getParameter("sex");
		String birthday=request.getParameter("birthday");
		
		UserDao ud=new UserDaoImpl();
		User user=new User();
		user.setUserid(userid);
		user.setUsername(username);
		user.setPassword(password);
		user.setTel(tel);
		user.setBirthday(birthday);
		if(sex.equals("男")) {
			user.setSex(1);
		}else {
			user.setSex(0);
		}
		int num=ud.addUser(user);
		System.out.println(num);
		System.out.println(user);
		if(num>0)
		{
			//页面跳转之  重定向
			response.sendRedirect("index.jsp");
		}
		else 
		{
			//页面跳转之  请求转发
			request.setAttribute("msg", "用户已存在");
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}
	}

}
