package com.siro.ark.service;

import com.siro.ark.comm.base.service.IBaseService;
import com.siro.ark.comm.base.vo.DataTable;
import com.siro.ark.entity.ArkDevApk;
import com.siro.ark.entity.ArkDevCompany;

import java.util.List;
import java.util.Map;

public interface IArkDevCompanyService extends IBaseService<ArkDevCompany> {

    /**
     * 新增公司
     * @param arkDevCompany
     */
    boolean insertArkDevCompany(ArkDevCompany arkDevCompany) ;


    /**
     * 分页查询公司
     * @param searchParams
     * @param dt
     * @return
     */
    DataTable<ArkDevCompany> PageArkDevCompany(Map<String, Object> searchParams, DataTable<ArkDevCompany> dt) ;
}
