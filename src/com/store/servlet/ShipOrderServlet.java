package com.store.servlet;

import com.store.dao.OrderDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLEncoder;
import java.sql.SQLException;

@WebServlet("/ShipOrderServlet")
public class ShipOrderServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        OrderDao dao = new OrderDao();
        try {
            PrintWriter out = response.getWriter();
            dao.shipOrder(id);
            String a = URLEncoder.encode("发货成功", "UTF-8");
            out.print("<script language='javascript'>alert(decodeURIComponent('"+a+"'));window.location.href='devotion/OrderFindAllServlet'</script>");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
