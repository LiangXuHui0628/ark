package com.siro.ark.controller;


import com.alibaba.fastjson.JSONObject;
import com.fasterxml.jackson.databind.node.ObjectNode;
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
import com.siro.ark.entity.ArkDevApkVersion;
import com.siro.ark.entity.ArkDevApkVersionDetail;
import com.siro.ark.entity.ArkDevUser;
import com.siro.ark.service.IArkDevApkService;
import com.siro.ark.service.IArkDevApkVersionDetailService;
import com.siro.ark.service.IArkDevApkVersionService;
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
public class VersionManagerController extends BaseController {

    @Autowired
    private IArkDevApkVersionService arkDevApkVersionService ;
    @Autowired
    private IArkDevApkVersionDetailService arkDevApkVersionDetailService ;

    /**
     * 版本号管理
     * @param request
     * @param request
     * @return
     */
    @RequestMapping(value = "/admin/versionManager", method = RequestMethod.GET)
    public String toVersionManager(Model model, HttpServletRequest request) {
        model.addAttribute("userCenter", "userCenter");
        model.addAttribute("menu", "versionManager");
        List<ArkDevApkVersion> arkDevApkVersions = arkDevApkVersionService.getArkDevApkVersion() ;
        model.addAttribute("arkDevApkVersions", arkDevApkVersions);
        return "admin/versionManager";
    }

    /**
     * 进入创建版本界面
     *
     * @param model
     * @return
     */
    @GetMapping(value = "/admin/versionManager/insert")
    public String create(Model model, HttpServletRequest request) {
        return "admin/versionCreate";
    }

    /**
     * 版本创建
     * @param request
     * @return
     */
    @SLog("版本创建")
    @ApiOperation(value = "版本创建", notes = "版本创建")
    @PostMapping(value = "/admin/versionManager/versionCreate")
    @ResponseBody
    public ReturnDTO doVersionCreate(HttpServletResponse response, HttpServletRequest request) {
        ArkDevApkVersion arkDevApkVersion = new ArkDevApkVersion() ;
        Map map = getParameterMap(request);
        String versionCode = map.get("versionCode").toString();
        String versionName = map.get("versionName").toString();

        arkDevApkVersion.setVersionCode(versionCode);
        arkDevApkVersion.setVersionName(versionName);
        arkDevApkVersion.setReleaseDate(new Date());

        arkDevApkVersionService.insert(arkDevApkVersion) ;

        List<ArkDevApkVersionDetail> arkDevApkVersionDetails = new ArrayList<ArkDevApkVersionDetail>() ;
        Iterator<Map.Entry<String, String>> entries = map.entrySet().iterator();
        while (entries.hasNext()) {
            Map.Entry<String, String> entry = entries.next();
            if(entry.getKey().indexOf("desc") != -1){
                ArkDevApkVersionDetail arkDevApkVersionDetail = new ArkDevApkVersionDetail() ;
                arkDevApkVersionDetail.setVersionId(arkDevApkVersion.getId());
                arkDevApkVersionDetail.setDescMsg(entry.getValue().toString());
                arkDevApkVersionDetails.add(arkDevApkVersionDetail) ;
            }
        }
        arkDevApkVersionDetailService.insertBatch(arkDevApkVersionDetails) ;
        return ReturnDTOUtil.success();
    }



    /**
     * 从request中获得参数Map，并返回可读的Map
     *
     * @param request
     * @return
     */
    @SuppressWarnings("unchecked")
    public static Map getParameterMap(HttpServletRequest request) {
        // 参数Map
        Map properties = request.getParameterMap();
        // 返回值Map
        Map returnMap = new HashMap();
        Iterator entries = properties.entrySet().iterator();
        Map.Entry entry;
        String name = "";
        String value = "";
        while (entries.hasNext()) {
            entry = (Map.Entry) entries.next();
            name = (String) entry.getKey();
            Object valueObj = entry.getValue();
            if(null == valueObj){
                value = "";
            }else if(valueObj instanceof String[]){
                String[] values = (String[])valueObj;
                for(int i=0;i<values.length;i++){
                    value = values[i] + ",";
                }
                value = value.substring(0, value.length()-1);
            }else{
                value = valueObj.toString();
            }
            returnMap.put(name, value);
        }
        return returnMap;
    }
}
