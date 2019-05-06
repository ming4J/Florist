package com.shellming.dao;

import com.shellming.entity.flower.Flower;

import java.util.List;

public interface GeneralSearchDao {
    List<Flower> generalSearch(String category,String scene,String material,int orderBySaleVol,int orderByPrice,int orderByTime,int orderByRated);
}
