package com.siro.ark.web.controller;

import com.siro.ark.comm.base.controller.BaseController;
import com.siro.ark.comm.shiro.ShiroUser;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
public class SiteMeshController extends BaseController {

    /**
     * 查询系统用户 侧边栏菜单
     * @param model
     * @param request
     * @return
     */
    @GetMapping(value = "layouts")
    public String getIndex(Model model, HttpServletRequest request) {
        Subject subject = SecurityUtils.getSubject();
        ShiroUser user = (ShiroUser) subject.getPrincipal() ;
        model.addAttribute("user", user);
        return "layouts/default";
    }

    @PostMapping(value = "layouts")
    public String postIndex(Model model, HttpServletRequest request) {
        return getIndex( model,  request);
    }
}
