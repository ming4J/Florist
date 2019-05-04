package com.shellming.entity.cart;

import com.shellming.entity.flower.Flower;

import java.util.List;

public class Cart {
    private String openId;
    private int flowerId;
    private int flowerNum;
    private int count;

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

    private List<Flower> flower;
    public Cart(){

    }

    public String getOpenId() {
        return openId;
    }

    public void setOpenId(String openId) {
        this.openId = openId;
    }

    public int getFlowerId() {
        return flowerId;
    }

    public void setFlowerId(int flowerId) {
        this.flowerId = flowerId;
    }

    public int getFlowerNum() {
        return flowerNum;
    }

    public void setFlowerNum(int flowerNum) {
        this.flowerNum = flowerNum;
    }

    public List<Flower> getFlower() {
        return flower;
    }

    public void setFlower(List<Flower> flower) {
        this.flower = flower;
    }

    @Override
    public String toString() {
        return "Cart{" +
                "openId='" + openId + '\'' +
                ", flowerId=" + flowerId +
                ", flowerNum=" + flowerNum +
                ", count=" + count +
                ", flower=" + flower +
                '}';
    }
}
