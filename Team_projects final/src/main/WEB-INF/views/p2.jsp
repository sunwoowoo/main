<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="/resources/css/p2.css">
    <script defer src="/resources/js/p2.js"></script>
    <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
</head>

<body>
<header>
    <div class="header_list_0"> <a href="<c:url value="/p1"/>">HOME</a></div>
    <div class="header_list_1"><a href="<c:url value="/p3"/>" class="scroll_move">남자</a></div>
    <div class="header_list_2"><a href="<c:url value="/p3"/>" class="scroll_move">여자</a></div>
    <div class="header_list_3"><a href="<c:url value="/p3"/>" class="scroll_move">장신구</a></div>
    <div class="header_list_4"><a href="<c:url value="/p2"/>">로그인</a></div>
</header>
<div class="container" id="container">
    <div class="form-container sign-up-container">
        <form action="#">
            <h1>계정 생성</h1>
            <div class="social-container">
                <a href="#" class="social"><i class="fab fa-facebook-f"></i>1</a>
                <a href="#" class="social"><i class="fab fa-google-plus-g"></i>2</a>
                <a href="#" class="social"><i class="fab fa-linkedin-in"></i>3</a>
            </div>
            <span>등록을 위해 이메일 사용</span>
            <input type="text" placeholder="이름">
            <input type="email" placeholder="이메일">
            <input type="password" placeholder="비밀번호">
            <button>가입</button>
        </form>
    </div>
    <div class="form-container sign-in-container">
        <form action="#">
            <h1>로그인</h1>
            <div class="social-container">
                <a href="#" class="social"><i class="fab fa-facebook-f"></i>1</a>
                <a href="#" class="social"><i class="fab fa-google-plus-g"></i>2</a>
                <a href="#" class="social"><i class="fab fa-linkedin-in"></i>3</a>
            </div>
            <span>계정 사용</span>
            <input type="email" placeholder="이메일">
            <input type="password" placeholder="비밀번호">
            <a href="#">비밀번호을 잊었나?</a>
            <button>가입</button>
        </form>
    </div>
    <div class="overlay-container">
        <div class="overlay">
            <div class="overlay-panel overlay-left">
                <h1>감사</h1>
                <p>개인정보로 로그인</p>
                <button class="ghost" id="signIn">로그인</button>
            </div>
            <div class="overlay-panel overlay-right">
                <h1>끝</h1>
                <p>정보를 입력하고 시작</p>
                <button class="ghost" id="signUp"> 가입</button>
            </div>
        </div>
    </div>
</div>
</body>
</html>
