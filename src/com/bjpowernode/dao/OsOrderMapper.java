package com.bjpowernode.dao;

import java.util.List;

import com.bjpowernode.po.OsOrder;
import com.bjpowernode.vo.OrderVO;

public interface OsOrderMapper {
    int deleteByPrimaryKey(Long orderId);

    int insert(OsOrder record);

    int insertSelective(OsOrder record);

    OsOrder selectByPrimaryKey(Long orderId);

    OsOrder selectByOrderNumber(OsOrder osOrder);

    int updateByPrimaryKeySelective(OsOrder record);

    int updateByPrimaryKey(OsOrder record);

    List<OrderVO> selectByUserId(Long userId);

    OrderVO selectOrderVOByOrderNumber(Long orderNumber);
}