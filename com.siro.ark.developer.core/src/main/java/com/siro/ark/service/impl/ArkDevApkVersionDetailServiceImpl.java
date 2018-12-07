package com.siro.ark.service.impl;

import com.siro.ark.comm.base.service.impl.BaseService;
import com.siro.ark.dao.ArkDevApkVersionDao;
import com.siro.ark.dao.ArkDevApkVersionDetailDao;
import com.siro.ark.entity.ArkDevApkVersion;
import com.siro.ark.entity.ArkDevApkVersionDetail;
import com.siro.ark.service.IArkDevApkVersionDetailService;
import com.siro.ark.service.IArkDevApkVersionService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional(readOnly = true,rollbackFor = Exception.class)
public class ArkDevApkVersionDetailServiceImpl extends BaseService<ArkDevApkVersionDetailDao, ArkDevApkVersionDetail> implements IArkDevApkVersionDetailService {

}
