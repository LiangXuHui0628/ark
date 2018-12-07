package com.siro.ark.service;

import com.siro.ark.comm.base.service.IBaseService;
import com.siro.ark.comm.base.vo.DataTable;
import com.siro.ark.entity.ArkDevApk;
import com.siro.ark.entity.ArkDevApkVersion;

import java.util.List;
import java.util.Map;

public interface IArkDevApkVersionService extends IBaseService<ArkDevApkVersion> {

    List<ArkDevApkVersion> getArkDevApkVersion() ;

}
