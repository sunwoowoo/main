package com.bitstudy.app.controller;

import com.bitstudy.app.dao.UserDao;
import com.bitstudy.app.domain.UserDto;
import com.bitstudy.app.service.mypagService;
import org.apache.taglibs.standard.tag.el.sql.SetDataSourceTag;
import org.checkerframework.checker.units.qual.C;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.awt.*;
import java.io.File;
import java.net.IDN;
import java.net.URLEncoder;

@Controller
public class mypage {
    @Autowired
    mypagService mypagService;

    @Autowired
    UserDao userDao;

    private static final String F_PATH = "C:/Users/user1/Desktop/Team_projects/src/main/webapp/resources/img/user_img/";
    // 업글
    @PostMapping("/mypage/list")
    public String mypageList(@RequestParam(value = "f_file", required = false) MultipartFile fff,UserDto userDto,  HttpSession session) {


        String id = (String) session.getAttribute("id");
        String pw = (String) session.getAttribute("pw");
        userDto.setPw(pw);
        userDto.setId(id);
        userDto.setPicture(userDto.getPicture());
        if (fff == null || fff.isEmpty()) {
            userDto.setPicture(userDto.getPicture());
        } else {
            String originalFileName = fff.getOriginalFilename();
            String safeFile = F_PATH + originalFileName;
            System.out.println("originalFileName: " + originalFileName);
            System.out.println("safeFile: " + safeFile);
            try {
                fff.transferTo(new File(safeFile));
            } catch (Exception e) {
                e.printStackTrace();
            }
            userDto.setPicture(originalFileName);}
        mypagService.mypageup(userDto);
        return "/mypage";
    }
// 삭제
    @RequestMapping("mypage/remove")
    public String mypageRemove( UserDto userDto,HttpSession session) {
        String id = (String) session.getAttribute("id");
        String pw = (String) session.getAttribute("pw");
        userDto.setId(id);
        userDto.setPw(pw);
        userDto.setPicture(null);
        mypagService.deleteUser(userDto);
        System.out.println(userDto);
        return "/mypage";
    }
// 값 가져오기
    @GetMapping("/mypage")
    public String mypage(UserDto userDto, HttpServletRequest request, Model model) {

        HttpSession session = request.getSession();
        if (!loginChk(request)) {
            return "redirect:/login";
        }
        String id = (String) session.getAttribute("id");
        String pw = (String) session.getAttribute("pw");
        userDto.setId(id);
        userDto.setPw(pw);
        userDto = mypagService.select(id);
        model.addAttribute("userDto", userDto);
        return "mypage";
    }

    private boolean loginChk(HttpServletRequest request) {
        HttpSession session = request.getSession();
        return session.getAttribute("id") != null;
    }

}
