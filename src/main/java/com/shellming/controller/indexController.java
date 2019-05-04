package com.shellming.controller;

import com.shellming.dao.indexDao;
import com.shellming.entity.displayIndex;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
@Api(value = "小程序首页数据调用")
@RestController
public class indexController {
    @Autowired
    private indexDao indexDao;

    @ApiOperation(value = "直接访问就可以或得Index页焦点图",notes = "直接访问")
    @RequestMapping(value = "/index",method = RequestMethod.GET)
    public @ResponseBody
    List<displayIndex> showIndex(){
            return indexDao.showIndex();
    }
}
