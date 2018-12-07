package com.siro.ark.controller;


import com.siro.ark.comm.base.controller.BaseController;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;

@Controller
public class SupportController extends BaseController {

    /**
     * index 界面
     * @param request
     * @param request
     * @return
     */
    @RequestMapping(value = "/support", method = RequestMethod.GET)
    public String support(Model model, HttpServletRequest request) {
        model.addAttribute("itemMenu", "support");
        return "support/support";
    }

}
