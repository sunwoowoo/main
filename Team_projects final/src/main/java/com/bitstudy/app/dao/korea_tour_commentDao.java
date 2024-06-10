package com.bitstudy.app.dao;

import com.bitstudy.app.domain.korea_tour_commentDto;

import java.util.List;

public interface korea_tour_commentDao {
    int deleteAll();

    //cno, commenter 값 받아서 map에 넣기.
    int delete(Integer cno, String commenter);

    int count(Integer bno);

    List<korea_tour_commentDto> selectAll(Integer bno);

    int insert(korea_tour_commentDto commentDto);

    int update(korea_tour_commentDto commentDto);
}
