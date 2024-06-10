package com.bitstudy.app.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class modetour_trip_item {
    @RequestMapping(value = "/modetour_trip_item")
    public String modetour_trip_item() {
        return "modetour_trip_item";
    }

//    @GetMapping(value = "/modetour_trip_item")
//    public String tologin(HttpServletRequest request, HttpSession session) {
//
//        session.setAttribute("prevPage", request.getServletPath());
//
//
//        return "modetour_trip_item";
//    }
}
