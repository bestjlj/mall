package com.bjpowernode.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import com.bjpowernode.common.OsResult;
import com.bjpowernode.po.OsUser;
import com.bjpowernode.service.OsCategoryService;
import com.bjpowernode.service.OsUserService;
import com.bjpowernode.util.CreateImageCode;
import com.bjpowernode.util.GetRandom;
import com.bjpowernode.vo.CartVO;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * 前台用户控制器
 *
 * @author bjpowernode
 */
@Controller
@RequestMapping("/pass")
public class OsUserLoginController {

    @Autowired
    OsCategoryService osCategoryService;
    @Autowired
    OsUserService osUserService;

    //登录访问
    @RequestMapping("/login")
    public String loginUI(HttpServletRequest request) {
        return "/user/user_login";
    }

    //注册
    @RequestMapping("/register")
    public String registerUI(HttpServletRequest request) {
        return "/user/user_register";
    }

    @RequestMapping(value = "/register", method = RequestMethod.POST)
    @ResponseBody
    public Object register(@ModelAttribute("user") OsUser user, @RequestParam("registerCode") String registerCode, HttpSession session) {
        String code = (String) session.getAttribute("code");
        Long num = GetRandom.getNumber();
        user.setUserNumber(num);
        if (code.equals(registerCode)) {
            try {
                osUserService.insertUser(user);
                return new OsResult(1, user.getUserName());
            } catch (Exception e) {
                return new OsResult(0, "注册失败");
            }
        } else {
            return new OsResult(0, "验证码错误");
        }
    }

    //登录
    @RequestMapping(value = "/login", method = RequestMethod.POST)
    @ResponseBody
    public Object login(@RequestParam("loginName") String loginName,
                        @RequestParam("loginPassword") String loginPassword, HttpSession session) {
        OsUser user = osUserService.selectUser(loginName, loginPassword);
        if (user == null || !loginPassword.equals(user.getLoginPassword())) {
        	return new OsResult(0, "登录失败，用户名或密码错误");
        } else {
			session.setAttribute("user", user);
			CartVO cartVO = new CartVO();
			session.setAttribute("cart", cartVO);
			return new OsResult(1, "");
            
        }
    }

    //登出
    @RequestMapping("/logout")
    public String loginUI(HttpServletRequest request, HttpSession session) {
        session.invalidate();
        return "redirect:/index";
    }

    @RequestMapping(value = "/captcha-image.jpg")
    @ResponseBody
    public void getImageCode(HttpServletRequest req, HttpServletResponse response, HttpSession session) throws IOException {
        // 设置响应的类型格式为图片格式
        response.setContentType("image/jpeg");
        //禁止图像缓存。
        response.setHeader("Pragma", "no-cache");
        response.setHeader("Cache-Control", "no-cache");
        response.setDateHeader("Expires", 0);
        CreateImageCode vCode = new CreateImageCode(100, 30, 4, 8);
        System.out.println("code" + vCode.getCode());
        session.setAttribute("code", vCode.getCode());
        vCode.write(response.getOutputStream());
    }

}
