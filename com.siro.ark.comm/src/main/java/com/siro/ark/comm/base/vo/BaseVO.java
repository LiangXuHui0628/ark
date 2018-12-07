package com.siro.ark.comm.base.vo;

import java.io.Serializable;

/**
 *
 */
public class BaseVO implements Serializable{

    private static final long serialVersionUID = -3223497336007970154L;
    /**
     * 记录id
     */
    protected Long id;
    /**
     * 备注
     */
    protected String remark;

    /**
     * 删除标记
     */
    protected String delFlag;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    public String getDelFlag() {
        return delFlag;
    }

    public void setDelFlag(String delFlag) {
        this.delFlag = delFlag;
    }
}
