package com.store.dao;

import com.store.domain.User;
import com.store.utils.DataSourceUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;

import java.sql.SQLException;

public class UserDao {
    //1. 注册操作
    public void addUser(User user) throws SQLException {

        String sql = "insert into users values(null,?,?)";

        QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());

        runner.update(sql, user.getUsername(),
                user.getPassword());
    }

    public User findUserByLogin(String username, String password) throws SQLException {
            String sql = "select * from users where username=? and password=?";
            QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
            return runner.query(sql, new BeanHandler<User>(User.class), username,
                    password);

    }


}
