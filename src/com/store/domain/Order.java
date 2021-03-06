package com.store.domain;

import java.sql.Timestamp;

public class Order {


    private int id; // 订单号
    private double money; // 金额
    private String receiverinfo; // 收货人信息
    private String description; // 支付状态
    private String ordertime; // 下单时间
    private int user_id; // 下单用户
    private int shippingState;

    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }
    public double getMoney() {
        return money;
    }
    public void setMoney(double money) {
        this.money = money;
    }
    public String getReceiverinfo() {
        return receiverinfo;
    }
    public void setReceiverinfo(String receiverinfo) {
        this.receiverinfo = receiverinfo;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getShippingState() {
        return shippingState;
    }

    public void setShippingState(int shippingState) {
        this.shippingState = shippingState;
    }

    public String getOrdertime() {
        return ordertime;
    }
    public void setOrdertime(String ordertime) {
        this.ordertime = ordertime;
    }
    public int getUser_id() {
        return user_id;
    }
    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }
    public Order() {
    }

}
