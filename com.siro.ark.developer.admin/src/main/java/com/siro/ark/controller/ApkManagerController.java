package com.siro.ark.controller;


import com.alibaba.fastjson.JSON;
import com.siro.ark.comm.annotation.SLog;
import com.siro.ark.comm.base.controller.BaseController;
import com.siro.ark.comm.base.entity.ReturnDTO;
import com.siro.ark.comm.base.vo.DataTable;
import com.siro.ark.comm.constant.Setting;
import com.siro.ark.comm.shiro.ShiroUser;
import com.siro.ark.comm.util.*;
import com.siro.ark.entity.ArkDevApk;
import com.siro.ark.entity.ArkDevUser;
import com.siro.ark.service.IArkDevApkService;
import com.siro.ark.service.IArkDevUserService;
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
public class ApkManagerController extends BaseController {

    @Autowired
    private IArkDevApkService devApkService;

    /**
     * index 界面
     * @param request
     * @param request
     * @return
     */
    @RequestMapping(value = "/admin/apkManager", method = RequestMethod.GET)
    public String userApprove(Model model, HttpServletRequest request) {
        model.addAttribute("userCenter", "userCenter");
        model.addAttribute("menu", "apkManager");
        return "admin/apkManager";
    }


    /**
     * apk分页显示
     *
     * @param dt
     * @param request
     * @return
     */
    @SLog("查询apk")
    @ApiOperation(value = "查询apk", notes = "查询apk:使用约定的DataTable")
    @RequestMapping(value = "/admin/apkManager/list", method = RequestMethod.POST)
    @ResponseBody
    public DataTable<ArkDevUser> list(@RequestBody DataTable dt, ServletRequest request) {
        Map<String, Object> searchParams = new HashMap<String, Object>() ;
        dt.setSearchParams(searchParams);
        return devApkService.pageSearch(dt);
    }

    /**
     * 进入创建角色界面
     *
     * @param model
     * @return
     */
    @GetMapping(value = "/admin/apkManager/insert")
    public String create(Model model, HttpServletRequest request) {
        return "admin/apkCreate";
    }

    /**
     * apk上传
     *
     * @param file     上传的文件
     * @param apkName  apk
     * @param response
     * @param request
     * @throws IOException
     */
    @ApiOperation(value = "apk上传", notes = "apk上传")
    @PostMapping(value = "/admin/apkManager/apkCreate")
    @ResponseBody
    public ReturnDTO uploadApk( @RequestParam("file") MultipartFile file,
                                    @RequestParam(value = "apkName", defaultValue = "") String apkName,
                                    HttpServletResponse response, HttpServletRequest request) throws Exception {
        response.setContentType("text/html; charset=UTF-8");
        List<Map<String, String> > rt=new ArrayList<>();
        boolean ret = upload( "apk", "",apkName, file) ;
        if(ret){
            return ReturnDTOUtil.success();
        }else {
            return ReturnDTOUtil.fail() ;
        }
    }

    private boolean upload(String type,String path,String apkName, MultipartFile file) throws Exception {
        String uuid = FileUtils.createFileName();//创建文件名称

//        String fileExt = file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf(".") + 1).toLowerCase();//扩展名

        String fileName = Setting.BASEFLODER;
        if (StringUtils.isNotBlank(path)) {
            fileName = fileName + "/" + path;
        }

        String savePath = fileName + "/" + type + "/" + file.getOriginalFilename();//附件路径+类型（头像、附件等）+名称+扩展名
        File localFile = FileUtils.saveFileToDisk(file, savePath); //保存到磁盘

        logger.info("上传的文件地址为 fileName={}", savePath);

        ArkDevApk arkDevApk = null ;
        Subject subject = SecurityUtils.getSubject();
        ShiroUser user = (ShiroUser) subject.getPrincipal() ;
        ApkInfo apkInfo = ReadUtil.readAPK(localFile.getAbsolutePath()) ;
        Map<String, Object> map = new HashMap<String, Object>() ;
        map.put("package_name", apkInfo.getPackageName()) ;
        List<ArkDevApk> apkList = devApkService.selectByMap(map) ;
        if(apkList.size() == 1){
            arkDevApk = apkList.get(0) ;
            if(!arkDevApk.getFilePath().equals(localFile.getAbsolutePath())){
                FileUtils.deleteFile(arkDevApk.getFilePath()) ;
            }
            arkDevApk.setApkName(apkName);
            arkDevApk.setAuthorName(user.getUsername());
            arkDevApk.setFilePath(localFile.getAbsolutePath());
            arkDevApk.setPackageName(apkInfo.getPackageName());
            arkDevApk.setVersionCode(apkInfo.getVersionCode());
            arkDevApk.setVersionName(apkInfo.getVersionName());
            arkDevApk.setReleaseDate(new Date());
        }else{
            arkDevApk = new ArkDevApk() ;
            arkDevApk.setApkName(apkName);
            arkDevApk.setDownloadCount((long) 0);
            arkDevApk.setAuthorName(user.getUsername());
            arkDevApk.setFilePath(localFile.getAbsolutePath());
            arkDevApk.setPackageName(apkInfo.getPackageName());
            arkDevApk.setVersionCode(apkInfo.getVersionCode());
            arkDevApk.setVersionName(apkInfo.getVersionName());
            arkDevApk.setReleaseDate(new Date());
        }
        return devApkService.insertArkDevApk(arkDevApk);
    }
}
