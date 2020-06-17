package com.store.dao;


import com.store.domain.Order;
import com.store.domain.User;
import com.store.domain.UserOrder;
import com.store.utils.DataSourceUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.ResultSetHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

public class OrderDao {

    //添加订单操作
    public int addOrder(Order order, User user) throws SQLException {
        String sql="insert into orders values(null,?,?,?,?,?,?)";
        QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
        Date d=new Date();
        SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        //格式化为日期/时间字符串
        String cc=sdf.format(d);
        return runner.update(sql,order.getMoney(),order.getReceiverinfo(),order.getDescription(),cc,user.getId(),0);
    }

    public List<Order> findOrder(int uid) throws SQLException {
        String sql="select * from orders where user_id=?";
        QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
        return runner.query(sql, new BeanListHandler<Order>(Order.class),uid);
    }

    public List<UserOrder> findAllOrder() throws SQLException {
        String sql="select a.id,a.money,a.receiverinfo,a.description,a.ordertime,a.user_id,a.ShippingState,b.username,b.telephone from orders a left join Users b on a.user_id=b.id";
        QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
        return runner.query(sql, new BeanListHandler<UserOrder>(UserOrder.class));
    }

    public void shipOrder(int id) throws SQLException{
        String sql = "update orders set ShippingState='1' where id = ?";
        QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
        runner.update(sql,id);
    }

    public void delOrder(int id) throws SQLException {
        String sql="delete from orders where id=?";
        QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
        runner.update(sql, id);
    }


}
