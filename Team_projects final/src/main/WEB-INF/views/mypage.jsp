<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="false" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="userId" value="${ request.getSession(false).getAttribute('id')==null ? '':request.getSession(false).getAttribute('id') }" />
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css"/>
    <link rel="stylesheet" href="<c:url value="/resources/css/modetour_header.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/css/mypage.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/css/modetour_footer.css"/>">

    <script defer src="/resources/js/modetour_header.js"></script>
    <script defer src="/resources/js/mypage.js"></script>
    <script defer src="/resources/js/footer.js"></script>
    <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

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
                        <a href="<c:url value="/index"/>" class="swiper-slide"><img src="/resources/img/logo/main_Logo.png"></a>
                        <a href="<c:url value="/index"/>" class="swiper-slide"><img src="/resources/img/logo/main_Logo.png"></a>
                        <a href="<c:url value="/index"/>" class="swiper-slide"><img src="/resources/img/logo/main_Logo.png"></a>
                        <a href="<c:url value="/index"/>" class="swiper-slide"><img src="/resources/img/logo/main_Logo.png"></a>
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
                                <a href="<c:url value="/modetour_korea/write"/>">글 쓰기</a>
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
        <div class="my_page_box">
                    <div class="side_my_page_title">
                        마이페이지
                    </div>
                    <div class="side_my_page_txt">
                        <div class="select_my_page" onclick="toggleForm('frm')">프로필 관리</div>
                        <div class="select_my_page" onclick="toggleForm('frm1')">내 찜한 상품</div>
                        <div class="select_my_page" onclick="toggleForm('frm2')">내가 쓴 모집글</div>
                    </div>
                </div>
        <div class="main_box">
        <form action="" class="main_my_page_box" id="frm">
                    <div class="my_imf_box_left ">
                        <div class="my_name my_imf">
                            <img src="/resources/img/user_img/${userDto.picture}">
                        </div>
                        <div class="user_img_file">
                            <input type="file" name="f_file" id="f_file"  multiple="multiple" value="${userDto.picture}" class="my_file">
                            <label for="f_file"  class="my_see_file">파일 선택</label>
                            <input type="hidden" name="picture" id="picture" value="${userDto.picture}">
                            <button  id="btn_del" class="btn_del">사진 삭제</button>
                        </div>
                    </div>
                    <div class="my_imf_box_right">
                        <div class="user_list_box1">
                            <div class="id_pw_box">
                                <div>아이디: ${userDto.id}</div>
                                <div>비밀번호: ${userDto.pw}</div>
                            </div>
                            <div class="name_email_birth_box">
                                <div>이름: ${userDto.name}</div>
                                <div>이메일: ${userDto.email}</div>
                                <div>생년월일: ${userDto.birth}</div>
                            </div>
                        </div>
                        <div class="user_list_box2">
                            <div>
                                <input   type="text" name="name" id="name" placeholder="사용할 이름을 넣어주세요" value="${userDto.name}" class="see_imf" >
                                <input   type="text" name="email" id="email" placeholder="사용할 이메일을 넣어주세요" value="${userDto.email}" class="see_imf" class="list_box2_input1">
                                <input   type="text" name="birth" id="birth" placeholder="생년월일일을 입력해주세요." value="${userDto.birth}" class="see_imf" class="list_box2_input2">
                            </div>
                            <div>
                                <button  id="btn_modify" class="btn_modify">수정</button>
                            </div>
                        </div>
                    </div>
                </form>
        </div>
    </div>
    <div class="footer">
        <div class="move_trip_img_box">
            <div class="move_trip_title content_area">
                <p>✈여행준비! 💰가격비교! 😆재미보장! </p>
            </div>
            <div class="top_move_img_box">
                <div class="top_move_img top_img1"><img src="/resources/img/tour_img/tour30.jpg"></div><!--이미지 추가   -->
                <div class="top_move_img top_img2"><img src="/resources/img/tour_img/tour31.jpg"></div><!--이미지 추가   -->
                <div class="top_move_img top_img3"><img src="/resources/img/tour_img/tour32.jpg"></div><!--이미지 추가   -->
                <div class="top_move_img top_img4"><img src="/resources/img/tour_img/tour33.jpg"></div><!--이미지 추가   -->
                <div class="top_move_img top_img5"><img src="/resources/img/tour_img/tour34.jpg"></div><!--이미지 추가   -->
            </div>
            <div class="bottom_move_img_box">
                <div class="bottom_move_img  bottom_img1"><img src="/resources/img/tour_img/tour35.jpg"></div><!--이미지 추가   -->
                <div class="bottom_move_img  bottom_img2"><img src="/resources/img/tour_img/tour36.jpg"></div><!--이미지 추가   -->
                <div class="bottom_move_img  bottom_img3"><img src="/resources/img/tour_img/tour29.jpg"></div><!--이미지 추가   -->
                <div class="bottom_move_img  bottom_img4"><img src="/resources/img/tour_img/tour37.jpg"></div><!--이미지 추가   -->
                <div class="bottom_move_img  bottom_img5"><img src="/resources/img/tour_img/tour28.jpg"></div><!--이미지 추가   -->
            </div>
        </div>
    </div>
</div>
</body>
<script>
    function toggleForm(formId) {
        var forms = document.querySelectorAll('.chg_box');
        for (var i = 0; i < forms.length; i++) {
            if (forms[i].id === formId) {
                forms[i].classList.remove('hidden');
            } else {
                forms[i].classList.add('hidden');
            }
        }
    }
    $(document).ready(function(){
        $('#btn_modify').on('click', function (){

            let tmp_param = get_uri_info();
            let frm = $("#frm");
            frm.attr("action", "<c:url value='/mypage/list'/>?" +  tmp_param)
            frm.attr("method", "POST");
            frm.attr('enctype','multipart/form-data');
        })
        function get_uri_info(){
            const searchParam = new URLSearchParams(location.search);
            let tmp_param="";
            for(const param of searchParam) {
                console.log(param);
                tmp_param += param[0]+"="+param[1]+"&";
            }
            console.log(tmp_param);

            return tmp_param;
        }
        $('#btn_del').on('click', function (){
            if(! confirm("사진을 삭제")) return;
            let tmp_param = get_uri_info();

            let frm=$("#frm")
            frm.attr("action", "<c:url value='/mypage/remove'/>?"+tmp_param)
            frm.attr("method", "post");
        })
    })
    function setMessage(msg, element) {
        document.getElementById("msg").innerHTML = `<b class="fa"> ${'${msg}'} </b>`;
        if (element) {
            element.select();
            console.log("김김김")
        }
    }
</script>
</html>