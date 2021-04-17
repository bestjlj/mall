package com.bjpowernode.dao;

import com.bjpowernode.po.OsOrderShipment;

public interface OsOrderShipmentMapper {
    int deleteByPrimaryKey(Long orderShipmentId);

    int insert(OsOrderShipment record);

    int insertSelective(OsOrderShipment record);

    OsOrderShipment selectByPrimaryKey(Long orderShipmentId);

    OsOrderShipment selectByOderId(Long orderId);

    int updateByPrimaryKeySelective(OsOrderShipment record);

    int updateByPrimaryKey(OsOrderShipment record);
}