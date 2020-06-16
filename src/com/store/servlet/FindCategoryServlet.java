package com.store.servlet;

import com.store.dao.NodeDateDao;
import com.store.domain.NodeDate;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.net.URLDecoder;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

@WebServlet("/FindCategoryServlet")
public class FindCategoryServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            request.getSession().removeAttribute("c1name");

            NodeDateDao dao = new NodeDateDao();
            request.setCharacterEncoding("utf-8");
            response.setContentType("text/html;utf-8");
            String c1name = request.getParameter("name");
            c1name = URLDecoder.decode(c1name, "utf-8");


            request.getSession().setAttribute("c1name", c1name);
            NodeDate node = dao.getNoteDate(c1name);

            //String code = node.getCode();
            String code="51";
            if(c1name.equals("平板")){
                code="52";
            }else if(c1name.equals("笔记本")){
                code="53";
            }else if(c1name.equals("配件")){
                code="54";
            }

            List<HashMap<String, Object>> c2name = new ArrayList<>();
            for (int i = 0; i < dao.getNextName(code).size(); i++) {
                HashMap<String, Object> map = new HashMap<>();
                map.put("code", dao.getNextName(code).get(i).getCode());
                map.put("name", dao.getNextName(code).get(i).getName());
                c2name.add(map);
            }

            request.getSession().setAttribute("c2name", c2name);
            response.sendRedirect("/devotion/ProductFindByPageCodeServlet?code="+code);
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }
}
