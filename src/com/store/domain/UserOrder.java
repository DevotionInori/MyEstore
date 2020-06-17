package com.store.domain;

public class UserOrder {
    private int id; // 订单号
    private double money; // 金额
    private String receiverinfo; // 收货人信息
    private String description; // 支付状态
    private String ordertime; // 下单时间
    private int user_id; // 下单用户
    private int shippingState;
    private String username; // 用户名
    private String telephone;

    public UserOrder() {
    }

    public UserOrder(int id, double money, String receiverinfo, String description, String ordertime, int user_id, int shippingState, String username, String telephone) {
        this.id = id;
        this.money = money;
        this.receiverinfo = receiverinfo;
        this.description = description;
        this.ordertime = ordertime;
        this.user_id = user_id;
        this.shippingState = shippingState;
        this.username = username;
        this.telephone = telephone;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

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

    public int getShippingState() {
        return shippingState;
    }

    public void setShippingState(int shippingState) {
        this.shippingState = shippingState;
    }

    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }
}
