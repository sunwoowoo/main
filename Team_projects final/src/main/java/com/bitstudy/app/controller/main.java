package com.bitstudy.app.controller;

import com.google.protobuf.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class main{
    @RequestMapping("/")
    public String main() {
        return "main";
    }
}
