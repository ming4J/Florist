package com.shellming.dao;

import com.shellming.entity.ClassifyIndex;
import com.shellming.entity.flower.Flower;

import java.util.List;

public interface ClassifyDao {
    List<ClassifyIndex> showClassify();
    List<Flower> showHotsale();
}
