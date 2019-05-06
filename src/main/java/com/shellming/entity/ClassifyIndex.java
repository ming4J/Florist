package com.shellming.entity;

import java.util.List;

public class ClassifyIndex {
    private int id;
    private String content;
    private List<ClassifyItem> classifyItem;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public List<ClassifyItem> getClassifyItem() {
        return classifyItem;
    }

    public void setClassifyItem(List<ClassifyItem> classifyItem) {
        this.classifyItem = classifyItem;
    }

    @Override
    public String toString() {
        return "ClassifyIndex{" +
                "id=" + id +
                ", content='" + content + '\'' +
                ", classifyItem=" + classifyItem +
                '}';
    }
}
