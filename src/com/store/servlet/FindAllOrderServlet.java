package com.store.servlet;

import com.store.dao.OrderDao;
import com.store.domain.Order;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet("/FindAllOrderServlet")
public class FindAllOrderServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        System.out.println(id);
        OrderDao dao = new OrderDao();
        try {
            List<Order> orders = dao.findOrder(id);
            request.setAttribute("orders", orders);
            for (Order o :
                    orders) {
                System.out.println(o.getId());
            }
            request.getRequestDispatcher("/order.jsp").forward(request, response);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
