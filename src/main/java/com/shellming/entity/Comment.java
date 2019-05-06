package com.shellming.entity;

public class Comment {
    private Users users;
    private int flowerId;
    private String openId;
    private String content;
    private int crated;

    public Users getUsers() {
        return users;
    }

    public void setUsers(Users users) {
        this.users = users;
    }

    public int getFlowerId() {
        return flowerId;
    }

    public void setFlowerId(int flowerId) {
        this.flowerId = flowerId;
    }

    public String getOpenId() {
        return openId;
    }

    public void setOpenId(String openId) {
        this.openId = openId;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public int getCrated() {
        return crated;
    }

    public void setCrated(int crated) {
        this.crated = crated;
    }

    @Override
    public String toString() {
        return "Comment{" +
                "users=" + users +
                ", flowerId=" + flowerId +
                ", openId='" + openId + '\'' +
                ", content='" + content + '\'' +
                ", crated=" + crated +
                '}';
    }
}
