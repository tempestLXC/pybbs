package cn.tomoya.module.user;

import cn.tomoya.common.BaseModel;
import cn.tomoya.common.Constants.CacheEnum;
import cn.tomoya.module.system.UserRole;
import cn.tomoya.utils.StrUtil;
import com.jfinal.plugin.activerecord.Db;
import com.jfinal.plugin.activerecord.Page;
import com.jfinal.plugin.redis.Cache;
import com.jfinal.plugin.redis.Redis;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.Date;
import java.util.List;

/**
 * Created by Tempestlxc.
 * Copyright (c) 2016, All Rights Reserved.
 * http://lzone.cn
 */
public class UserExtend extends BaseModel<UserExtend> {
    public static final UserExtend me = new UserExtend();

    /**
     * 根据userId查询用户扩展信息
     * @param userId
     * @return
     */
    public UserExtend findByserId(Integer userId) {
        return super.findFirst("select * from pybbs_user_extend where user_id = ?", userId);
    }

}