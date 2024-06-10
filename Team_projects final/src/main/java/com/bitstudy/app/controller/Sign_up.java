package com.bitstudy.app.controller;

import com.bitstudy.app.dao.UserDao;
import com.bitstudy.app.domain.UserDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import java.net.URLEncoder;

@Controller
public class Sign_up {
    @Autowired
    UserDao userDao;


    @GetMapping("/sign_up")
    public String loginForm() {
        return "sign_up";
    }


    @PostMapping("/sign_save")
    public String save(UserDto user) throws Exception {
        if (userDao.selectUser(user.getId()) != null) { // null 이면 사용 가능, 아니면 이미 사용중인 아이디
            String msg = URLEncoder.encode("중복된 아이디입니다.", "UTF-8");
            return "redirect:/sign_up?msg=" + msg;
        }
        if (userDao.selectUser(user.getPw()) != null) {
            String msg = URLEncoder.encode("중복된 비밀번호입니다.", "UTF-8");
            return "redirect:/sign_up?msg=" + msg;
        }
        if (userDao.selectUser(user.getName()) != null) {
            String msg = URLEncoder.encode("중복된 비밀번호입니다.", "UTF-8");
            return "redirect:/sign_up?msg=" + msg;
        }
        if (userDao.selectUser(user.getEmail()) != null) {
            String msg = URLEncoder.encode("중복된 이름입니다.", "UTF-8");
            return "redirect:/sign_up?msg=" + msg;
        }
        if (userDao.selectUser(user.getBirth()) != null) {
            String msg = URLEncoder.encode("중복된 이메일입니다.", "UTF-8");
            return "redirect:/sign_up?msg=" + msg;
        }
        if (userDao.selectUser(user.getBirth()) != null) {
            String msg = URLEncoder.encode("중복된 주민번호입니다.", "UTF-8");
            return "redirect:/sign_up?msg=" + msg;

        }
        userDao.insertUser(user);
        return "redirect:/login";
    }
}