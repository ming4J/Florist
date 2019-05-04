package com.shellming.controller;

import com.shellming.dao.flowerDao;
import com.shellming.entity.flower.Flower;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Api(value = "首页鲜花展示")
@RestController
public class flowerController {

    @Autowired
    private flowerDao flowerDao;

    @ApiOperation(value = "店铺热销/上新接口",tags = {"首页"},notes = "GET请求")
    @RequestMapping(value = "/all/{showIndex}",method = RequestMethod.GET)
    public @ResponseBody
    List<Flower> hotSale(@ApiParam(name = "showIndex",value = "鲜花展示标记",required = true) @PathVariable int showIndex){
        return flowerDao.hotSaling(showIndex);
    }

    @ApiOperation(value = "快速选花",tags = {"首页"},notes = "GET请求")
    @RequestMapping(value = "/all/{scene}",method = RequestMethod.GET)
    public @ResponseBody List<Flower> scene(@ApiParam(name = "scene",value = "送花场景的快速选花",required = true) @PathVariable String scene){
        return flowerDao.scene(scene);
    }

    @ApiOperation(value = "鲜花详情页",tags = {"首页"},notes = "GET请求")
    @RequestMapping(value = "/all/search/{id}",method = RequestMethod.GET)
    public @ResponseBody Flower findFlowerById(@ApiParam(name = "findFlowerById",value = "根据id查找鲜花详情",required = true)@PathVariable int id){
        return flowerDao.findFlowerById(id);
    }


}
