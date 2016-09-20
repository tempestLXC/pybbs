package cn.tomoya.module.subsection;

import cn.tomoya.common.BaseModel;
import cn.tomoya.common.Constants.CacheEnum;
import com.jfinal.plugin.redis.Cache;
import com.jfinal.plugin.redis.Redis;

import java.util.List;

/**
 * Created by tomoya.
 * Copyright (c) 2016, All Rights Reserved.
 * http://tomoya.cn
 */
public class Subsection extends BaseModel<Subsection> {

    public static final Subsection me = new Subsection();

    public List<Subsection> findAll() {
        return super.find("select * from pybbs_subsection");
    }

    public List<Subsection> findByShowStatusByType(Integer type, boolean isshow) {
        Cache cache = Redis.use();
        List list = cache.get(CacheEnum.subsections.name() + isshow);
        if (list == null) {
            list = super
                    .find("select * from pybbs_subsection where show_status = ? and type= ? order by display_index",
                            isshow, type);
            cache.set(CacheEnum.subsections.name() + isshow, list);
        }
        return list;
    }

}
