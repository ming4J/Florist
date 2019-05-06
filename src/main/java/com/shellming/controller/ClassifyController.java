package com.shellming.controller;

import com.shellming.dao.ClassifyDao;
import com.shellming.entity.ClassifyIndex;
import com.shellming.entity.flower.Flower;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class ClassifyController {

    @Autowired
    private ClassifyDao classifyDao;

    @RequestMapping(value = "/classify",method = RequestMethod.GET)
    public @ResponseBody
    List<ClassifyIndex> showClassify(){

        return classifyDao.showClassify();
    }
    @RequestMapping(value = "/classify/hot",method = RequestMethod.GET)
    public @ResponseBody List<Flower> showHotSale(){
        return classifyDao.showHotsale();
    }
}
