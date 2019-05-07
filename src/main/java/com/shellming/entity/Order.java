package com.shellming.entity;


import com.shellming.entity.flower.Flower;

import java.util.List;

public class Order {
    private String orderId;
    private String openId;
    private List<Flower> flower;
    private int flowerNum;
    private int orderStatus;
    private int payStatus;

    public String getOrderId() {
        return orderId;
    }

    public void setOrderId(String orderId) {
        this.orderId = orderId;
    }

    public String getOpenId() {
        return openId;
    }

    public void setOpenId(String openId) {
        this.openId = openId;
    }

    public List<Flower> getFlower() {
        return flower;
    }

    public void setFlower(List<Flower> flower) {
        this.flower = flower;
    }

    public int getOrderStatus() {
        return orderStatus;
    }

    public void setOrderStatus(int orderStatus) {
        this.orderStatus = orderStatus;
    }

    public int getPayStatus() {
        return payStatus;
    }

    public int getFlowerNum() {
        return flowerNum;
    }

    public void setFlowerNum(int flowerNum) {
        this.flowerNum = flowerNum;
    }

    public void setPayStatus(int payStatus) {
        this.payStatus = payStatus;
    }

    @Override
    public String toString() {
        return "Order{" +
                "orderId='" + orderId + '\'' +
                ", openId='" + openId + '\'' +
                ", flower=" + flower +
                ", flowerNum=" + flowerNum +
                ", orderStatus=" + orderStatus +
                ", payStatus=" + payStatus +
                '}';
    }
}
