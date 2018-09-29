package com.qf.taptap.user.service;

import com.qf.taptap.common.pojo.dto.PageInfom;
import com.qf.taptap.common.pojo.dto.UserResult;
import com.qf.taptap.user.pojo.po.User;
import com.qf.taptap.user.pojo.vo.UserQuery;

import java.util.List;

/**
 * Created by wurim on 2018/9/5.
 */
public interface UserService {
    UserResult<User> listUsersByPage(PageInfom page,UserQuery query);

    int modifyUsersByPage(List<Integer> ids);

    void save(User user);

    User findById(User user);

    int modifyUserById(User user);

    void modifyUser(User user);
}
