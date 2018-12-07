package com.siro.ark.service.impl;

import com.siro.ark.comm.base.service.impl.BaseService;
import com.siro.ark.comm.base.vo.DataTable;
import com.siro.ark.dao.ArkDevApkDao;
import com.siro.ark.dao.ArkDevCompanyDao;
import com.siro.ark.entity.ArkDevApk;
import com.siro.ark.entity.ArkDevCompany;
import com.siro.ark.service.IArkDevApkService;
import com.siro.ark.service.IArkDevCompanyService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Map;

@Service
@Transactional(readOnly = true,rollbackFor = Exception.class)
public class ArkDevCompanyServiceImpl extends BaseService<ArkDevCompanyDao, ArkDevCompany> implements IArkDevCompanyService {

    @Override
    public boolean insertArkDevCompany(ArkDevCompany arkDevCompany) {
        return false;
    }

    @Override
    public DataTable<ArkDevCompany> PageArkDevCompany(Map<String, Object> searchParams, DataTable<ArkDevCompany> dt) {
        return null;
    }
}
