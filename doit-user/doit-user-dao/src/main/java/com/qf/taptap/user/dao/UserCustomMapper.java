package com.qf.taptap.user.dao;

import com.qf.taptap.common.pojo.dto.PageInfom;
import com.qf.taptap.user.pojo.po.User;
import com.qf.taptap.user.pojo.vo.UserQuery;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by wurim on 2018/9/5.
 */
public interface UserCustomMapper {
    long countUsers(@Param("query")UserQuery query);

    List<User> listUsersByPage(@Param("page")PageInfom page,@Param("query")UserQuery query);
}
