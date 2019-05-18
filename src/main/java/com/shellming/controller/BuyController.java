package com.shellming.controller;

import com.alibaba.fastjson.JSONObject;
import com.shellming.dao.OrderBuy;
import com.shellming.entity.OrderDetail;
import com.shellming.entity.Users;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class BuyController {

    @Autowired
    private OrderBuy orderBuy;

    @RequestMapping(value = "/order/go",method = RequestMethod.POST)
    public void buy(){

    }
    @RequestMapping(value = "/order/com",method = RequestMethod.POST)
    public void buy(@RequestBody Users users){
        orderBuy.delcart(users);
    }
}
