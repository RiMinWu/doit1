package com.qf.taptap.user.service.impl;

import com.qf.taptap.common.pojo.dto.PageInfom;
import com.qf.taptap.common.pojo.dto.UserResult;
import com.qf.taptap.user.dao.UserCustomMapper;
import com.qf.taptap.user.dao.UserMapper;
import com.qf.taptap.user.pojo.po.User;
import com.qf.taptap.user.pojo.po.UserExample;
import com.qf.taptap.user.pojo.vo.UserQuery;
import com.qf.taptap.user.service.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by wurim on 2018/9/5.
 */
@Service
public class UserServiceImpl implements UserService {

    private Logger logger = LoggerFactory.getLogger(this.getClass());


    @Autowired
    private UserCustomMapper UserDao;

    @Autowired
    private UserMapper dao;
    @Override
    public UserResult<User> listUsersByPage(PageInfom page,UserQuery query) {

        UserResult<User> result = new UserResult<User>();
        result.setCode(0);
        result.setMsg("success");
        try {
            long count = UserDao.countUsers(query);
            List<User> list = UserDao.listUsersByPage(page,query);

            result.setCount(count);
            result.setData(list);
        }catch (Exception e){
            result.setCode(1);
            result.setMsg("failed");
            logger.error(e.getMessage(),e);
            e.printStackTrace();
        }

        return result;
    }

    @Override
    public int modifyUsersByPage(List<Integer> ids) {
        int i=0;
        try {
            User record = new User();
            record.setIsadmin(2);
            UserExample example = new UserExample();
            UserExample.Criteria criteria = example.createCriteria();
            criteria.andIdIn(ids);
            i = dao.updateByExampleSelective(record, example);

        }catch (Exception e){
            logger.error(e.getMessage(),e);
            e.printStackTrace();
        }
        return i;
    }

    @Override
    public void save(User user) {
        dao.insert(user);
    }

    @Override
    public User findById(User user) {
        User user1 = dao.selectByPrimaryKey(user.getId());
        return user1;
    }

    @Override
    public int modifyUserById(User user) {
        int i=0;
        try {
            user.setIsadmin(2);
            i = dao.updateByPrimaryKey(user);

        }catch (Exception e){
            logger.error(e.getMessage(),e);
            e.printStackTrace();
        }
        return i;
    }

    @Override
    public void modifyUser(User user) {
        try {

            dao.updateByPrimaryKeySelective(user);

        }catch (Exception e){
            logger.error(e.getMessage(),e);
            e.printStackTrace();
        }
    }
}
