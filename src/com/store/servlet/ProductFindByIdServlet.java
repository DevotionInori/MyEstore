package com.store.servlet;

import com.store.domain.Product;
import com.store.domain.User;
import com.store.service.ProductService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/ProductFindByIdServlet")

public class ProductFindByIdServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");

        //调用service中查询所有方法
        ProductService service = new ProductService();

        try {
            Product pro = service.findById(Integer.parseInt(id));

            request.getSession().setAttribute("pro", pro);

            User user = (User) request.getSession().getAttribute("user");


            request.getRequestDispatcher("/fastbuy.jsp").forward(request, response);
        } catch (SQLException e) {
            e.printStackTrace();
            response.getWriter().write(e.getMessage());
        }
    }
}
