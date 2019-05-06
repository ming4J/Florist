package com.shellming.entity;


public class ClassifyItem {
    private int itemId;
    private int parentId;
    private String imgUrl;
    private String itemContent;
    private String redirectUrl;

    public int getItemId() {
        return itemId;
    }

    public void setItemId(int itemId) {
        this.itemId = itemId;
    }

    public int getParentId() {
        return parentId;
    }

    public void setParentId(int parentId) {
        this.parentId = parentId;
    }

    public String getImgUrl() {
        return imgUrl;
    }

    public void setImgUrl(String imgUrl) {
        this.imgUrl = imgUrl;
    }

    public String getItemContent() {
        return itemContent;
    }

    public void setItemContent(String itemContent) {
        this.itemContent = itemContent;
    }

    public String getRedirectUrl() {
        return redirectUrl;
    }

    public void setRedirectUrl(String redirectUrl) {
        this.redirectUrl = redirectUrl;
    }

    @Override
    public String toString() {
        return "ClassifyItem{" +
                "itemId=" + itemId +
                ", parentId=" + parentId +
                ", imgUrl='" + imgUrl + '\'' +
                ", itemContent='" + itemContent + '\'' +
                ", redirectUrl='" + redirectUrl + '\'' +
                '}';
    }
}
