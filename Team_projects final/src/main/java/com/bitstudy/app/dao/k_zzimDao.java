package com.bitstudy.app.dao;


import com.bitstudy.app.domain.k_zzimDto;
import com.bitstudy.app.domain.korea_tourDto;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository
public class k_zzimDao {
    @Autowired
    SqlSession session;

    String namespace="com.bitstudy.app.dao.k_zzimMapper.";

//   모든 찜목록
    public List<k_zzimDto> selectAllzzim(){
        return session.selectList(namespace+"selectAllzzim");
    }
// 내가 찜한 목록
    public List<korea_tourDto> selectMyzzim(String u_id){
        return session.selectList(namespace+"selectMyzzim", u_id);
    }


    //한 게시글에서 내가 찜했나
    public k_zzimDto selectIszzim(k_zzimDto u){

        return session.selectOne(namespace+"selectIszzim" , u);


    }
    // 찜 등록
    public int insertzzim(k_zzimDto u){
        return session.insert(namespace+"insertzzim" , u);
    }
    //찜 삭제
    public int deletezzim(k_zzimDto u){
        System.out.println(333333);
        return session.delete(namespace+"deletezzim" , u);
    }


    public k_zzimDto test(Map map){
        System.out.println(4444444);
        System.out.println(map);
        return session.selectOne(namespace+"test",map);}


}
