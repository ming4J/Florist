package com.shellming.entity.flower;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.databind.ObjectMapper;

import org.springframework.stereotype.Component;

import java.util.List;


@JsonInclude(JsonInclude.Include.NON_NULL)
@Component(value = "flower")
public class Flower {
    private int flowerId;
    private String flowerName;
    private String flowerDesc;
    private Double disPrice;
    private Double price;
    private int salesVol;
    private int stock;
    private int category;
    private int rated;
    private String scene;
    private String color;
    private String material;
    private String bannerString;
    private String detailPicString;
    private String flowerSpecString;
    private List<banner> banner;
    private List<detailPic>detailPic;
    private List<flowerSpec>flowerSpec;
    private int showIndex;
    private String flowerThumb;
    private int orderBySaleVol;
    private int orderByPrice;
    private int orderByTime;
    private int orderByRated;

    public Flower(){

    }

    public String getBannerString() {
        return bannerString;
    }

    public void setBannerString(String bannerString) {
        ObjectMapper objectMapper=new ObjectMapper();
        try{
            @SuppressWarnings("unchecked")
            List<banner> list=objectMapper.readValue(bannerString,List.class);
            setBanner(list);
            this.bannerString=bannerString;

        }catch (Exception e){
            e.printStackTrace();

        }
        this.bannerString = bannerString;
    }

    public String getDetailPicString() {
        return detailPicString;
    }

    public void setDetailPicString(String detailPicString) {
        ObjectMapper objectMapper=new ObjectMapper();
        try{
            @SuppressWarnings("unchecked")
            List<detailPic> list=objectMapper.readValue(detailPicString,List.class);
            setDetailPic(list);
            this.detailPicString=detailPicString;

        }catch (Exception e){
            e.printStackTrace();

        }

    }

    public String getFlowerSpecString() {
        return flowerSpecString;
    }

    public void setFlowerSpecString(String flowerSpecString) {
        ObjectMapper objectMapper=new ObjectMapper();
        try{
            @SuppressWarnings("unchecked")
            List<flowerSpec> list=objectMapper.readValue(flowerSpecString,List.class);
            setFlowerSpec(list);
            this.flowerSpecString=flowerSpecString;

        }catch (Exception e){
            e.printStackTrace();

        }
    }



    public String getFlowerThumb() {
        return flowerThumb;
    }

    public void setFlowerThumb(String flowerThumb) {
        this.flowerThumb = flowerThumb;
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

    public String getFlowerDesc() {
        return flowerDesc;
    }

    public void setFlowerDesc(String flowerDesc) {
        this.flowerDesc = flowerDesc;
    }

    public Double getDisPrice() {
        return disPrice;
    }

    public void setDisPrice(Double disPrice) {
        this.disPrice = disPrice;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public int getSalesVol() {
        return salesVol;
    }

    public void setSalesVol(int salesVol) {
        this.salesVol = salesVol;
    }

    public int getStock() {
        return stock;
    }

    public void setStock(int stock) {
        this.stock = stock;
    }

    public int getCategory() {
        return category;
    }

    public void setCategory(int category) {
        this.category = category;
    }

    public int getRated() {
        return rated;
    }

    public void setRated(int rated) {
        this.rated = rated;
    }

    public String getScene() {
        return scene;
    }

    public void setScene(String scene) {
        this.scene = scene;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public String getMaterial() {
        return material;
    }

    public void setMaterial(String material) {
        this.material = material;
    }

    public int getOrderBySaleVol() {
        return orderBySaleVol;
    }

    public void setOrderBySaleVol(int orderBySaleVol) {
        this.orderBySaleVol = orderBySaleVol;
    }

    public int getOrderByPrice() {
        return orderByPrice;
    }

    public void setOrderByPrice(int orderByPrice) {
        this.orderByPrice = orderByPrice;
    }

    public int getOrderByTime() {
        return orderByTime;
    }

    public void setOrderByTime(int orderByTime) {
        this.orderByTime = orderByTime;
    }

    public int getOrderByRated() {
        return orderByRated;
    }

    public void setOrderByRated(int orderByRated) {
        this.orderByRated = orderByRated;
    }

    public List<com.shellming.entity.flower.banner> getBanner() {
        return banner;
    }

    public void setBanner(List<com.shellming.entity.flower.banner> banner) {
        this.banner = banner;
    }

    public List<com.shellming.entity.flower.detailPic> getDetailPic() {
        return detailPic;
    }

    public void setDetailPic(List<com.shellming.entity.flower.detailPic> detailPic) {
        this.detailPic = detailPic;
    }

    public List<com.shellming.entity.flower.flowerSpec> getFlowerSpec() {
        return flowerSpec;
    }


    public void setFlowerSpec(List<com.shellming.entity.flower.flowerSpec> flowerSpec) {
        this.flowerSpec = flowerSpec;
    }

    public int getShowIndex() {
        return showIndex;
    }

    public void setShowIndex(int showIndex) {
        this.showIndex = showIndex;
    }

    @Override
    public String toString() {
        return "Flower{" +
                "flowerId=" + flowerId +
                ", flowerName='" + flowerName + '\'' +
                ", flowerDesc='" + flowerDesc + '\'' +
                ", disPrice=" + disPrice +
                ", price=" + price +
                ", salesVol=" + salesVol +
                ", stock=" + stock +
                ", category=" + category +
                ", rated=" + rated +
                ", scene='" + scene + '\'' +
                ", color='" + color + '\'' +
                ", material='" + material + '\'' +
                ", bannerString='" + bannerString + '\'' +
                ", detailPicString='" + detailPicString + '\'' +
                ", flowerSpecString='" + flowerSpecString + '\'' +
                ", banner=" + banner +
                ", detailPic=" + detailPic +
                ", flowerSpec=" + flowerSpec +
                ", showIndex=" + showIndex +
                ", flowerThumb='" + flowerThumb + '\'' +
                ", orderBySaleVol=" + orderBySaleVol +
                ", orderByPrice=" + orderByPrice +
                ", OrderByTime=" + orderByTime +
                ", OrderByRated=" + orderByRated +
                '}';
    }
}
