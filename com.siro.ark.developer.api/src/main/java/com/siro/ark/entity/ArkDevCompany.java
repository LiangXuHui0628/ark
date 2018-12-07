package com.siro.ark.entity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.siro.ark.comm.base.entity.DataEntity;
import lombok.Data;

import java.io.Serializable;

@TableName("ark_dev_company")
@Data
public class ArkDevCompany extends DataEntity<ArkDevCompany> {
    /** 公司名称 **/
    private String companyName ;

    @Override
    protected Serializable pkVal() {
        return this.id;
    }
}
