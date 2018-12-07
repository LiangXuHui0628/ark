package com.siro.ark.comm.shiro;

import org.apache.shiro.SecurityUtils;

/**
 *
 */
public class ArkSysUser {
    /**
     * 取出Shiro中的当前用户LoginName.
     */
    public static String name() {
        return ShiroUser().getName();
    }
    public static String photo() {
        return ShiroUser().getPhoto();
    }

    public static Long id() {
        return ShiroUser().getId();
    }

    public static String loginName() {
        return ShiroUser().getUsername();
    }

    public static ShiroUser ShiroUser() {
        ShiroUser user = (ShiroUser) SecurityUtils.getSubject().getPrincipal();
        return user;
    }
}
