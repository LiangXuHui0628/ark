package com.siro.ark.comm.base.service;

import com.baomidou.mybatisplus.service.IService;
import com.siro.ark.comm.base.vo.DataTable;

/**
 *
 * @param <T>
 */
public interface IBaseService<T> extends IService<T>{

    /**
     * DateTable 分页查询
     *
     * @param dt
     * @return
     */
    DataTable<T> pageSearch(DataTable<T> dt);
}
