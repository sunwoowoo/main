package com.bitstudy.app.controller;

import com.bitstudy.app.domain.korea_tour_commentDto;
import com.bitstudy.app.service.korea_tour_commentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class korea_tour_comment {
    @Autowired
    korea_tour_commentService service;

    /*해당 게시글의 모든 댓글 불러오기*/
    @GetMapping("/kcomments")
    @ResponseBody
    public ResponseEntity<List<korea_tour_commentDto>> list(Integer k_no, HttpSession session, Model m){
        try {
            List<korea_tour_commentDto> list = service.getList(k_no);
//            for(korea_tour_commentDto dto : list){
//                    dto.setLevel(dto.getLevel());
//            }
m.addAttribute("u", session.getAttribute("id"));


            return new ResponseEntity<List<korea_tour_commentDto>>(list, HttpStatus.OK);//200 성공
        } catch (Exception e) {
            //           throw new RuntimeException(e);
            e.printStackTrace();
            return new ResponseEntity<List<korea_tour_commentDto>>(HttpStatus.BAD_REQUEST); //400 클라이언트 잘못
            //  500 우리 잘못
        }
    }
    /* 댓글 등록 */
    @PostMapping("/kcomments")
    @ResponseBody
    public ResponseEntity<String> write(@RequestBody korea_tour_commentDto ktcDto, Integer k_no, HttpSession session , HttpServletRequest request){

        System.out.println("등록1");
        try {




            String c_commenter = (String) session.getAttribute("id");
            ktcDto.setC_commenter(c_commenter);

            //ktcDto.setC_commenter("asdf"); //임시
            ktcDto.setK_no(k_no);
            ktcDto.setC_state("N");

            System.out.println("등록2");
            if(service.write(ktcDto) !=1){
                throw new Exception("실패");
            }
            System.out.println("ktcDto = " + ktcDto);

            HttpHeaders responseHeader = new HttpHeaders();
            responseHeader.add("content-type","text/html; charset=UTF-8");
            return new ResponseEntity<String> ("댓글 등록 성공", responseHeader, HttpStatus.OK);// 200


//            return new ResponseEntity<String> ("댓글 등록 성공", HttpStatus.OK);// 200
        } catch (Exception e) {

            System.out.println("에러여기");
            e.printStackTrace();
            return new ResponseEntity<String> (HttpStatus.BAD_REQUEST);// 400
        }


    }

    /* 댓글 수정 - comment.jsp 에서 댓글 '등록' 누르고 온거 */
    @PatchMapping("/kcomments/{c_no}")
    public ResponseEntity<String> modify(@PathVariable Integer c_no, @RequestBody korea_tour_commentDto ktcDto, HttpSession session) {
        try {

            System.out.println("수정");
            String c_commenter = (String) session.getAttribute("id");

            ktcDto.setC_commenter(c_commenter);
//            ktcDto.setC_commenter("asdf"); //임시
            ktcDto.setC_no(c_no);
            ktcDto.setC_state("N");
            if(service.modify(ktcDto) != 1) {
                throw new Exception("실패");
            }
//            return new ResponseEntity<String> ("댓글 등록 성공", HttpStatus.OK);// 200

            HttpHeaders responseHeader = new HttpHeaders();
            responseHeader.add("content-type","text/html; charset=UTF-8");

            return new ResponseEntity<String> ("댓글 수정 성공", responseHeader, HttpStatus.OK);// 200

        } catch (Exception e) {
            e.printStackTrace();
            return new ResponseEntity<String> (HttpStatus.BAD_REQUEST);// 400
        }
    }


    /* 댓글 삭제 */
    @DeleteMapping("/kcomments/{c_no}")
    public ResponseEntity<String> remove(@PathVariable Integer c_no, korea_tour_commentDto ktcDto, HttpSession session) {
        try {
            String c_commenter = (String) session.getAttribute("id");

            //c_commenter ="asdf";//임시


            System.out.println(ktcDto.getK_no()+", " + c_no+","+c_commenter);
            System.out.println("ktcDto: " + ktcDto);
            if(service.remove(ktcDto.getK_no(), c_no, c_commenter) != 1) {
                throw new Exception("실패");
            }

//            return new ResponseEntity<String> ("댓글 등록 성공", HttpStatus.OK);// 200

            HttpHeaders responseHeader = new HttpHeaders();
            responseHeader.add("content-type","text/html; charset=UTF-8");

            return new ResponseEntity<String> ("댓글 삭제 성공", responseHeader, HttpStatus.OK);// 200

        } catch (Exception e) {
            e.printStackTrace();
            return new ResponseEntity<String> (HttpStatus.BAD_REQUEST);// 400
        }
    }

    private boolean loginChk (HttpSession session){
        return session.getAttribute("id") != null;
        // 세션에 id가 있으면 결과는 true
        // 없으면 false 나옴
    }

}
