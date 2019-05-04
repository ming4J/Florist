package com.shellming.entity;

public class displayIndex {
    private String id;
    private String imgurl;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getImgurl() {
        return imgurl;
    }

    public void setImgurl(String imgurl) {
        this.imgurl = imgurl;
    }

    @Override
    public String toString() {
        return "displayIndex{" +
                "id='" + id + '\'' +
                ", imgurl='" + imgurl + '\'' +
                '}';
    }
}
