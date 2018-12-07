package com.siro.ark.controller;


import com.alibaba.fastjson.JSON;
import com.siro.ark.comm.annotation.SLog;
import com.siro.ark.comm.base.controller.BaseController;
import com.siro.ark.comm.base.vo.DataTable;
import com.siro.ark.comm.shiro.ArkSysUser;
import com.siro.ark.entity.ArkDevUser;
import com.siro.ark.service.IArkDevUserService;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.Map;

@Controller
public class UserApproveController extends BaseController {

    @Autowired
    private IArkDevUserService devUserService;

    /**
     * index 界面
     * @param request
     * @param request
     * @return
     */
    @RequestMapping(value = "/admin/userApprove", method = RequestMethod.GET)
    public String userApprove(Model model, HttpServletRequest request) {
        model.addAttribute("userCenter", "userCenter");
        model.addAttribute("menu", "userApprove");
        return "admin/userApprove";
    }

    /**
     * 对用户分页显示
     *
     * @param dt
     * @param request
     * @return
     */
    @SLog("查询待审批用户")
    @ApiOperation(value = "查询待审批用户", notes = "查询待审批用户:使用约定的DataTable")
    @RequestMapping(value = "/admin/userApprove/list", method = RequestMethod.POST)
    @ResponseBody
    public DataTable<ArkDevUser> list(@RequestBody DataTable dt, ServletRequest request) {
        Map<String, Object> searchParams = new HashMap<String, Object>() ;
        searchParams.put("search_eq_userstate","1") ;
        dt.setSearchParams(searchParams);
        return devUserService.pageSearch(dt);
    }

    /**
     * 更新用户界面
     *
     * @param id
     * @return
     */
    @GetMapping(value = "/admin/userApprove/update/{id}")
    public String update(@PathVariable("id") Long id, Model model,HttpServletRequest request) {
        ArkDevUser arkDevUser = devUserService.getById(id) ;
        model.addAttribute("user", arkDevUser);
        return "admin/userUpdate";
    }

    /**
     * 更新用户信息
     *
     * @return
     */
    @SLog("更新用户信息")
    @ApiOperation(value = "更新用户信息", notes = "更新用户信息")
    @PostMapping(value = "/admin/userApprove/updateUser")
    @ResponseBody
    public String updateUser(@RequestParam(value = "userid", defaultValue = "") Long userid,
                             @RequestParam(value = "usertype", defaultValue = "") String usertype,
                             @RequestParam(value = "company", defaultValue = "") Long companyId,
                             Model model,HttpServletRequest request) {
        ArkDevUser arkDevUser = devUserService.getById(userid) ;
        arkDevUser.setUsertype(usertype);
        arkDevUser.setUserstate("2");
        arkDevUser.setCompanyId(companyId);
        devUserService.insertOrUpdate(arkDevUser);
        model.addAttribute("user", arkDevUser);
        return  "redirect:/admin/userApprove" ;
    }

}
