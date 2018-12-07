package com.siro.ark.comm.base.dao;

import com.baomidou.mybatisplus.mapper.BaseMapper;

/**
 *
 * @param <T>
 */


public interface BaseDao<T> extends BaseMapper<T> {

     void insert(String tableName) ;
}
