package com.shellming.dao;

import com.shellming.entity.adress;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface addressDao {
    void addAdress(adress adress);
    List<adress> listAddress(@Param("openId") String openId);
    void delAddress(adress adress);
    adress showAddressById(adress adress);
    void editAddress(adress adress);
}
