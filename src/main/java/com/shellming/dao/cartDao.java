package com.shellming.dao;

import com.shellming.entity.cart.Cart;
import org.apache.ibatis.annotations.Param;


import java.util.List;

public interface cartDao {
    List<Cart> findCartDetailByOpenId(String openId);
    void addFlowerInCart(Cart cart);
    void lessFlowerInCart(Cart cart);
    void delFlowerInCart(Cart cart);
    int countCartNumber(@Param("openId") String openId);

}
