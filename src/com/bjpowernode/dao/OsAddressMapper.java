package com.bjpowernode.dao;

import java.util.List;

import com.bjpowernode.po.OsAddress;

public interface OsAddressMapper {
    int deleteByPrimaryKey(Long addressId);

    int insert(OsAddress record);

    int insertSelective(OsAddress record);

    OsAddress selectByPrimaryKey(Long addressId);

    List<OsAddress> selectByUserId(Long userId);

    OsAddress selectByAddressId(Long addressId);

    int updateByPrimaryKeySelective(OsAddress record);

    int updateByPrimaryKey(OsAddress record);
}