package com.siro.ark.entity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.siro.ark.comm.base.entity.DataEntity;
import lombok.Data;

import java.io.Serializable;
import java.util.Date;

@TableName("ark_dev_apk")
@Data
public class ArkDevApk extends DataEntity<ArkDevApk> {
    /** 应用名称 **/
    private String apkName ;
    /** 版本编号 **/
    private String versionCode ;
    /** 版本名称 **/
    private String versionName ;
    /** 发布日期 **/
    private Date releaseDate ;
    /** 发布者 **/
    private String authorName ;
    /** 下载量 **/
    private Long downloadCount ;
    /** 文件路径 **/
    private String filePath ;
    /** 应用包名 **/
    private String packageName ;

    @Override
    protected Serializable pkVal() {
        return this.id;
    }
}
