package com.bitstudy.app.controller;

import com.bitstudy.app.dao.UserDao;
import com.bitstudy.app.domain.UserDto;
import com.bitstudy.app.domain.UserLogin;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.net.URLEncoder;

@Controller
public class login {
    @Autowired
    UserDao userDao;

    @GetMapping("/login")
    public String loginForm() {
        return "login";
    }

    @GetMapping("/logout")
    public String logout(HttpSession session) {
        session.invalidate();
        return "redirect:/";
    }

    @PostMapping("/login")
    public String login(UserLogin userLogin, HttpServletRequest request, HttpServletResponse response) throws Exception {
        String id = userLogin.getId();
        String pw = userLogin.getPw();
        boolean rememberId = userLogin.isRememberId();

        if(!loginChk(id, pw)) {
            String msg = URLEncoder.encode("일치하는 회원정보가 없습니다.", "UTF-8");
            return "redirect:/login?msg="+msg;
        }


        Cookie cookie = new Cookie("id", id);
        if(!rememberId) {
            cookie.setMaxAge(0);
        }

        response.addCookie(cookie);
        HttpSession session = request.getSession();
        session.setAttribute("id", id);
        session.setAttribute("pw", pw);
        System.out.println(pw);
        return "redirect:/";
    }
    private boolean loginChk(String id, String pw) {
        UserDto user = userDao.selectUser(id);

        if(user == null) return false;

        return user.getPw().equals(pw);
    }
}
