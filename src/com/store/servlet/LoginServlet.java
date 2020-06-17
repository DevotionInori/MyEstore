package com.store.servlet;

import com.store.dao.UserDao;
import com.store.domain.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.awt.print.Printable;
import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.sql.SQLException;
import java.util.Arrays;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        String v = request.getParameter("sb");
        UserDao dao = new UserDao();
        User user=new User();
        user.setUsername(request.getParameter("username"));
        user.setPassword(request.getParameter("password"));
        if(v.equals("Login"))
        {


            try {
                if(dao.findUserByLogin(user.getUsername(),user.getPassword())!=null)
                {
                    user = dao.findUserByLogin(user.getUsername(),user.getPassword());
                    if(user.getType().equals("admin"))
                    {
                        response.sendRedirect(request.getContextPath()+"/OrderFindAllServlet");
                        return;
                    }
                    PrintWriter out = response.getWriter();
                    request.getSession().setAttribute("user",user);
                    String a = URLEncoder.encode("登录成功", "UTF-8");
                    out.print("<script language='javascript'>alert(decodeURIComponent('"+a+"'));window.location.href='index.jsp'</script>");
                }
                else {
                    PrintWriter out = response.getWriter();
                    String a = URLEncoder.encode("用户名或密码错误", "UTF-8");
                    out.print("<script language='javascript'>alert(decodeURIComponent('"+a+"'));window.location.href='login.jsp'</script>");
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }else{
            try {
                if(request.getParameter("passwordCheck").equals(user.getPassword())) {
                    user.setTelephone(request.getParameter("tel"));
                    if(dao.findUserByName(user.getUsername())!=null)
                    {
                        PrintWriter out = response.getWriter();
                        String a = URLEncoder.encode("账号已存在", "UTF-8");
                        out.print("<script language='javascript'>alert(decodeURIComponent('"+a+"'));window.location.href='login.jsp'</script>");
                        return;
                    }
                    dao.addUser(user);
                    PrintWriter out = response.getWriter();
                    String a = URLEncoder.encode("注册成功", "UTF-8");
                    out.print("<script language='javascript'>alert(decodeURIComponent('"+a+"'));window.location.href='login.jsp'</script>");
                }else{
                    PrintWriter out = response.getWriter();
                    String a = URLEncoder.encode("两次密码输入不匹配", "UTF-8");
                    out.print("<script language='javascript'>alert(decodeURIComponent('"+a+"'));window.location.href='login.jsp'</script>");
                }

            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
