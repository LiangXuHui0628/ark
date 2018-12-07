package com.siro.ark.controller;


import com.siro.ark.comm.annotation.SLog;
import com.siro.ark.comm.base.controller.BaseController;
import com.siro.ark.comm.base.vo.DataTable;
import com.siro.ark.entity.ArkDevUser;
import com.siro.ark.service.IArkDevUserService;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.Map;

@Controller
public class UserManagerController extends BaseController {

    @Autowired
    private IArkDevUserService devUserService;

    /**
     * index 界面
     * @param request
     * @param request
     * @return
     */
    @RequestMapping(value = "/admin/userManager", method = RequestMethod.GET)
    public String userApprove(Model model, HttpServletRequest request) {
        model.addAttribute("userCenter", "userCenter");
        model.addAttribute("menu", "userManager");
        return "admin/userManager";
    }


    /**
     * 对用户分页显示
     *
     * @param dt
     * @param request
     * @return
     */
    @SLog("查询正式用户")
    @ApiOperation(value = "查询正式用户", notes = "查询正式用户:使用约定的DataTable")
    @RequestMapping(value = "/admin/userManager/list", method = RequestMethod.POST)
    @ResponseBody
    public DataTable<ArkDevUser> list(@RequestBody DataTable dt, ServletRequest request) {
        Map<String, Object> searchParams = new HashMap<String, Object>() ;
        searchParams.put("search_eq_userstate","2") ;
        dt.setSearchParams(searchParams);
        return devUserService.pageSearch(dt);
    }

}
