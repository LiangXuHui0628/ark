package com.siro.ark.dao;

import com.siro.ark.comm.base.dao.CrudDao;
import com.siro.ark.entity.ArkDevApk;
import com.siro.ark.entity.ArkDevApkVersion;
import org.springframework.stereotype.Component;

import java.io.Serializable;
import java.util.List;

@Component
public interface ArkDevApkVersionDao extends CrudDao<ArkDevApkVersion> {

    List<ArkDevApkVersion> getArkDevApkVersion();

}
