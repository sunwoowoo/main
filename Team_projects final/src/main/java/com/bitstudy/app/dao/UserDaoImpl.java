package com.bitstudy.app.dao;

import com.bitstudy.app.domain.UserDto;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Repository
public class UserDaoImpl implements UserDao {
    @Autowired
    SqlSession sqlSession;
    String namespace = "com.bitstudy.app.dao.UserMapper.";

    /***************** 전체 삭제 *****************/
    @Override
    public int deleteAll() {return sqlSession.delete(namespace+"deleteAll");}

    /***************** 회원정보 입력 ****************/
    @Override
    public int insertUser(UserDto userDto) {
        return sqlSession.insert(namespace+"insertUser", userDto);
    }

    /***************** 회원정보 저장 *****************/
    @Override
    public UserDto selectUser(String id) {
        return sqlSession.selectOne(namespace+"selectUser", id);
    }
    /***************** 테스트용 *****************/
    @Override
    public int insert(UserDto userDto) {
        return sqlSession.insert(namespace+"insertUser", userDto);
    }
    @Override
    public List<UserDto> selectAll() {return sqlSession.selectList(namespace+"selectAll");}
    /***************** 자료 업글 *****************/
    @Override
    public int updateUser(UserDto userDto) {
        return sqlSession.update(namespace+"updateUser", userDto);
    }
    @Override
    public  int picture_updat(UserDto userDto){return sqlSession.update(namespace+"picture_updat", userDto);}

    /***************** 자료 삭제 *****************/
    @Override
    public int deletUser(UserDto userDto){return sqlSession.update(namespace+"deleteUser", userDto);}
}
