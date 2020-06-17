package com.store.domain;

import java.sql.Timestamp;
import java.util.HashMap;
import java.util.Map;

public class User {
    private int id; // 用户编号
    private String username; // 用户名
    private String password; // 密码
    private String telephone;
    private String type;

    public int getId() {
        return id;
    }

    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }
}
