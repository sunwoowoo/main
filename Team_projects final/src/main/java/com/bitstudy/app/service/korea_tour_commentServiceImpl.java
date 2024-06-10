package com.bitstudy.app.service;

import com.bitstudy.app.dao.korea_tourDao;
import com.bitstudy.app.dao.korea_tour_commentDao;
import com.bitstudy.app.domain.korea_tour_commentDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class korea_tour_commentServiceImpl implements korea_tour_commentService {
    @Autowired
    korea_tourDao ktDao;

    @Autowired
    korea_tour_commentDao ktcDao;
    //댓글 삭제
    //댓글 수 감소
    /* @Transactional - 해당 메서드 동작중에 예외가 생기면 롤백!! */
    /* 뒤로 돌아감. */
    @Override
    @Transactional(rollbackFor = Exception.class)
    public int remove(Integer k_no, Integer c_no, String c_commenter) {
       // ktDao.updateCommentCount(k_no, -1);

        return ktcDao.delete(c_no, c_commenter);
    }
    //댓글 추가
    //댓글 수 증가
    @Override
    @Transactional(rollbackFor = Exception.class)
    public int write(korea_tour_commentDto ktcDto){
        System.out.println("등록3");
        //ktDao.updateCommentCount(ktcDto.getK_no(), 1);  //ktDao에 댓글수 업데이트하는 메서드 실행
        return ktcDao.insert(ktcDto);
    };
    // 댓글 리스트 불러오기
    @Override
    public List<korea_tour_commentDto> getList(Integer k_no){

        return ktcDao.selectAll(k_no);
    };

    // 댓글 수정
    @Override
    public int modify(korea_tour_commentDto ktcDto){
        return ktcDao.update(ktcDto);
    };



}
