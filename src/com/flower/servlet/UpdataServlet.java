package com.flower.servlet;

import com.flower.dao.UserDao;
import com.flower.dao.impl.UserDaoImpl;
import com.flower.entity.User;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * @author 熊立伟
 * @version 1.0
 * @date 2019-08-14 14:04
 */
public class UpdataServlet extends HttpServlet {

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
        int num=ud.updateUser(user);
        System.out.println(num);
        System.out.println(user);
        if(num>0)
        {
            //页面跳转之  重定向
            HttpSession session=request.getSession();
            session.setAttribute("user",user);
            response.sendRedirect("index.jsp");
        }
        else
        {
            //页面跳转之  请求转发
            request.setAttribute("msg", "系统繁忙，请稍后再试");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
    }

}
