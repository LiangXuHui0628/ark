package com.siro.ark.dao;

import com.siro.ark.comm.base.dao.CrudDao;
import com.siro.ark.entity.ArkDevApk;
import com.siro.ark.entity.ArkDevUser;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Component;

@Component
public interface ArkDevApkDao extends CrudDao<ArkDevApk> {


}
