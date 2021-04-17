package com.bjpowernode.dao;

import java.util.List;

import com.bjpowernode.po.OsOrderProduct;

public interface OsOrderProductMapper {
    int deleteByPrimaryKey(Long orderProductId);

    int insert(OsOrderProduct record);

    int insertSelective(OsOrderProduct record);

    OsOrderProduct selectByPrimaryKey(Long orderProductId);

    List<OsOrderProduct> selectByOrderId(Long orderId);

    int updateByPrimaryKeySelective(OsOrderProduct record);

    int updateByPrimaryKey(OsOrderProduct record);
    
    
}