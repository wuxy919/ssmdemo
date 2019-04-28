package com.wuxy.repository;

import com.wuxy.entity.User;

import java.util.List;

/**
 * @author: wuxy
 * @create: 2019-04-28 08:48
 **/
public interface UserRepository {
   public List<User> findAll(int page, int limit);
   public int count();
   public void deleteById(int id);
   public User findById(int id);
   public void update(User user);
   public void save(User user);
}
