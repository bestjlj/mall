package com.bjpowernode.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;

import com.bjpowernode.dao.OsUserMapper;
import com.bjpowernode.po.OsUser;

/**
 * @Author bjpowernode
 * @Date 2017/8/11 13:35
 */
@Service
public class OsUserService {

    @Autowired
    private OsUserMapper osUserMapper;

    public void insertUser(OsUser user) {
        osUserMapper.insertSelective(user);
    }

    public OsUser selectUser(String loginName, String loginPassword) {
        OsUser user = osUserMapper.selectByTelephone(loginName);
        return user;
    }
}
