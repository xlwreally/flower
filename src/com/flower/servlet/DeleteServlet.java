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
 * @date 2019-08-15 17:38
 */
public class DeleteServlet extends HttpServlet {

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
        String userid=request.getParameter("id");

        UserDao ud=new UserDaoImpl();
        User user=new User();
        int num=ud.deleteUser(userid);
        System.out.println(num);
        System.out.println(user);

            //页面跳转之  重定向

            response.sendRedirect("admin.jsp");


    }
}
