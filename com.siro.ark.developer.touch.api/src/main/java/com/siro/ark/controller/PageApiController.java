package com.siro.ark.controller;


import com.siro.ark.comm.base.controller.BaseController;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;

@Controller
public class PageApiController extends BaseController {


    /**
     * index 界面
     * @param request
     * @param request
     * @return
     */
    @RequestMapping(value = "/page/api/cardlayoutapi", method = RequestMethod.GET)
    public String study(Model model, HttpServletRequest request) {
        return "/page/api/cardlayoutapi";
    }
    /**
     * 显示打开交易api界面
     * @param request
     * @param request
     * @return
     */
    @RequestMapping(value = "/page/api/opentradeapi", method = RequestMethod.GET)
    public String opentradeapi(Model model, HttpServletRequest request) {
        model.addAttribute("menu", "opentradeapi");
        return "/page/api/opentradeapi";
    }
    /**
     * 拍照录像api
     * @param request
     * @param request
     * @return
     */
    @RequestMapping(value = "/page/api/picandvideo", method = RequestMethod.GET)
    public String picandvideo(Model model, HttpServletRequest request) {
        model.addAttribute("menu", "picandvideo");
        return "/page/api/picandvideo";
    }
    /**
     * 电子签名api
     * @param request
     * @param request
     * @return
     */
    @RequestMapping(value = "/page/api/signatureapi", method = RequestMethod.GET)
    public String signatureapi(Model model, HttpServletRequest request) {
        model.addAttribute("menu", "signatureapi");
        return "/page/api/signatureapi";
    }
    /**
     * 背夹api
     * @param request
     * @param request
     * @return
     */
    @RequestMapping(value = "/page/api/deviceapi", method = RequestMethod.GET)
    public String deviceapi(Model model, HttpServletRequest request) {
        model.addAttribute("menu", "deviceapi");
        return "/page/api/deviceapi";
    }
    /**
     * 打印机api
     * @param request
     * @param request
     * @return
     */
    @RequestMapping(value = "/page/api/printerapi", method = RequestMethod.GET)
    public String printerapi(Model model, HttpServletRequest request) {
        model.addAttribute("menu", "printerapi");
        return "/page/api/printerapi";
    }
    /**
     * GPS api
     * @param request
     * @param request
     * @return
     */
    @RequestMapping(value = "/page/api/gpsapi", method = RequestMethod.GET)
    public String gpsapi(Model model, HttpServletRequest request) {
        model.addAttribute("menu", "gpsapi");
        return "/page/api/gpsapi";
    }
    /**
     * 监听 api
     * @param request
     * @param request
     * @return
     */
    @RequestMapping(value = "/page/api/listenerapi", method = RequestMethod.GET)
    public String listenerapi(Model model, HttpServletRequest request) {
        model.addAttribute("menu", "listenerapi");
        return "/page/api/listenerapi";
    }
    /**
     * 服务请求 api
     * @param request
     * @param request
     * @return
     */
    @RequestMapping(value = "/page/api/serverreqapi", method = RequestMethod.GET)
    public String serverreqapi(Model model, HttpServletRequest request) {
        model.addAttribute("menu", "serverreqapi");
        return "/page/api/serverreqapi";
    }
    /**
     * 样式使用
     * @param request
     * @param request
     * @return
     */
    @RequestMapping(value = "/page/api/supportStyle", method = RequestMethod.GET)
    public String supportStyle(Model model, HttpServletRequest request) {
        model.addAttribute("menu", "supportStyle");
        return "/page/api/supportStyle";
    }
    /**
     * 样式使用
     * @param request
     * @param request
     * @return
     */
    @RequestMapping(value = "/page/api/colorAppendix", method = RequestMethod.GET)
    public String colorAppendix(Model model, HttpServletRequest request) {
        model.addAttribute("menu", "colorAppendix");
        return "/page/api/colorAppendix";
    }

    /**
     * 样式使用
     * @param request
     * @param request
     * @return
     */
    @RequestMapping(value = "/page/api/panelexpand", method = RequestMethod.GET)
    public String panelExpand(Model model, HttpServletRequest request) {
        model.addAttribute("menu", "panelexpand");
        return "/page/api/panelexpand";
    }

    /**
     * 样式使用
     * @param request
     * @param request
     * @return
     */
    @RequestMapping(value = "/page/api/dateexpand", method = RequestMethod.GET)
    public String dateExpand(Model model, HttpServletRequest request) {
        model.addAttribute("menu", "dateexpand");
        return "/page/api/dateexpand";
    }

    /**
     * 样式使用
     * @param request
     * @param request
     * @return
     */
    @RequestMapping(value = "/page/api/numberexpand", method = RequestMethod.GET)
    public String numberExpand(Model model, HttpServletRequest request) {
        model.addAttribute("menu", "numberexpand");
        return "/page/api/numberexpand";
    }
}
