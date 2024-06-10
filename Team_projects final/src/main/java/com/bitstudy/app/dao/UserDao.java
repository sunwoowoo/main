package com.bitstudy.app.dao;

import com.bitstudy.app.domain.UserDto;

import java.util.List;

public interface UserDao {
    int insertUser(UserDto userDto);
    UserDto selectUser(String id);
    int updateUser(UserDto userDto);
    int deletUser(UserDto userDto);


    int insert(UserDto userDto);
    List<UserDto> selectAll();
    int deleteAll() ;
    int picture_updat(UserDto userDto);

}
