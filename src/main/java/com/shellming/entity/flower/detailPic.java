package com.shellming.entity.flower;



public class detailPic {
    private int id;
    private String url;
    public detailPic(){

    }

    public String getUrl() {
        return url;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    @Override
    public String toString() {
        return "detailPic{" +
                "id=" + id +
                ", url='" + url + '\'' +
                '}';
    }
}
