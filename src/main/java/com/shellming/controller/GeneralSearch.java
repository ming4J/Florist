package com.shellming.controller;

import com.shellming.dao.GeneralSearchDao;
import com.shellming.entity.flower.Flower;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
public class GeneralSearch {

    @Autowired
    private GeneralSearchDao generalSearchDao;

    @RequestMapping(value = "/search",method = RequestMethod.POST)
    public@ResponseBody
    List<Flower> showBaseSearch(@RequestBody Flower flower){
        return generalSearchDao.generalSearch(flower);
    }
    @RequestMapping(value = "/search/sort",method = RequestMethod.POST)
    public@ResponseBody
    List<Flower> showBaseSearchSort(@RequestBody Flower flower){
        return generalSearchDao.generalSearchSort(flower);
    }

}
