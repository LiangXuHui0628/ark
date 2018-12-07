package com.siro.ark.controller;


import com.siro.ark.comm.base.controller.BaseController;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;

@Controller
public class BlogController extends BaseController {

    /**
     * index 界面
     * @param request
     * @param request
     * @return
     */
    @RequestMapping(value = "/blog", method = RequestMethod.GET)
    public String blog(Model model, HttpServletRequest request) {
        model.addAttribute("itemMenu", "blog");
        return "blog/blog";
    }

}
