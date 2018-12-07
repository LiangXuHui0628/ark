package com.siro.ark.controller;


import com.siro.ark.comm.annotation.SLog;
import com.siro.ark.comm.base.controller.BaseController;
import com.siro.ark.comm.base.entity.ReturnDTO;
import com.siro.ark.comm.base.vo.DataTable;
import com.siro.ark.comm.constant.Setting;
import com.siro.ark.comm.shiro.ShiroUser;
import com.siro.ark.comm.util.ApkInfo;
import com.siro.ark.comm.util.FileUtils;
import com.siro.ark.comm.util.ReadUtil;
import com.siro.ark.comm.util.ReturnDTOUtil;
import com.siro.ark.entity.ArkDevApk;
import com.siro.ark.entity.ArkDevCompany;
import com.siro.ark.entity.ArkDevUser;
import com.siro.ark.service.IArkDevApkService;
import com.siro.ark.service.IArkDevCompanyService;
import io.swagger.annotations.ApiOperation;
import org.apache.commons.lang3.StringUtils;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.util.*;

@Controller
public class CompanyController extends BaseController {

    @Autowired
    private IArkDevCompanyService devCompanyService;

    /**
     * 厂商界面
     * @param request
     * @param request
     * @return
     */
    @RequestMapping(value = "/admin/company", method = RequestMethod.GET)
    public String toCompany(Model model, HttpServletRequest request) {
        model.addAttribute("userCenter", "userCenter");
        model.addAttribute("menu", "company");
        return "admin/company";
    }


    /**
     * 厂商分页显示
     *
     * @param dt
     * @param request
     * @return
     */
    @SLog("查询apk")
    @ApiOperation(value = "查询apk", notes = "查询apk:使用约定的DataTable")
    @RequestMapping(value = "/admin/company/list", method = RequestMethod.POST)
    @ResponseBody
    public DataTable<ArkDevCompany> list(@RequestBody DataTable dt, ServletRequest request) {
        Map<String, Object> searchParams = new HashMap<String, Object>() ;
        dt.setSearchParams(searchParams);
        return devCompanyService.pageSearch(dt);
    }

    /**
     * 进入创建角色界面
     *
     * @param model
     * @return
     */
    @GetMapping(value = "/admin/company/insert")
    public String create(Model model, HttpServletRequest request) {
        return "admin/companyCreate";
    }

    /**
     * 增加厂商信息
     *
     * @return
     */
    @SLog("增加厂商信息")
    @ApiOperation(value = "更新用户信息", notes = "增加厂商信息")
    @PostMapping(value = "/admin/company/c")
    @ResponseBody
    public ReturnDTO doCompanyCreate(@RequestParam(value = "companyName", defaultValue = "") String companyName,
                             Model model,HttpServletRequest request) {
        ArkDevCompany arkDevCompany = new ArkDevCompany();
        arkDevCompany.setCompanyName(companyName);
        devCompanyService.insertArkDevCompany(arkDevCompany);
        return ReturnDTOUtil.success();
    }


}
