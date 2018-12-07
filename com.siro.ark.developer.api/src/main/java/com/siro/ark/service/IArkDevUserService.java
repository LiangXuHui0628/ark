package com.siro.ark.service;

import com.siro.ark.comm.base.service.IBaseService;
import com.siro.ark.comm.base.vo.DataTable;
import com.siro.ark.entity.ArkDevUser;

import java.util.Map;

public interface IArkDevUserService extends IBaseService<ArkDevUser> {

    ArkDevUser getById(long id) ;

    ArkDevUser login(String username, String password);
    /**
     * 登录
     *
     * @param username
     * @return
     */
    ArkDevUser getByLoginName(String username);

    /**
     * 分页查询用户
     *
     * @param searchParams
     * @param dt
     * @return
     */
    DataTable<ArkDevUser> PageArkDevUser(Map<String, Object> searchParams, DataTable<ArkDevUser> dt) ;
    /**
     * 检测登录名是否重复
     *
     * @param loginName
     * @param id
     * @return
     */
    Boolean checkLoginName(String loginName, Long id) ;

    /**
     * 用户新增
     * @param arkDevUser
     */
    void insertArkDevUser(ArkDevUser arkDevUser) ;
}
