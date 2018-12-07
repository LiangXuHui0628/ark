package com.siro.ark.controller;


import com.siro.ark.comm.base.controller.BaseController;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;

@Controller
public class StartController extends BaseController {


    /**
     * index 界面
     * @param request
     * @param request
     * @return
     */
    @RequestMapping(value = "/page/start/proIntroduce", method = RequestMethod.GET)
    public String study(Model model, HttpServletRequest request) {
        model.addAttribute("menu", "proIntroduce");
        return "/page/start/proIntroduce";
    }
    /**
     * index 界面
     * @param request
     * @param request
     * @return
     */
    @RequestMapping(value = "/page/start/touchinfo", method = RequestMethod.GET)
    public String touchInfo(Model model, HttpServletRequest request) {
        model.addAttribute("menu", "touchinfo");
        return "/page/start/touchinfo";
    }

}
