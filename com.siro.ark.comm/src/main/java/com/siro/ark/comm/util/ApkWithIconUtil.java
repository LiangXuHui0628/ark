package com.siro.ark.comm.util;


import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Map;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;


/**
 * 通过ApkInfo 里的applicationIcon从APK里解压出icon图片并存放到磁盘上
 * <p>
 * Created by zhangyakun on 17/11/27.
 */
public class ApkWithIconUtil {

    private static InputStream extractFileFromApk(String apkpath, String fileName) {
        try {
            ZipFile zFile = new ZipFile(apkpath);
            ZipEntry entry = zFile.getEntry(fileName);
            entry.getComment();
            entry.getCompressedSize();
            entry.getCrc();
            entry.isDirectory();
            entry.getSize();
            entry.getMethod();
            InputStream stream = zFile.getInputStream(entry);
            return stream;
        } catch (IOException e) {
            e.printStackTrace();
        }
        return null;
    }

    /**
     * Android 获取指定apk信息,并保存图标到到指定目录
     *
     * @param apkpath
     * @param outputPath
     * @return
     */
    public static ApkInfo getApkInfoAndroid(String apkpath, String outputPath) {
        String icon320 = "";
        InputStream is = null;
        BufferedOutputStream bos = null;
        BufferedInputStream bis = null;
        ApkInfo apkInfo = null;
        try {
            apkInfo = ApkUtil.getInstance().getApkInfo(apkpath);
            Map<String, String> applicationIcons = apkInfo.getApplicationIcons();
            if (applicationIcons != null) {
                icon320 = applicationIcons.get(ApkInfo.APPLICATION_ICON_320);
            }
            is = extractFileFromApk(apkpath, icon320);
            File file = new File(outputPath);
            bos = new BufferedOutputStream(new FileOutputStream(file), 1024);
            byte[] b = new byte[1024];
            bis = new BufferedInputStream(is, 1024);
            while (bis.read(b) != -1) {
                bos.write(b);
            }
            bos.flush();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (is != null) {
                try {
                    is.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
            if (bis != null) {
                try {
                    bis.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
            if (bos != null) {
                try {
                    bos.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
        return apkInfo;
    }


    /**
     * demo 获取apk文件的icon并写入磁盘指定位置
     *
     * @param args
     */
    public static void main(String[] args) {
//        String apkpath = "/Users/zhangyakun/Desktop/iBiliPlayer-bili.apk";
        String apkpath = "/Users/fengan/Downloads/nfzr_1.0.0.apk";
        String outputpath = "/Users/fengan/Downloads/AndroidIcon.png";
        ApkInfo androidApkInfo = getApkInfoAndroid(apkpath, outputpath);
        System.out.println(androidApkInfo);

    }

}
