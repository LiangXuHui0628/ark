package com.siro.ark.entity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.siro.ark.comm.base.entity.DataEntity;
import lombok.Data;

import java.io.Serializable;

@TableName("ark_dev_apk_version_detail")
@Data
public class ArkDevApkVersionDetail extends DataEntity<ArkDevApkVersionDetail> {

    /** 版本编号 **/
    private Long versionId ;
    /** 版本名称 **/
    private String descMsg ;

    @Override
    protected Serializable pkVal() {
        return null;
    }
}
