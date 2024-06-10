package com.bitstudy.app.controller;

import com.bitstudy.app.domain.commentDto;
import com.bitstudy.app.service.commentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class CommentController {
    @Autowired
    commentService service;

    @GetMapping("/comments")
    @ResponseBody
    public ResponseEntity<List<commentDto>> list(Integer b_no){
        System.out.println(service.getList(271));
        try{
            List<commentDto> list = service.getList(b_no);
            return new ResponseEntity<List<commentDto>>(list, HttpStatus.OK);
        }catch (Exception e){
            e.printStackTrace();
            return new ResponseEntity<List<commentDto>>(HttpStatus.BAD_REQUEST);
        }
    }
    @PostMapping("/comments")
    public ResponseEntity<String>write(@RequestBody commentDto commentDto, Integer b_no, HttpSession session){
        try{
            String c_writer = (String)session.getAttribute("id");
            commentDto.setC_writer(c_writer);
            commentDto.setB_no(commentDto.getB_no());
            if(service.write(commentDto)!=1){
                throw new Exception("실패");
            }
            HttpHeaders responseHeader = new HttpHeaders();
            responseHeader.add("content-type","text/html; charset=UTF-8");

            return new ResponseEntity<String>("댓글 등록 성공",responseHeader,HttpStatus.OK);
        }catch (Exception e){
            e.printStackTrace();
            return new ResponseEntity<String>(HttpStatus.BAD_REQUEST);
        }
    }
    @PatchMapping("/comments/{c_no}")
    public ResponseEntity<String>modify(@PathVariable Integer c_no, @RequestBody commentDto commentDto,HttpSession session){
        try{
            String c_writer = (String)session.getAttribute("id");

            commentDto.setC_writer(c_writer);
            commentDto.setC_no(c_no);

            if(service.modify(commentDto)!=1){
                throw new Exception("실패");
            }

            HttpHeaders responseHeader = new HttpHeaders();
            responseHeader.add("content-type","text/html; charset=UTF-8");

            return new ResponseEntity<String>("댓글 수정 성공",responseHeader,HttpStatus.OK);
        }catch(Exception e){
            e.printStackTrace();
            return new ResponseEntity<String>(HttpStatus.BAD_REQUEST);
        }
    }

    @DeleteMapping("/comments/{c_no}")
    public ResponseEntity<String>remove(@PathVariable Integer c_no, commentDto commentDto, HttpSession session){
        try{
            String c_writer = (String)session.getAttribute("id");
            if(service.remove(commentDto.getB_no(),c_no,c_writer) !=1 ){
                throw new Exception("실패");
            }
            HttpHeaders responseHeader =new HttpHeaders();
            responseHeader.add("context-type","text/html;charset=UTF-8");

            return new ResponseEntity<String>("댓글 삭제 성공", responseHeader, HttpStatus.OK);
        }catch (Exception e){
            e.printStackTrace();
            return new ResponseEntity<String>(HttpStatus.BAD_REQUEST);
        }
    }


}
