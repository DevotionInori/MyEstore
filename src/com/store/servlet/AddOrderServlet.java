package com.store.servlet;

import com.store.domain.Order;
import com.store.domain.Product;
import com.store.domain.User;
import com.store.service.OrderService;
import org.apache.commons.beanutils.BeanUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.sql.SQLException;

@WebServlet("/AddOrderServlet")
public class AddOrderServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Order order=new Order();
        request.setAttribute("receiverinfo",request.getParameter("receiverinfo"));
        try {
            BeanUtils.populate(order, request.getParameterMap());
        } catch (IllegalAccessException | InvocationTargetException e) {
            e.printStackTrace();
        }
        Product pro = (Product)request.getSession().getAttribute("pro");
        order.setDescription(pro.getDescription());
        OrderService service=new OrderService();
        try {
            service.addOrder(order,(User)request.getSession().getAttribute("user"));
            response.sendRedirect(request.getContextPath()
                    + "/index.jsp");
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    }
}
