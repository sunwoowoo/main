package com.bitstudy.app.controller;

import com.bitstudy.app.domain.k_zzimDto;
import com.bitstudy.app.domain.korea_tourDto;
import com.bitstudy.app.service.k_zzimService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class k_zzimController {
    @Autowired
    k_zzimService service;



    @GetMapping("/mykzzim")
    @ResponseBody
    public ResponseEntity <List<korea_tourDto>> mykzzim(k_zzimDto dto, Model m, HttpSession session) {

        try {
            String u_id = (String) session.getAttribute("id");

            List<korea_tourDto> mykzzimList = service.selectMyzzim(u_id);
            System.out.println("내가 찜한 리스트"+ mykzzimList);
            return new ResponseEntity<List<korea_tourDto>>(mykzzimList, HttpStatus.OK);
        } catch (Exception e) {
            e.printStackTrace();
            return new ResponseEntity<List<korea_tourDto>>(HttpStatus.BAD_REQUEST);
        }

    }




    @GetMapping("/kzzim")
    @ResponseBody
    public ResponseEntity<k_zzimDto> selectIszzim(Integer k_no, HttpSession session) {
        try {
            String u_id = (String) session.getAttribute("id");
            k_zzimDto dto = new k_zzimDto();
            dto.setU_id(u_id);
            dto.setK_no(k_no);
            System.out.println(dto);
            k_zzimDto iszzim = service.selectIszzim(dto);
            System.out.println("찜인가"+iszzim);
            return new ResponseEntity<k_zzimDto>(iszzim, HttpStatus.OK);
        } catch (Exception e) {
            e.printStackTrace();
            return new ResponseEntity<k_zzimDto>(HttpStatus.BAD_REQUEST);
        }
    }

    //찜 추가
    @PostMapping("/kzzim")
    public ResponseEntity<String> insertzzim(@RequestBody k_zzimDto dto, HttpSession session) {
        try {
            String u_id = (String) session.getAttribute("id");
            dto.setU_id(u_id);
            dto.setK_no(dto.getK_no());
//            if(service.insertzzim(dto)!=1){
//                throw new Exception("실패");
//            }
            service.insertzzim(dto);

            HttpHeaders responseHeader = new HttpHeaders();
            responseHeader.add("content-type", "text/html; charset=UTF-8");

            return new ResponseEntity<String>("찜 등록 성공", responseHeader, HttpStatus.OK);
        } catch (Exception e) {
            e.printStackTrace();
            return new ResponseEntity<String>(HttpStatus.BAD_REQUEST);
        }
    }

//찜 삭제
    @DeleteMapping("/kzzim/{z_no}")
    public ResponseEntity<String> deletezzim(@PathVariable Integer z_no, k_zzimDto dto, HttpSession session) {
        try{
            String u_id = (String) session.getAttribute("id");
            dto.setZ_no(z_no);
            dto.setU_id(u_id);
            dto.setK_no(dto.getK_no());
            System.out.println("디티오 담은거"+dto);
            System.out.println(1111111);
            service.deletezzim(dto);
            System.out.println(44444);
            System.out.println(dto);
            HttpHeaders responseHeader = new HttpHeaders();
            responseHeader.add("content-type", "text/html; charset=UTF-8");
            return new ResponseEntity<String>("찜 취소", responseHeader, HttpStatus.OK);
        }catch(Exception e){
            e.printStackTrace();
            return new ResponseEntity<String>(HttpStatus.BAD_REQUEST);
         }
    }

}