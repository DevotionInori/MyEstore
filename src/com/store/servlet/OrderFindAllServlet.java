package com.store.servlet;

import com.store.dao.OrderDao;
import com.store.domain.Order;
import com.store.domain.UserOrder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet("/OrderFindAllServlet")
public class OrderFindAllServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        OrderDao dao = new OrderDao();
        try {
            List<UserOrder> orders = dao.findAllOrder();
            request.setAttribute("orders", orders);
            request.getRequestDispatcher("/management.jsp").forward(request, response);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
