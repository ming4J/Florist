package com.shellming.controller;

import com.shellming.dao.OrderDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
public class PayMentController {

    @Autowired
    private OrderDao orderDao;

    @RequestMapping(value = "/payment",method = RequestMethod.GET)
    public void pay(@RequestParam String order_id, @RequestParam double qr_price, @RequestParam String sign){
        System.err.println(order_id);
        System.err.println(qr_price);
        System.err.println(sign);
        if(order_id!=""&&qr_price!=0&&sign!=""){

            orderDao.updateStatus(1,order_id);
        }

    }
}
