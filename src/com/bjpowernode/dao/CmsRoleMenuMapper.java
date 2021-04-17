package com.bjpowernode.dao;

import com.bjpowernode.po.CmsRoleMenu;

public interface CmsRoleMenuMapper {
    int deleteByPrimaryKey(Long roleMenuId);

    int insert(CmsRoleMenu record);

    int insertSelective(CmsRoleMenu record);

    CmsRoleMenu selectByPrimaryKey(Long roleMenuId);

    int updateByPrimaryKeySelective(CmsRoleMenu record);

    int updateByPrimaryKey(CmsRoleMenu record);
}