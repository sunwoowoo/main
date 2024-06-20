<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import = "java.net.URLDecoder"%>


<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>sign_up</title>

    <link rel="stylesheet"  href="<c:url value= '/resources/css/modetour_header.css'/>">
    <link rel="stylesheet"  href="<c:url value= '/resources/css/sign_up.css'/>">
    <link rel="stylesheet" href="/resources/css/modetour_footer.css">
</head>
<body>
<div id="wrap">
    <div class="btn_top"><img src="/resources/img/qbt_top.svg" alt=""></div>
    <div class="ham_box">
        <div class="x_btn"><img src="/resources/img/icon_x_26.svg"></div>
        <div class="ham_title">
            <span class="ham_txt">국내여행</span>
            <span class="ham_txt">커뮤니티</span>
        </div>
        <div class="ham_korea_box">
            <a href="<c:url value="/modetour_korea/search"/>" class="ham_mini_link">바로가기</a>
            <a href="" class="ham_mini_link">글 쓰러가기</a>
            <ul class="ham_korea_txt">
                <li><a href="">서울</a></li>
                <li><a href="">경기</a></li>
                <li><a href="">강원도</a></li>
                <li><a href="">부산</a></li>
                <li><a href="">대구</a></li>
                <li><a href="">경남</a></li>
                <li><a href="">경북</a></li>
                <li><a href="">제주</a></li>
                <li><a href="">전남</a></li>
                <li><a href="">전북</a></li>
            </ul>
        </div>
        <div class="ham_commu_box">
            <a href="<c:url value="/modetour_commu/list"/>">바로가기</a>
            <a href="<c:url value="/modetour_commu_dp/write"/>">글 쓰러가기</a>
        </div>
        <div class="advertise">
            <img src="/resources/img/logo/main_Logo.png" alt="">
        </div>
    </div>
    <div class="header">
        <div class="header_top_box content_area">
            <div class="header_top_left_box">
                <div class="swiper-container header_logo_box" >
                    <div class="swiper-wrapper">
                        <a href="<c:url value="/"/>" class="swiper-slide"><img src="/resources/img/logo/main_Logo.png"></a>
                        <a href="<c:url value="/"/>" class="swiper-slide"><img src="/resources/img/logo/main_Logo.png"></a>
                        <a href="<c:url value="/"/>" class="swiper-slide"><img src="/resources/img/logo/main_Logo.png"></a>
                        <a href="<c:url value="/"/>" class="swiper-slide"><img src="/resources/img/logo/main_Logo.png"></a>
                    </div>
                </div>
                <form action="" class="search_form">
                    <div class="header_search_box">
                        <input type="text" placeholder="검색어를 입력해 주세요." class="header_search_input">
                        <img src="/resources/img/logo/icon_search.svg" class="icon_search">
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
                <svg class="!bg-transparent mini_header_logo" height="26" id="icon_menu_26" viewBox="0 0 26 26" width="26" xmlns="http://www.w3.org/2000/svg"><rect data-name="사각형 826" fill="none" height="26" id="사각형_826" width="26"></rect><g data-name="그룹 934" id="그룹_934" transform="translate(-1.422 -1)"><path d="M4.9,5.107H23.489" data-name="패스 9977" fill="none" id="패스_9977" stroke="#111" stroke-linecap="round" stroke-width="2" transform="translate(0.226 1.893)"></path><path d="M4.9,5.107H23.489" data-name="패스 9978" fill="none" id="패스_9978" stroke="#111" stroke-linecap="round" stroke-width="2" transform="translate(0.226 8.893)"></path><path d="M4.9,5.107H23.489" data-name="패스 9979" fill="none" id="패스_9979" stroke="#111" stroke-linecap="round" stroke-width="2" transform="translate(0.226 15.893)"></path></g></svg>
                <a href="<c:url value="/login"/>" class="sub_icon">
                    <span>
                        <a href="<c:url value='${logInOutLink} '/>">${logInOutTxt}</a>
                    </span>
                    <%--                    <img src="/resources/img/logo/icon_mypage_26.svg">--%>
                </a>
                <c:choose>
                    <c:when test="${ sessionScope.id==null }">
                        <a href="<c:url value='/sign_up'/>">회원가입</a>
                    </c:when>
                    <c:otherwise>
                        ${userId} 님
                    </c:otherwise>
                </c:choose>
                <a href="<c:url value="/mypage"/>" class="sub_icon">
                    <img src="/resources/img/logo/icon_reservation_26.svg">
                    <span>마이페이지</span>
                </a>
                <img src="/resources/img/logo/free-icon-arrow-up-15850391.png" class="mini_header_search">
            </div>
        </div>
        <div class="header_bottom_box content_area">
            <ul class="header_bottom_left_box">
                <li class="all_menu">
                    <div class="all_menu_logo">
                        <img src="/resources/img/logo/icon_menu_22.svg" class="ham_btn">
                        <span>전체메뉴</span>
                    </div>
                    <div class="all_menu_txt_box content_area">
                        <div class="all_menu_list">
                            <div class="all_menu_txt">
                                <p>지역별</p>
                                <a href="">서울</a>
                                <a href="">경기</a>
                                <a href="">강원도</a>
                                <a href="">부산</a>
                                <a href="">대구</a>
                                <a href="">경남</a>
                                <a href="">경북</a>
                                <a href="">제주</a>
                                <a href="">전남</a>
                                <a href="">전북</a>
                            </div>
                            <div class="all_menu_txt">
                                <p>커뮤니티</p>
                                <a href="<c:url value="/modetour_commu/list"/>">커뮤니티 바로가기</a>
                                <a href="<c:url value="/modetour_commu_dp/write"/>">글 쓰기</a>
                            </div>
                            <div class="all_menu_txt">
                                <p>국내여행</p>
                                <a href="<c:url value="/modetour_korea/search"/>">국내여행 바로가기</a>
                                <a href="./modetour_commu_dp.html">글 쓰기</a>
                            </div>
                            <div class="all_menu_txt">
                                <a href="<c:url value="/login"/>">로그인</a>
                                <a href="<c:url value="/mypage"/>">마이페이지</a>
                            </div>
                        </div>
                    </div>
                </li>
            </ul>
            <ul class="header_bottom_right_box">
                <li class="bottom_menu"><a href="<c:url value="/modetour_korea/search"/>">국내여행</a></li>
                <li class="bottom_menu"><a href="<c:url value="/modetour_commu/list"/>">커뮤니티</a></li>
            </ul>
        </div>

    </div>
    <div class="main content_area">
        <form action="<c:url value='/sign_save'/>"  method="post" class="sign_up_box" onsubmit="return formCheck(this)">
            <h1>회원가입</h1>
            <div class="customer_imf_box">
                <div id="msg">
                    <c:if test="${not empty param.msg}">
                        <i class="fa fa-exclamation-circle"> ${URLDecoder.decode(param.msg)}</i>
                    </c:if>
                </div>
                <div class="customer_txt_box">
                    <label for="">아이디</label>
                    <input type="text" name="id" placeholder="사용할 아이디를 입력해주세요." class="customer_imf"  value="">
                </div>
                <div class="customer_txt_box">
                    <label for="">비밀번호</label>
                    <input type="text"  name="pw" placeholder="사용할 비밀번호를 입력해주세요."  class="customer_imf" value="">
                </div>
                <div class="customer_txt_box">
                    <label for="">이름</label>
                    <input type="text"  name="name"  placeholder="이름을 입력해주세요."  class="customer_imf" value="">
                </div>
                <div class="customer_txt_box">
                    <label for="">이메일</label>
                    <input type="text"  name="email"  placeholder="이메일을 입력해주세요."  class="customer_imf" value="">
                </div>
                <div class="customer_txt_box">
                    <label for="">생년월일</label>
                    <input type="text" name="birth"  placeholder="XXXX-XX-XX형식으로 입력해주세요."  class="customer_imf" value="">
                </div>
                <div class="customer_txt_box">
                    <label for="">
                    <input type="radio" id="male" name="gender" value=0> 남자
                    <input type="radio" id="female" name="gender" value=1> 여자
                    </label>
                </div>
            </div>
            <button class="sign_up_btn">회원가입</button>
        </form>
    </div>
</div>
</body>
<script>
    function validateEmail(email) {
        var re = /\S+@\S+\.\S+/;
        return re.test(email);
    }
    function formCheck(frm){
        console.log("frm: " + frm)
        var email = frm.email.value;
        var msg = '';
        console.log("msg: "+frm.id.value)
        if (frm.id.value.length < 4) {
            setMessage('아이디 길이 4 이상', frm.id);
            return false;
        }
        if (frm.pw.value.length < 6) {
            setMessage('비밀번호 길이 6자리 이상', frm.pw);
            return false;
        }
        if (!validateEmail(email)) {
            setMessage('잘못된  형식의 이메일 입니다.', frm.email);
            return false;
        }
        if (frm.birth.value.length != 10) {
            setMessage('주민번호 길이가 맞지 않습니다.', frm.birth);
            return false;
        }
        return true;
    }
    function setMessage(msg, element) {
        document.getElementById("msg").innerHTML = `<b class="fa"> ${'${msg}'} </b>`;
        if (element) {
            element.select();
        }
    }
</script>
</html>