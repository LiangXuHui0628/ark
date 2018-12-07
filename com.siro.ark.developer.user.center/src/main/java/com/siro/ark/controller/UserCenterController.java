package com.siro.ark.controller;


import com.siro.ark.comm.base.controller.BaseController;
import com.siro.ark.comm.base.entity.ReturnDTO;
import com.siro.ark.comm.shiro.ShiroUser;
import com.siro.ark.comm.util.ReturnDTOUtil;
import com.siro.ark.entity.ArkDevUser;
import com.siro.ark.service.IArkDevUserService;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class UserCenterController extends BaseController {

    @Autowired
    private IArkDevUserService devUserService;

    /**
     * index 界面
     * @param request
     * @param request
     * @return
     */
    @RequestMapping(value = "/user/center", method = RequestMethod.GET)
    public String product(Model model, HttpServletRequest request) {
        model.addAttribute("userCenter", "userCenter");
        Subject subject = SecurityUtils.getSubject();
        ShiroUser user = (ShiroUser) subject.getPrincipal() ;
        ArkDevUser arkDevUser = devUserService.getById(user.getId()) ;
        model.addAttribute("user", arkDevUser);
        return "center/center";
    }

    /**
     * 注册用户登陆名称检查
     * @param request
     * @return
     */
    @GetMapping(value = "/user/center/activate")
    public String doActivate(HttpServletRequest request) {
        Subject subject = SecurityUtils.getSubject();
        ShiroUser user = (ShiroUser) subject.getPrincipal() ;
        ArkDevUser arkDevUser = devUserService.getById(user.getId()) ;
        arkDevUser.setUserstate("1");
        devUserService.insertOrUpdate(arkDevUser) ;
        return "redirect:/user/center";
    }

}
