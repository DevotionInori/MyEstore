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
import java.util.List;

@WebServlet("/ProductFindAllServlet")
public class ProductFindAllServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        ProductService service = new ProductService();

        try {
            List<Product> pro = service.findAll();

            request.setAttribute("pro", pro);

            List<Product> pro1 = service.findByCode("51");

            request.setAttribute("pro1", pro1);

            List<Product> pro2 = service.findByCode("52");

            request.setAttribute("pro2", pro2);

            List<Product> pro3 = service.findByCode("53");

            request.setAttribute("pro3", pro3);

            List<Product> pro4 = service.findByCode("54");

            request.setAttribute("pro4", pro4);

            User user = (User) request.getSession().getAttribute("user");

            request.getRequestDispatcher("/home.jsp").forward(request, response);

        } catch (SQLException e) {
            e.printStackTrace();
            response.getWriter().write(e.getMessage());
        }
    }
}
