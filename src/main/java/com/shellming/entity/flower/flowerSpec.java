package com.shellming.entity.flower;




public class flowerSpec {
    private int id;
    private String content;
    public flowerSpec(){

    }
    public int getId() {
        return id;
    }

    public String getContent() {
        return content;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setContent(String content) {
        this.content = content;
    }

    @Override
    public String toString() {
        return "flowerSpec{" +
                "id=" + id +
                ", content='" + content + '\'' +
                '}';
    }
}
