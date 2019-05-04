package com.shellming.controller;

import com.shellming.dao.noticeDao;
import com.shellming.entity.noticeIndex;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
@Api
@RestController
public class noticeController {


    @Autowired
    private noticeDao noticeDao;

    @ApiOperation(value = "直接访问就可以获得notice",notes = "get请求直接访问")
    @RequestMapping(value = "/notice",method = RequestMethod.GET)
    public @ResponseBody noticeIndex showNotice(){
        return noticeDao.showNotice();
    }

}
