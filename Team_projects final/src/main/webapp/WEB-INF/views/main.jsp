<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="/resources/css/main.css">
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script defer src="/resources/js/main.js"></script>
</head>
<body>
<header>
    <div class="h"><a href="#scroll1" class="scroll_move">home</a></div>
    <div class="a"><a href="#scroll2" class="scroll_move">about</a></div>
    <div class="s"><a href="#scroll3" class="scroll_move">skill</a></div>
    <div class="p"><a href="#scroll4" class="scroll_move">potfolio</a></div>
    <div class="c"><a href="#scroll5" class="scroll_move">contact</a></div>
</header>
<main>
    <div class="home" id="scroll1">
        <div class="home_box">
            <h2>배우고 성장하는 </h2>
            <h2>김선우 입니다.</h2>
        </div>
    </div>
    <div class="about" id="scroll2">
        <div class="title">about</div>
        <div class="about_box">
            <div class="about_title ing">
                <div class="about_img"></div>
            </div>
            <div class="about_title">
                <div class="profile">
                    <h1>profile</h1>
                    <ul>
                        <li>이름: 김선우</li>
                        <li>나이: 26(1999년 10월 04일)</li>
                        <li>주소: 경기도 용인시 </li>
                        <li>연락처: 010-2111-3064</li>
                        <li>E-mail: po8702@naver.com</li>
                    </ul>
                </div>
                <div class="history"><h1>history</h1>
                    <ul>
                        <li>2024.02 호서대 졸업</li>
                        <li>2023. 03 ~ 2023.12 한국세라믹 기술원 연수</li>
                        <li>2018 상현고등학교 졸업</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="skill" id="scroll3">
        <div class="title">skill</div>
        <div class="skill_box">
            <div>
                <img src="<c:url value="/resources/imgs/3_1.png"/>" alt="">
            </div>
            <div>
                <img src="<c:url value="/resources/imgs/3_2.png"/>" alt="">
            </div>
            <div>
                <img src="<c:url value="/resources/imgs/3_3.png"/>" alt="">
            </div>
            <div>
                <img src="<c:url value="/resources/imgs/3_4.png"/>" alt="">
            </div>
            <div>
                <img src="<c:url value="/resources/imgs/3_5.png"/>" alt="">
            </div>
        </div>
    </div>
    <div class="potfolio" id="scroll4">
        <div class="title">potfolio</div>
        <div class="potfolio1">
            <a href="<c:url value="/p1"/>"><div class="potfolio_img ing1"></div>
            </a>
            <div class="potfolio_text">
                <h1>clothes shop</h1>
            </div>
        </div>
        <div class="potfolio2">
            <a href="/index"> <div class="potfolio_img ing2"></div>
            </a>
            <div class="potfolio_text">
                <h1>meetour</h1>
            </div>
        </div>
    </div>
    <div class="contact" id="scroll5">
        <div class="contact_box">
            <div class="title">contact</div>
            <div class="text">010-2111-3064</div>
            <div class="text">po8702@naver.com</div>
        </div>
    </div>
</main>
</body>
</html>