package com.siro.ark.controller;


import com.siro.ark.comm.base.controller.BaseController;
import com.siro.ark.comm.base.entity.ReturnDTO;
import com.siro.ark.comm.util.ReturnDTOUtil;
import com.siro.ark.entity.ArkDevUser;
import com.siro.ark.service.IArkDevUserService;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class SignController extends BaseController {

    @Autowired
    private IArkDevUserService devUserService;
    /**
     *  空地址请求
     * @param model
     * @param request
     * @return˙
     */
    @GetMapping(value = "")
    public String index(Model model, HttpServletRequest request) {
        return "redirect:index";
//        model.addAttribute("base", request.getContextPath());
//        Subject s = SecurityUtils.getSubject();
//        return s.isRemembered() || s.isAuthenticated() ? "redirect:index" : "sign/login";
    }


    /**
     * index 界面
     * @param request
     * @param redirectAttributes
     * @return
     */
    @RequestMapping(value = "/index", method = RequestMethod.GET)
    public String index(Model model,HttpServletRequest request, RedirectAttributes redirectAttributes) {
        model.addAttribute("itemMenu", "index");
        return "home/index";
    }

    /**
     * register 界面
     * @param request
     * @param redirectAttributes
     * @return
     */
    @RequestMapping(value = "/register", method = RequestMethod.GET)
    public String register(Model model,HttpServletRequest request, RedirectAttributes redirectAttributes) {
        return "sign/register";
    }

    /**
     * register 界面
     * @param request
     * @return
     */
    @RequestMapping(value = "/doRegister", method = RequestMethod.POST)
    @ResponseBody
    public ReturnDTO doRegister(@RequestBody ArkDevUser arkDevUser, HttpServletRequest request) {
        Map<String, Object> map = new HashMap<>() ;
        map.put("loginname", arkDevUser.getLoginname()) ;
        List arkDevUserList = devUserService.selectByMap(map) ;
        if(arkDevUserList.size() > 0){
            return ReturnDTOUtil.custom(-1,"登陆名已存在") ;
        }else{
            devUserService.insertArkDevUser(arkDevUser);
            return ReturnDTOUtil.success();
        }
    }

    /**
     * 注册用户名称检查
     * @param request
     * @return
     */
    @RequestMapping(value = "/register/userNameCheck", method = RequestMethod.POST)
    @ResponseBody
    public ReturnDTO userNameCheck(@RequestParam(value = "username", defaultValue = "") String username, HttpServletRequest request) {
        Map<String, Object> map = new HashMap<>() ;
        map.put("username", username) ;
        List<ArkDevUser> arkDevUserList = devUserService.selectByMap(map) ;
        if(arkDevUserList.size() > 0){
            return ReturnDTOUtil.custom(-1,"用户名已存在") ;
        }else{
            return ReturnDTOUtil.success();
        }
    }
    /**
     * 注册用户登陆名称检查
     * @param request
     * @return
     */
    @RequestMapping(value = "/register/loginNameCheck", method = RequestMethod.POST)
    @ResponseBody
    public ReturnDTO loginNameCheck(@RequestParam(value = "loginname", defaultValue = "") String loginname, HttpServletRequest request) {
        Map<String, Object> map = new HashMap<>() ;
        map.put("loginname", loginname) ;
        List<ArkDevUser> arkDevUserList = devUserService.selectByMap(map) ;
        if(arkDevUserList.size() > 0){
            return ReturnDTOUtil.custom(-1,"登陆名已存在") ;
        }else{
            return ReturnDTOUtil.success();
        }
    }

    /**
     * 登录 界面
     * @param model
     * @param request
     * @return
     */
    @RequestMapping(value = "/toLogin")
    public String toLogin(Model model, HttpServletRequest request) {
         model.addAttribute("base", request.getContextPath());
        Subject s = SecurityUtils.getSubject();
        return s.isRemembered() || s.isAuthenticated() ? "redirect:index" : "sign/login";
    }
    /**
     * 登录 界面
     * @param model
     * @param request
     * @return
     */
    @RequestMapping(value = "/aboutDeveloper")
    public String aboutDeveloper(Model model, HttpServletRequest request) {
        model.addAttribute("itemMenu", "index");
        return "home/aboutDeveloper";
    }


    /**
     * 登录 界面
     * @param model
     * @param request
     * @return
     */
    @RequestMapping(value = "/login",method=RequestMethod.POST)
    @ResponseBody
    public ReturnDTO login(@RequestParam(value = "username", defaultValue = "") String username,
                        @RequestParam(value = "password", defaultValue = "") String password,
                        Model model, HttpServletRequest request) {
        UsernamePasswordToken token = new UsernamePasswordToken(username, password);
        Subject currentUser = SecurityUtils.getSubject();
        if (!currentUser.isAuthenticated()){
            //使用shiro来验证
            token.setRememberMe(true);
            currentUser.login(token);//验证角色和权限
        }
        model.addAttribute("base", request.getContextPath());
        return ReturnDTOUtil.success();
    }

    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public String logout(HttpServletRequest request, HttpServletResponse response, Model model) throws IOException {
        SecurityUtils.getSubject().logout();
        return "redirect:toLogin";
    }



//    /**
//     * 登录出错界面--实际的登录 交给了 shiro
//     * @param request
//     * @param userName
//     * @param model
//     * @return
//     */
//    @PostMapping(value = "login")
//    public String fail(HttpServletRequest request,@RequestParam(FormAuthenticationFilter.DEFAULT_USERNAME_PARAM) String userName, Model model) {
//        model.addAttribute(FormAuthenticationFilter.DEFAULT_USERNAME_PARAM, userName);
//
//        String error=(String)request.getAttribute(FormAuthenticationFilter.DEFAULT_ERROR_KEY_ATTRIBUTE_NAME);
//        if(error!=null){
//            if(error.contains("DisabledAccountException")){
//                model.addAttribute("error","用户已被屏蔽,请登录其他用户.");
//            }else if(error.contains("UnknownAccountException")){
//                model.addAttribute("error","用户不存在,请检查后重试!");
//            }else{
//                model.addAttribute("error","登录失败，请重试.");
//            }
//        }
//        return "sign/login";
//    }



}
