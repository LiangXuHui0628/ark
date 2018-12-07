package com.siro.ark.entity;

import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableName;
import com.siro.ark.comm.base.entity.DataEntity;
import lombok.Data;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

@TableName("ark_dev_apk_version")
@Data
public class ArkDevApkVersion extends DataEntity<ArkDevApkVersion> {

    /** 版本编号 **/
    private String versionCode ;
    /** 版本名称 **/
    private String versionName ;
    /** 版本名称 **/
    private Date releaseDate;

    /** 版本描述 **/
    @TableField(exist = false)
    private List<ArkDevApkVersionDetail> details ;

    @Override
    protected Serializable pkVal() {
        return null;
    }
}
