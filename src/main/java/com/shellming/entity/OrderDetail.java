package com.shellming.entity;


public class OrderDetail {
    private String openId;
    private String orderId;
    private int flowerId;
    private String flowerName;
    private int flowerNum;
    private double disPrice;

    public String getOpenId() {
        return openId;
    }

    public void setOpenId(String openId) {
        this.openId = openId;
    }

    public String getOrderId() {
        return orderId;
    }

    public void setOrderId(String orderId) {
        this.orderId = orderId;
    }

    public int getFlowerId() {
        return flowerId;
    }

    public void setFlowerId(int flowerId) {
        this.flowerId = flowerId;
    }

    public String getFlowerName() {
        return flowerName;
    }

    public void setFlowerName(String flowerName) {
        this.flowerName = flowerName;
    }

    public int getFlowerNum() {
        return flowerNum;
    }

    public void setFlowerNum(int flowerNum) {
        this.flowerNum = flowerNum;
    }

    public double getDisPrice() {
        return disPrice;
    }

    public void setDisPrice(double disPrice) {
        this.disPrice = disPrice;
    }

    @Override
    public String toString() {
        return "OrderDetail{" +
                "openId='" + openId + '\'' +
                ", orderId='" + orderId + '\'' +
                ", flowerId=" + flowerId +
                ", flowerName='" + flowerName + '\'' +
                ", flowerNum=" + flowerNum +
                ", disPrice=" + disPrice +
                '}';
    }
}
