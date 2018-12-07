package com.siro.ark.service.impl;

import com.baomidou.mybatisplus.mapper.Condition;
import com.siro.ark.comm.base.service.impl.BaseService;
import com.siro.ark.comm.base.vo.DataTable;
import com.siro.ark.dao.ArkDevApkDao;
import com.siro.ark.entity.ArkDevApk;
import com.siro.ark.entity.ArkDevUser;
import com.siro.ark.service.IArkDevApkService;
import com.siro.ark.service.IArkDevUserService;
import com.siro.ark.util.PasswordUtils;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Map;

@Service
@Transactional(readOnly = true,rollbackFor = Exception.class)
public class ArkDevApkServiceImpl extends BaseService<ArkDevApkDao, ArkDevApk> implements IArkDevApkService {

    @Override
    public List<ArkDevApk> getAllApkListByMap(Map<String, Object> map) {
        return this.selectByMap(map) ;
    }

    @Transactional(readOnly = false)
    @Override
    public boolean insertArkDevApk(ArkDevApk arkDevApk) {
        return insertOrUpdate(arkDevApk) ;
    }

    @Override
    public DataTable<ArkDevApk> PageArkDevApk(Map<String, Object> searchParams, DataTable<ArkDevApk> dt) {
        return null;
    }
}
