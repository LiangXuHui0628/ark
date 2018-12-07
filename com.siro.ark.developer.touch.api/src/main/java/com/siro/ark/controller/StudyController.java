package com.siro.ark.controller;


import com.siro.ark.comm.base.controller.BaseController;
import com.siro.ark.comm.shiro.ShiroUser;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;

@Controller
public class StudyController extends BaseController {


    /**
     * index 界面
     * @param request
     * @param request
     * @return
     */
    @RequestMapping(value = "/study", method = RequestMethod.GET)
    public String study(Model model, HttpServletRequest request) {
        Subject subject = SecurityUtils.getSubject();
        if(subject.isRemembered() || subject.isAuthenticated()){
            ShiroUser user = (ShiroUser) subject.getPrincipal() ;
            if("2".equals(user.getUserstate()) || "1".equals(user.getAdmin())){
                model.addAttribute("itemMenu", "study");
                return "study/study";
            }else{
                model.addAttribute("userCenter", "userCenter");
                model.addAttribute("user", user);
                model.addAttribute("message", "激活后可查看文档，和下载资源。");
                return "center/center" ;
            }
        }else{
            return  "redirect:toLogin";
        }

    }
    /**
     *
     * @param model
     * @param request
     * @return
     */
    @GetMapping(value = "apiLayouts")
    public String apiLayouts(Model model, HttpServletRequest request) {
        model.addAttribute("itemMenu", "study");
        Subject subject = SecurityUtils.getSubject();
        ShiroUser user = (ShiroUser) subject.getPrincipal() ;
        model.addAttribute("user", user);
        return "layouts/apidefault";
    }

    @RequestMapping(value = "/touchapi/welcome", method = RequestMethod.GET)
    public String welcome(Model model, HttpServletRequest request) {
        return "study/welcome";
    }
    /**
     * index 界面
     * @param request
     * @param request
     * @return
     */
    @RequestMapping(value = "/study/touch/showApi", method = RequestMethod.GET)
    public String showTouchApi(Model model, HttpServletRequest request) {
        model.addAttribute("menu", "touchinfo");
        return "page/start/touchinfo";
    }


}
