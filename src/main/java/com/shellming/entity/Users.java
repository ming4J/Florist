package com.shellming.entity;

public class Users {
    private String openId;
    private String nickname;
    private int status;
    private String avatar;

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    public String getOpenId() {
        return openId;
    }

    public void setOpenId(String openId) {
        this.openId = openId;
    }

    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "Users{" +
                "openId='" + openId + '\'' +
                ", nickname='" + nickname + '\'' +
                ", status=" + status +
                ", avatar='" + avatar + '\'' +
                '}';
    }
}
