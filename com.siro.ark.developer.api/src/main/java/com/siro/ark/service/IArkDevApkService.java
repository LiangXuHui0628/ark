package com.siro.ark.service;

import com.siro.ark.comm.base.service.IBaseService;
import com.siro.ark.comm.base.vo.DataTable;
import com.siro.ark.entity.ArkDevApk;

import java.util.List;
import java.util.Map;

public interface IArkDevApkService extends IBaseService<ArkDevApk> {

    List<ArkDevApk> getAllApkListByMap(Map<String, Object> map) ;

    /**
     * 新增apk
     * @param arkDevApk
     */
    boolean insertArkDevApk(ArkDevApk arkDevApk) ;


    /**
     * 分页查询apk
     *
     * @param searchParams
     * @param dt
     * @return
     */
    DataTable<ArkDevApk> PageArkDevApk(Map<String, Object> searchParams, DataTable<ArkDevApk> dt) ;
}
