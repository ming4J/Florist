package com.shellming.entity;

public class noticeIndex {
    private int id;
    private String content;
    public noticeIndex(){

    }
    public void setId(int id) {
        this.id = id;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public int getId() {
        return id;
    }

    public String getContent() {
        return content;
    }

    @Override
    public String toString() {
        return super.toString();
    }
}
