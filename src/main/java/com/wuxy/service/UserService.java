package com.wuxy.service;

import com.wuxy.entity.User;
import com.wuxy.entity.UserVO;

/**
 * @author: wuxy
 * @create: 2019-04-28 08:53
 **/
public interface UserService {
    public UserVO findAll(int page, int limit);
    public void deleteById(int id);
    public User findById(int id);
    public void update(User user);
    public void save(User user);
}
