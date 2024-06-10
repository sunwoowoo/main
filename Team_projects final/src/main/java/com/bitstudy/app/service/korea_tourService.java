package com.bitstudy.app.service;

import com.bitstudy.app.dao.korea_tourDao;
import com.bitstudy.app.domain.Do_areaDTO;
import com.bitstudy.app.domain.Si_areaDTO;
import com.bitstudy.app.domain.k_searchDto;
import com.bitstudy.app.domain.korea_tourDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

/** 할일: 검색 관련 DAO 랑 연결되는 서비스 만들기
 */

@Service
public class korea_tourService {

    @Autowired
    korea_tourDao korea_tourDao;



    public int getCount() {
        return korea_tourDao.count();
    }

    public korea_tourDto read(Integer k_no) {

        korea_tourDto dto = korea_tourDao.select(k_no); // 게시글 1개 가져오기
        //korea_tourDao.increaseViewCount(k_no);// 조회수 증가

        return dto;
    }

    public List<korea_tourDto> getList() {
        return korea_tourDao.selectAll();
    }

    public List<korea_tourDto> getPage(Map map) {
        return korea_tourDao.selectPage(map);
    }

    public int removeAll() {
        return korea_tourDao.deleteAll();
    }

    public int remove(Integer k_no, String writer) {
        return korea_tourDao.delete(k_no, writer);
    }

    public int write(korea_tourDto dto) {
        return korea_tourDao.insert(dto);
    }

    public int modify2(Map map) {
        return korea_tourDao.update(map);
    }

    public int modify(korea_tourDto dto) {
        return korea_tourDao.update(dto);
    }


    // 검색
    public List<korea_tourDto> getSearchResultPage(k_searchDto sc) {
        return korea_tourDao.searchSelectPage(sc);
    }

    public int getSearchResultCount(k_searchDto sc) {
        return korea_tourDao.searchSelectCount(sc);
    }


    // 도 불러오기
    public List<Do_areaDTO> getDoList(){
        return korea_tourDao.getDoList();
    }
    // 시 불러오기
    public List<Si_areaDTO> getSiList(int do_id){
        return korea_tourDao.getSiList(do_id);
    }

}




















