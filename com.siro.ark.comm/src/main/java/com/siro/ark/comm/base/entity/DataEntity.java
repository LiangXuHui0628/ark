/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.siro.ark.comm.base.entity;

import com.baomidou.mybatisplus.activerecord.Model;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.enums.FieldFill;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.siro.ark.comm.constant.Global;
import org.hibernate.validator.constraints.Length;

import java.util.Date;

/**
 * 数据Entity类
 *
 * @param <T>
 */
public abstract class DataEntity<T extends Model> extends BaseEntity<T> {

    private static final long serialVersionUID = -1086807018634424988L;

    public DataEntity() {
        super();
    }

    public DataEntity(Long id) {
        super(id);
    }

}
