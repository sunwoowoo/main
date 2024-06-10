package com.bitstudy.app.service;

import com.bitstudy.app.dao.boardDao;
import com.bitstudy.app.dao.board_imgDao;
import com.bitstudy.app.domain.BoardDto;
import com.bitstudy.app.domain.board_imgDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class boardService {
    @Autowired
    boardDao boardDao;

    @Autowired
    board_imgDao board_imgDao;

    public BoardDto read(Integer b_no){
        BoardDto dto = boardDao.select(b_no);
        boardDao.increaseViewCount(b_no);
        return dto;
    }

    public int getCount(){
        return boardDao.count();
    }

    public List<BoardDto> getList(){
        return boardDao.selectAll();
    }

    public List<BoardDto> getPage(Map map){
        return boardDao.selectPage(map);
    }

    public List<BoardDto> getviewPage(Map map){return boardDao.selectviewSeqPage(map);}

    public int insert(BoardDto dto){
        System.out.println("여기1: " + dto);
        return boardDao.insert(dto);}

    public int lastb_no(){
        return boardDao.lastb_no();
    }

    public int insert_img(board_imgDto dto){
        return board_imgDao.insert_img(dto);
    }
    public int imgupdate(board_imgDto dto){return board_imgDao.imgupdate(dto);}

    public int imgdelete(Integer b_no){
        return board_imgDao.imgdelete(b_no);
    }
    public int modify(BoardDto dto){return boardDao.update(dto);}

    public int remove(Integer b_no, String b_writer){return boardDao.delete(b_no,b_writer);}
}
