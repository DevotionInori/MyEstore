package com.store.service;


import com.store.dao.OrderDao;
import com.store.domain.Order;
import com.store.domain.User;

import java.sql.SQLException;

public class OrderService {
    public int addOrder(Order order, User user) throws SQLException {
        OrderDao dao=new OrderDao();
        int i = 0;
        i = dao.addOrder(order,user);
        return i;
    }


}
