package com.store.servlet;

import com.store.dao.OrderDao;
import com.store.domain.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/CancelOrderServlet")
public class CancelOrderServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        OrderDao dao = new OrderDao();
        User user = (User)request.getSession().getAttribute("user");
        try {
            dao.delOrder(Integer.parseInt(request.getParameter("id")));
            response.sendRedirect(request.getContextPath()+"/OrderFindByIdServlet?id="+user.getId());
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
