package com.shellming.entity.flower;




public class banner {
    private int id;
    private String url;
    public banner(){

    }

    public int getId() {
        return id;
    }

    public String getUrl() {
        return url;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setUrl(String url) {

        this.url = url;
    }

    @Override
    public String toString() {
        return "banner{" +
                "id=" + id +
                ", url='" + url + '\'' +
                '}';
    }
}
