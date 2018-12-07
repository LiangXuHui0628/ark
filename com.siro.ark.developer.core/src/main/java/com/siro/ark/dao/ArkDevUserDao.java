package com.siro.ark.dao;

import com.siro.ark.comm.base.dao.CrudDao;
import com.siro.ark.entity.ArkDevUser;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Component;

@Component
public interface ArkDevUserDao extends CrudDao<ArkDevUser> {

    /**
     * 根据用户登录名查找用户
     * @param loginName
     * @param delFlag
     * @return
     */
    ArkDevUser selectByLoginName(@Param("loginName") String loginName, @Param("delFlag") String delFlag);

    /**
     * 根据  LoginName 查询用户
     * @param loginName
     * @return
     */
    ArkDevUser selectByLoginName(@Param("loginName") String loginName);


}
