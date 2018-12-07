package com.siro.ark.entity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.siro.ark.comm.base.entity.DataEntity;
import lombok.Data;

import java.io.Serializable;
import java.util.Date;

@TableName("ark_dev_user")
@Data
public class ArkDevUser extends DataEntity<ArkDevUser> {

    /** 用户名称 **/
    private String username ;
    /** 登陆用户名 **/
    private String loginname ;
    /** 登陆密码 **/
    private String password ;
    /** 手机号码 **/
    private String mobile ;
    /** 电子邮箱 **/
    private String email ;
    /** 微信号码 **/
    private String wxno ;
    /** 最后登陆时间 **/
    private Date lastLoginTime ;
    /** 是否管理员 **/
    private String admin ;
    /** 用户状态 0-待审核 1-正常 2-禁用  **/
    private String userstate ;
    /** 用户类型 0-内部员工 1-合作伙伴  **/
    private String usertype ;
    /** 用户头像 **/
    private String photo ;
    /** 创建日期 **/
    private Date createDate ;
    /** 公司ID **/
    private long companyId ;


    @Override
    protected Serializable pkVal() {
        return this.id;
    }
}
