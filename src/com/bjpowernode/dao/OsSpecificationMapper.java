package com.bjpowernode.dao;

import com.bjpowernode.po.OsSpecification;

public interface OsSpecificationMapper {
    int deleteByPrimaryKey(Long specificationId);

    int insert(OsSpecification record);

    int insertSelective(OsSpecification record);

    OsSpecification selectByPrimaryKey(Long specificationId);

    int updateByPrimaryKeySelective(OsSpecification record);

    int updateByPrimaryKey(OsSpecification record);
}