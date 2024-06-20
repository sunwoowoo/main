<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "java.net.URLDecoder"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:set var="logInOutLink" value="${ sessionScope.id==null ? '/login':'/logout' }" />
<c:set var="logInOutTxt" value="${ sessionScope.id==null ? 'login':'logout' }" />

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>login</title>

    <link rel="stylesheet" href="<c:url value="/resources/css/modetour_header.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/css/login.css"/>">
    <link rel="stylesheet" href="/resources/css/modetour_footer.css">
</head>
<body>
<div id="wrap">
    <div class="header">
        <div class="header_top_box content_area">
            <div class="header_top_left_box">
                <div class="swiper-container header_logo_box" >
                    <div class="swiper-wrapper">
                        <a class="swiper-slide"><div class="main_logo">로고</div></a>
                        <a class="swiper-slide"><div class="main_logo">로고</div></a>
                        <a class="swiper-slide"><div class="main_logo">로고</div></a>
                        <a class="swiper-slide"><div class="main_logo">로고</div></a>
                    </div>
                </div>
                <form action="" class="search_form">
                    <div class="header_search_box">
                        <input type="search" placeholder="검색어를 입력해 주세요." class="header_search_input">
                        <img src="<c:url value="/resources/img/logo/icon_search.svg"/>" class="icon_search">
                    </div>
                    <div class="chs_trip_box">
                        <div class="trip_area">
                            <p class="search_area">지역을 선택해주세요.</p>
                            <svg color="currentcolor" height="26px" viewBox="0 0 26 26" width="26px" xmlns="http://www.w3.org/2000/svg"><g data-name="icon_>_26" id="icon___26" transform="translate(26) rotate(90)"><rect data-name="사각형 739" fill="none" height="26" id="사각형_739" width="26"></rect><path d="M0,0,7.721,6.758,0,13.517" data-name="패스 193" fill="none" id="패스_193" stroke="#111" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" transform="translate(9.141 6.24)"></path></g></svg>
                        </div>
                        <div class="trip_date">
                            <p class="search_area">여행 예정일을 적어주세요</p>
                            <svg color="currentcolor" height="26px" viewBox="0 0 26 26" width="26px" xmlns="http://www.w3.org/2000/svg"><g data-name="icon_>_26" id="icon___26" transform="translate(26) rotate(90)"><rect data-name="사각형 739" fill="none" height="26" id="사각형_739" width="26"></rect><path d="M0,0,7.721,6.758,0,13.517" data-name="패스 193" fill="none" id="패스_193" stroke="#111" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" transform="translate(9.141 6.24)"></path></g></svg>
                        </div>
                        <input type="button" value="검색하기" class="trip_result">
                    </div>
                </form>
            </div>
            <div class="header_top_right_box">
                <a href="<c:url value="/login"/>" class="sub_icon">
                    <span>로그인</span>
                </a>
                <a href="<c:url value="/sign_up"/>" class="sub_icon">
                    <span>회원가입</span>
                </a>
                <a href="" class="sub_icon">
                    <span>마이페이지</span>
                </a>
            </div>
        </div>
        <div class="header_bottom_box content_area">
            <ul class="header_bottom_left_box">
                <li class="all_menu">
                    <div class="all_menu_logo">
                        <img src="<c:url value="/resources/img/logo/icon_menu_22.svg"/>" class="ham_btn">
                        <span>전체메뉴</span>
                    </div>
                    <div class="all_menu_txt_box content_area">
                        <div class="all_menu_list">
                            <div class="all_menu_txt">
                                <p>국내여행</p>
                                <a href="">지역</a>
                                <a href="">지역</a>
                                <a href="">지역</a>
                                <a href="">지역</a>
                                <a href="">지역</a>
                                <a href="">지역</a>
                                <a href="">지역</a>
                            </div>
                            <div class="all_menu_txt">
                                <p>커뮤니티</p>
                            </div>
                            <div class="all_menu_txt">
                                <p>M타임딜</p>
                            </div>
                            <div class="all_menu_txt">
                                <p>고객 센터</p>
                                <span>자주 찾는 질문</span>
                                <span>공지사항</span>
                                <span>대리점 찾기</span>
                                <span>상품권 안내</span>
                                <span>고객 현장</span>
                                <span>고객의 소리</span>
                            </div>
                            <div class="all_menu_txt">
                                <p>이벤트</p>
                                <span>이벤트</span>
                                <span>혜택정보</span>
                            </div>
                            <div class="all_menu_txt">
                                <P>LIVE M</P>
                            </div>
                        </div>
                    </div>
                </li>
                <li class="bottom_menu"><a href="">국내여행</a></li>
                <li class="bottom_menu"><a href="">커뮤니티</a><li>
            </ul>
            <ul class="header_bottom_right_box">
                <li class="bottom_menu">기획전</li>
                <li class="bottom_menu">이벤트</li>
                <li class="bottom_menu">고객센터</li>
            </ul>
        </div>
    </div>
    <div class="main content_area">
        <form action="<c:url value='/login'/>" method="post" onsubmit="return formCheck(this);" class="login_box">
            <h1>Login</h1>
            <div id="msg">
                <c:if test="${not empty param.msg}">
                    <i class="fa fa-exclamation-circle"> ${URLDecoder.decode(param.msg)}</i>
                </c:if>
            </div>
            <input type="text"  name="id" placeholder="아이디를 입력하세요." value="${ cookie.id.value }" class="user_id" autofocus>
            <input type="password" name="pw" placeholder="비밀번호를 입력하세요. "class="user_password">
                <label><input type="checkbox" name="rememberId" ${empty cookie.id.value?"":"checked" }>아이디/비밀번호 기억하기</label>
            <button class="login_btn">로그인</button>

            <div class="find_box">
                <a href="" class="id_find">아이디 찾기</a>
                <div class="mini_circle"></div>
                <a href="" class="">비밀번호 찾기</a>
                <div class="mini_circle"></div>
                <a href="<c:url value="/sign_up"/>" class="">회원가입</a>
            </div>

        </form>
    </div>
</div>
<script>
    function formCheck(frm) {
        let msg ='';

        if(frm.id.value.length==0) {
            setMessage('id를 입력해주세요.', frm.id);
            return false;
        }

        if(frm.pwd.value.length==0) {
            setMessage('password를 입력해주세요.', frm.pwd);
            return false;
        }

        return true;
    }

    function setMessage(msg, element){
        document.getElementById("msg").innerHTML = ` ${'${msg}'}`;

        if(element) {
            element.select();
        }
    }
</script>
</body>
</html>