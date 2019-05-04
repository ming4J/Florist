package com.shellming.controller;

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
    void addAdress(@RequestBody adress adress){
        addressDao.addAdress(adress);
    }

    @RequestMapping(value = "/address/{openId}",method = RequestMethod.GET)
    public @ResponseBody
    List<adress> listAdress(@PathVariable String openId){
        return addressDao.listAddress(openId);
    }

    @RequestMapping(value = "/address/del",method = RequestMethod.POST)
    public @ResponseBody
    void delAdress(@RequestBody adress adress){
        addressDao.delAddress(adress);
    }

    @RequestMapping(value = "/address/one",method = RequestMethod.POST)
    public @ResponseBody
    adress showAddressById(@RequestBody adress adress){
        return addressDao.showAddressById(adress);
    }
    @RequestMapping(value = "/address/edit",method = RequestMethod.POST)
    public @ResponseBody
    void editAddress(@RequestBody adress adress){
        addressDao.editAddress(adress);
    }
}
