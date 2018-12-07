package com.siro.ark.controller;


import com.siro.ark.comm.base.controller.BaseController;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;

@Controller
public class AdminController extends BaseController {

    /**
     * index 界面
     * @param request
     * @param request
     * @return
     */
    @RequestMapping(value = "/admin/allInfo", method = RequestMethod.GET)
    public String allInfo(Model model, HttpServletRequest request) {
        model.addAttribute("menu", "allInfo");
        return "admin/allInfo";
    }
    /**
     * index 界面
     * @param request
     * @param request
     * @return
     */
    @RequestMapping(value = "/admin", method = RequestMethod.GET)
    public String admin(Model model, HttpServletRequest request) {
        return "admin/adminIndex";
    }

}
