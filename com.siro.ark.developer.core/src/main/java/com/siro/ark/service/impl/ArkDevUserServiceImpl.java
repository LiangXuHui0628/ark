package com.siro.ark.service.impl;

import com.baomidou.mybatisplus.mapper.Condition;
import com.siro.ark.comm.base.service.impl.BaseService;
import com.siro.ark.comm.base.vo.DataTable;
import com.siro.ark.dao.ArkDevUserDao;
import com.siro.ark.entity.ArkDevUser;
import com.siro.ark.service.IArkDevUserService;
import com.siro.ark.util.PasswordUtils;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;
import java.util.Map;

@Service
@Transactional(readOnly = true,rollbackFor = Exception.class)
public class ArkDevUserServiceImpl extends BaseService<ArkDevUserDao, ArkDevUser> implements IArkDevUserService  {
    @Override
    public ArkDevUser getById(long id) {
        return this.baseMapper.selectById(id);
    }

    @Override
    public ArkDevUser login(String username, String password) {
        return new ArkDevUser();
    }

    @Override
    public ArkDevUser getByLoginName(String username) {
        return this.baseMapper.selectByLoginName(username);
    }

    @Override
    public DataTable<ArkDevUser> PageArkDevUser(Map<String, Object> searchParams, DataTable<ArkDevUser> dt) {
        return null;
    }

    @Override
    public Boolean checkLoginName(String loginName, Long id) {
        ArkDevUser arkDevUser = selectOne(Condition.create().eq("loginname", loginName));
        return arkDevUser == null || !id.equals(0L) && arkDevUser.getId().equals(id);
    }

    @Transactional(readOnly = false)
    @Override
    public void insertArkDevUser(ArkDevUser arkDevUser) {
        arkDevUser.setPassword(PasswordUtils.entryptPassword(arkDevUser.getPassword()));
        if(arkDevUser.getEmail().indexOf("@siro-info.com") != -1) {
            arkDevUser.setUserstate("2");
            arkDevUser.setUsertype("0");
        }else{
            arkDevUser.setUserstate("0");
        }

        arkDevUser.setCreateDate(new Date());
        insert(arkDevUser) ;
    }
}
