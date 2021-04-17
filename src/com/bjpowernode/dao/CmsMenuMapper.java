package com.bjpowernode.dao;

import com.bjpowernode.po.CmsMenu;

public interface CmsMenuMapper {
    int deleteByPrimaryKey(Long menuId);

    int insert(CmsMenu record);

    int insertSelective(CmsMenu record);

    CmsMenu selectByPrimaryKey(Long menuId);

    int updateByPrimaryKeySelective(CmsMenu record);

    int updateByPrimaryKey(CmsMenu record);
}