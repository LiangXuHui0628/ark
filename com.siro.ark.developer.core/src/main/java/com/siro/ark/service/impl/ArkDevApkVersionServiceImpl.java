package com.siro.ark.service.impl;

import com.siro.ark.comm.base.service.impl.BaseService;
import com.siro.ark.comm.base.vo.DataTable;
import com.siro.ark.dao.ArkDevApkDao;
import com.siro.ark.dao.ArkDevApkVersionDao;
import com.siro.ark.entity.ArkDevApk;
import com.siro.ark.entity.ArkDevApkVersion;
import com.siro.ark.service.IArkDevApkService;
import com.siro.ark.service.IArkDevApkVersionService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Map;

@Service
@Transactional(readOnly = true,rollbackFor = Exception.class)
public class ArkDevApkVersionServiceImpl extends BaseService<ArkDevApkVersionDao, ArkDevApkVersion> implements IArkDevApkVersionService {

    @Override
    public List<ArkDevApkVersion> getArkDevApkVersion() {
        return this.baseMapper.getArkDevApkVersion();
    }
}
