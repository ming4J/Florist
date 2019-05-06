package com.shellming.dao;

import com.shellming.entity.flower.Flower;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface GeneralSearchDao {
    List <Flower> generalSearchSort(Flower flower);
    List<Flower> generalSearch(Flower flower);
}
