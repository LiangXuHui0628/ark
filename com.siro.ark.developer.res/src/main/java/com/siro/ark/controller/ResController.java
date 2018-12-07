package com.siro.ark.controller;


import com.siro.ark.comm.base.controller.BaseController;
import com.siro.ark.comm.shiro.ShiroUser;
import com.siro.ark.entity.ArkDevApk;
import com.siro.ark.entity.ArkDevApkVersion;
import com.siro.ark.service.IArkDevApkService;
import com.siro.ark.service.IArkDevApkVersionService;
import com.sun.org.glassfish.gmbal.ParameterNames;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.net.URLEncoder;
import java.util.List;

@Controller
public class ResController extends BaseController {

    @Autowired
    private IArkDevApkService devApkService;
    @Autowired
    private IArkDevApkVersionService arkDevApkVersionService ;
    /**
     * index 界面
     * @param request
     * @param request
     * @return
     */
    @RequestMapping(value = "/resources", method = RequestMethod.GET)
    public String product(Model model, HttpServletRequest request) {
        Subject subject = SecurityUtils.getSubject();
        if(subject.isRemembered() || subject.isAuthenticated()){
            ShiroUser user = (ShiroUser) subject.getPrincipal() ;
            if("2".equals(user.getUserstate()) || "1".equals(user.getAdmin())){
                List<ArkDevApk> arkDevApkList = devApkService.getAllApkListByMap(null) ;
                model.addAttribute("itemMenu", "resources");
                model.addAttribute("arkDevApkList", arkDevApkList);

                List<ArkDevApkVersion> arkDevApkVersions = arkDevApkVersionService.getArkDevApkVersion() ;
                model.addAttribute("arkDevApkVersions", arkDevApkVersions);
                return "resources/resources";
            }else{
                model.addAttribute("userCenter", "userCenter");
                model.addAttribute("user", user);
                model.addAttribute("message", "激活后可查看文档，和下载资源。");
                return "center/center" ;
            }
        }else{
            return  "redirect:toLogin";
        }


    }
    /**
     * index 界面
     * @param request
     * @param request
     * @return
     */
    @RequestMapping(value = "/resources/download/{id}", method = RequestMethod.GET)
    public void download(@PathVariable("id") Long id, HttpServletResponse response, HttpServletRequest request) throws UnsupportedEncodingException {
        ArkDevApk arkDevApk = devApkService.selectById(id) ;
        if(arkDevApk != null){
            long t = arkDevApk.getDownloadCount()+1 ;
            arkDevApk.setDownloadCount(t);
            devApkService.updateById(arkDevApk) ;

            File file = new File(arkDevApk.getFilePath());
            if(file.exists()){
                response.setHeader("content-type", "application/octet-stream");
                response.setContentType("application/octet-stream");
                response.setHeader("Content-Disposition", "attachment;filename=" + file.getName());
                byte[] buff = new byte[1024];
                BufferedInputStream bis = null;
                OutputStream os = null;
                try {
                    os = response.getOutputStream();
                    bis = new BufferedInputStream(new FileInputStream(file));
                    int i = bis.read(buff);
                    while (i != -1) {
                        os.write(buff, 0, buff.length);
                        os.flush();
                        i = bis.read(buff);
                    }
                } catch (IOException e) {
                    e.printStackTrace();
                } finally {
                    if (bis != null) {
                        try {
                            bis.close();
                        } catch (IOException e) {
                            e.printStackTrace();
                        }
                    }
                }
            }else{
               logger.error("文件不存在");
            }
        }
    }
}
