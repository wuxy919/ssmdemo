package com.wuxy.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

/**
 * @author: wuxy
 * @create: 2019-04-28 13:08
 **/
@Data
@NoArgsConstructor
@AllArgsConstructor
public class UserVO {
    private int code;
    private String msg;
    private int count;
    private List<User> data;
}
