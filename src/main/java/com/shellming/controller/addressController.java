package com.shellming.controller;

import com.alibaba.fastjson.JSONObject;
import com.shellming.dao.addressDao;
import com.shellming.entity.adress;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
public class addressController {

    @Autowired
    private addressDao addressDao;


    @RequestMapping(value = "/address",method = RequestMethod.POST)
    public @ResponseBody
    JSONObject addAdress(@RequestBody adress adress){
        addressDao.addAdress(adress);
        JSONObject jsonObject=new JSONObject();
        jsonObject.fluentPut("status","add");
        return jsonObject;
    }

    @RequestMapping(value = "/address/{openId}",method = RequestMethod.GET)
    public @ResponseBody
    List<adress> listAdress(@PathVariable String openId){
        return addressDao.listAddress(openId);
    }

    @RequestMapping(value = "/address/del",method = RequestMethod.POST)
    public @ResponseBody
    JSONObject delAdress(@RequestBody adress adress){
        JSONObject jsonObject=new JSONObject();
        jsonObject.fluentPut("status","del");
        addressDao.delAddress(adress);
        return jsonObject;
    }

    @RequestMapping(value = "/address/one",method = RequestMethod.POST)
    public @ResponseBody
    adress showAddressById(@RequestBody adress adress){
        return addressDao.showAddressById(adress);
    }
    @RequestMapping(value = "/address/edit",method = RequestMethod.POST)
    public @ResponseBody
    JSONObject editAddress(@RequestBody adress adress){
        JSONObject jsonObject=new JSONObject();
        jsonObject.fluentPut("status","edit");
        addressDao.editAddress(adress);
        return jsonObject;
    }
    @RequestMapping(value = "/address/top",method = RequestMethod.POST)
    public @ResponseBody
    JSONObject topAddress(@RequestBody adress adress){
        System.err.println(adress);
        JSONObject jsonObject=new JSONObject();
        jsonObject.fluentPut("status","top");
        addressDao.updateAddressTop(adress);
        return jsonObject;
    }
    @RequestMapping(value = "/address/top/m",method = RequestMethod.POST)
    public @ResponseBody
    JSONObject top(){

        JSONObject jsonObject=new JSONObject();
        jsonObject.fluentPut("status","masterTop");
        addressDao.top();
        return jsonObject;
    }

}
