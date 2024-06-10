package com.bitstudy.app.controller;

import com.bitstudy.app.domain.korea_tourDto;
import com.bitstudy.app.service.k_reservationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import javax.servlet.http.HttpSession;
//
//@Controller
//public class k_reservation {
//
//    @Autowired
//    k_reservationService krService;
//
//    @GetMapping("/kmypage/reservation")
//    public String mywrite(HttpSession session, korea_tourDto ktDto){
//
////        List<k_reservationDto> list = krService.
//
//        return "";
//    }
//
//
//}
