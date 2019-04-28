package com.wuxy.service.impl;

import com.wuxy.entity.User;
import com.wuxy.entity.UserVO;
import com.wuxy.repository.UserRepository;
import com.wuxy.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author: wuxy
 * @create: 2019-04-28 08:54
 **/
@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserRepository userRepository;

    @Override
    public UserVO findAll(int page, int limit) {
        return new UserVO(0, "", userRepository.count(), userRepository.findAll((page - 1) * limit, limit));
    }

    @Override
    public void deleteById(int id) {
        userRepository.deleteById(id);
    }

    @Override
    public User findById(int id) {
        return userRepository.findById(id);
    }

    @Override
    public void update(User user) {
        userRepository.update(user);
    }

    @Override
    public void save(User user) {
        userRepository.save(user);
    }
}
