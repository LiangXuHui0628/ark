package com.siro.ark.web.config.plus;

import com.baomidou.mybatisplus.mapper.MetaObjectHandler;
import com.siro.ark.comm.shiro.ArkSysUser;
import org.apache.ibatis.reflection.MetaObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

import java.util.Date;

/**
 *
 */
@Component
public class SysMetaObjectHandler extends MetaObjectHandler {

    private Logger logger = LoggerFactory.getLogger(getClass());

    //新增填充
    @Override
    public void insertFill(MetaObject metaObject) {
        logger.debug("insert set createTime createBy updateTime updateBy param");
//        Object createDate = metaObject.getValue("createDate");
//        Object createId = metaObject.getValue("createId");
//        Object updateDate = metaObject.getValue("updateDate");
//        Object updateId = metaObject.getValue("updateId");


//        if (null == createDate) {
//            metaObject.setValue("createDate", new Date());
//        }
//        if (null == createId) {
//            metaObject.setValue("createId", "");
//        }
//        if (null == updateDate) {
//            metaObject.setValue("updateDate", new Date());
//        }
//        if (null == updateId) {
//            metaObject.setValue("updateId", "");
//        }
    }

    //更新填充
    @Override
    public void updateFill(MetaObject metaObject) {
        logger.debug("update set  updateTime updateBy param");

        metaObject.setValue("updateDate", new Date());

        metaObject.setValue("updateId", "");


    }
}
