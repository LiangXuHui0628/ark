package com.siro.ark.comm.base.dao;




import com.siro.ark.comm.base.entity.TreeEntity;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 *
 * @param <T>
 */
@Component
public interface TreeDao<T extends TreeEntity<T>> extends CrudDao<T> {

    /**
     * 找到所有子节点
     * @param entity
     * @return
     */
     List<T> findByParentIdsLike(T entity);

    /**
     * 更新所有父节点字段
     * @param entity
     * @return
     */
     int updateParentIds(T entity);

}