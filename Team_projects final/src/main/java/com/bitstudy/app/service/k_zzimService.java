package com.bitstudy.app.service;

import com.bitstudy.app.dao.k_zzimDao;
import com.bitstudy.app.domain.k_zzimDto;
import com.bitstudy.app.domain.korea_tourDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class k_zzimService {
    @Autowired
    k_zzimDao kzzimDao;;

    public List<k_zzimDto> selectAllzzim(){
        return kzzimDao.selectAllzzim();
    }

    public List<korea_tourDto> selectMyzzim(String u_id){
        return kzzimDao.selectMyzzim(u_id);
    }

    public k_zzimDto selectIszzim(k_zzimDto u){

        return kzzimDao.selectIszzim(u);
    }
    public int insertzzim(k_zzimDto u){
        return kzzimDao.insertzzim(u);
    }
    public int deletezzim(k_zzimDto u){
        System.out.println(22222222);
        return kzzimDao.deletezzim(u);
    }



    public k_zzimDto test(Map map){
        System.out.println(3333333);
        return kzzimDao.test(map);
    }
}
