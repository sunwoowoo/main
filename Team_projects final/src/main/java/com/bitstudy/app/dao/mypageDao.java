package com.bitstudy.app.dao;

import com.bitstudy.app.domain.UserDto;

public interface mypageDao {
    UserDto select(String id);
}