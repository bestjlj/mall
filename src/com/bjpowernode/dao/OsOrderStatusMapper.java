package com.bjpowernode.dao;

import com.bjpowernode.po.OsOrderStatus;

public interface OsOrderStatusMapper {
    int deleteByPrimaryKey(Long orderStatusId);

    int insert(OsOrderStatus record);

    int insertSelective(OsOrderStatus record);

    OsOrderStatus selectByPrimaryKey(Long orderStatusId);

    int updateByPrimaryKeySelective(OsOrderStatus record);

    int updateByPrimaryKey(OsOrderStatus record);
}