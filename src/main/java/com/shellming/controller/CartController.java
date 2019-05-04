package com.shellming.controller;

import com.shellming.dao.cartDao;
import com.shellming.entity.cart.Cart;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;


import java.util.List;


@Api(value = "购物车的相关APIs")
@RestController
public class CartController {

    @Autowired
    private cartDao cartDao;



    @ApiOperation(value = "查看购物车接口",tags = {"购物车"},notes = "GET请求")
    @RequestMapping(value = "/cart/{openid}",method = RequestMethod.GET)
    public @ResponseBody
    List<Cart> cartView(@ApiParam(name = "openid", value = "12345", required = true) @PathVariable String openid){
        return cartDao.findCartDetailByOpenId(openid);
    }
    @RequestMapping(value = "/cart",method = RequestMethod.POST)
    public @ResponseBody void addCart(@RequestBody Cart cart){
        cartDao.addFlowerInCart(cart);
    }
    @RequestMapping(value = "/cart/less",method = RequestMethod.POST)
    public @ResponseBody void lessCart(@RequestBody Cart cart){
        cartDao.lessFlowerInCart(cart);
    }
    @RequestMapping(value = "/cart/del",method = RequestMethod.POST)
    public @ResponseBody void delCart(@RequestBody Cart cart){
        cartDao.delFlowerInCart(cart);
    }

    @RequestMapping(value = "/cart/count/{openId}",method = RequestMethod.GET)
    public @ResponseBody int countcart(@PathVariable String openId){
       return cartDao.countCartNumber(openId);
    }

}
