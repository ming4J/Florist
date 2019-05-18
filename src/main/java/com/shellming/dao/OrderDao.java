package com.shellming.dao;

import com.shellming.entity.Order;
import org.apache.ibatis.annotations.Param;

public interface OrderDao {

    void buyFlower(Order order);
    void updateStatus(@Param("status")int status,@Param("orderId") String OrderId);
}
