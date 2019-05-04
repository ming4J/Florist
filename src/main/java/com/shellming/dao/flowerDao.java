package com.shellming.dao;

import com.shellming.entity.flower.Flower;

import java.util.List;

public interface flowerDao {
    List<Flower> hotSaling(int showIndex);
    List<Flower> scene(String Scene);
    Flower findFlowerById(int flowerId);
}
