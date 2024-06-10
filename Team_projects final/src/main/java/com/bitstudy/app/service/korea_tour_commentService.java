package com.bitstudy.app.service;

import com.bitstudy.app.domain.korea_tour_commentDto;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

public interface korea_tour_commentService {
    //댓글 수 증감
    /* @Transactional - 해당 메서드 동작중에 예외가 생기면 롤백!! */
    /* 뒤로 돌아감. */
    @Transactional(rollbackFor = Exception.class)
    int remove(Integer k_no, Integer cno, String commenter);

    @Transactional(rollbackFor = Exception.class)
    int write(korea_tour_commentDto commentDto);

    List<korea_tour_commentDto> getList(Integer k_no);

    int modify(korea_tour_commentDto commentDto);
}
