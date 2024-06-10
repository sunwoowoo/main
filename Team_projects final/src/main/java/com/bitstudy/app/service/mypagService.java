package com.bitstudy.app.service;

import com.bitstudy.app.dao.UserDao;
import com.bitstudy.app.dao.mypageDao;
import com.bitstudy.app.domain.UserDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class mypagService {
    @Autowired
    mypageDao mypageDao;

    @Autowired
    UserDao userDao;
    public UserDto select(String id) {
        UserDto userDto = mypageDao.select(id);
        return userDto;
    }
    public int mypageup(UserDto userDto){
        return userDao.updateUser(userDto);
    }

    public List<UserDto> getList(){return userDao.selectAll();}

    public  int deleteUser(UserDto userDto){
        return  userDao.deletUser(userDto);
    }
}
