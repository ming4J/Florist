package com.shellming.controller;

import com.shellming.dao.OrderDao;
import com.shellming.entity.Order;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class OrderController {

    @Autowired
    private OrderDao orderDao;

    @RequestMapping(value = "/order",method = RequestMethod.POST)
    public void buyFlower(@RequestBody Order order){
        orderDao.buyFlower(order);
    }


}
