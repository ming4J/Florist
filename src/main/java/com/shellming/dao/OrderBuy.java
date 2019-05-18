package com.shellming.dao;

import com.shellming.entity.OrderDetail;
import com.shellming.entity.Users;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface OrderBuy {
    void buyDetail(@Param("orderDetail") List<OrderDetail> orderDetail);
    void delcart(Users users);
}
