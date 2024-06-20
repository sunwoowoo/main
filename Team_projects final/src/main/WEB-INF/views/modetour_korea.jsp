<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%--<%@ page session="false" %> 현재 페이지에 대한 세션을 비활성화하도록 지정합니다. 즉, 이 페이지에서는 세션 객체를 사용할 수 없습니다. 이는 보안 및 성능 향상을 위해 사용될 수 있습니다. --%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<%--<c:set var="u_id" value="${sessionScope.id}"/>--%>

<c:set var="logInOutLink" value="${ sessionScope.id==null ? '/login':'/logout' }" />
<c:set var="logInOutTxt" value="${ sessionScope.id==null ? '로그인':'로그아웃' }" />
<c:set var="userId" value="${sessionScope.id==null?'':sessionScope.id}" />

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

    <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css"/>
    <script src="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.js"></script>
    <script defer src="/resources/js/footer.js"></script>
    <script defer src="/resources/js/modetour_header.js"></script>
    <script defer src="<c:url value="/resources/js/modetour_korea.js"/>"></script>

    <%--datepicker--%>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
    <%--    <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />--%>
    <link rel="stylesheet" type="text/css"  href="<c:url value="/resources/css/daterangepicker.css"/>" />




    <%--    <script src="<c:url value="/resources/js/modetour_korea_search.js"/>"></script>--%>
    <link rel="stylesheet" href="<c:url value="/resources/css/modetour_korea.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/css/modetour_header.css"/>">

    <link rel="stylesheet" href="<c:url value="/resources/css/modetour_footer.css"/>">
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
            <img src="/resources/img/logo/이제는울릉도다.png" alt="">
        </div>
    </div>
    <div class="header">
        <div class="header_top_box content_area">
            <div class="header_top_left_box">
                <div class="swiper-container header_logo_box" >
                    <div class="swiper-wrapper">
                        <a href="<c:url value="/index"/>" class="swiper-slide"><img src="/resources/img/logo/메인.png"></a>
                        <a href="<c:url value="/index"/>" class="swiper-slide"><img src="/resources/img/logo/아시아나전략노선.png"></a>
                        <a href="<c:url value="/index"/>" class="swiper-slide"><img src="/resources/img/logo/고객서비스.png"></a>
                        <a href="<c:url value="/index"/>" class="swiper-slide"><img src="/resources/img/logo/국내여행.png"></a>
                    </div>
                </div>
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
                <img src="/resources/img/logo/arrow_upward_24dp_FILL0_wght400_GRAD0_opsz24.svg" class="mini_header_search">
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


    <div class="main">
        <div class="korea_select_area_box content_area">
            <div class="korea_select_box">
                <div class="korea_select" id="select_region">
                    <span>지역</span>
                </div>
                <div class="link_area_box">
                    <span class="link_area2" id="select_state">${param.k_state}</span>
                    <span class="link_area" id="select_city">${param.k_city}</span>
                </div>
                <div class="korea_select" id="select_date">
                    <span>날짜</span>
                </div>
                <div class="link_date_box">
                    <div class="link_date_txt_box"><span></span><span class="link_date link_date1 start">${param.k_start}</span><span class="giho"></span></div>

                    <div class="link_date_txt_box"><span></span><span class="link_date link_date2 end">${param.k_end}</span></div>

                    <%--                <span class="link_date" >${param.k_start}</span>--%>
                    <%--                <span class="link_date2" >${param.k_end}</span>--%>
                </div>
                <input type="button" class="select_button" value="검색하기" id="btn_search">

                <div class="korea_search_box">
                    <input type="text" placeholder="검색어를 입력해 주세요." class="korea_search_input" id="search_txt" value="${param.keyword==null?"":param.keyword}">
                </div>
                <div class="korea_hide_box korea_area_hide">
                    <div class="korea_hide_x">적용하기</div>
                    <div class="korea_hide_select">
                        <%--                        <div class="area_button">버튼1</div>--%>
                    </div>
                    <div class="korea_hide_txt">
                        <%--                        <span class="link_korea_txt">제주</span>--%>
                    </div>
                    <%--                    <div class="korea_hide_txt">--%>
                    <%--                        <span class="link_korea_txt">서울</span>--%>
                    <%--                    </div>--%>
                </div>
                <div class="korea_hide_box korea_date_hide">
                    <input type="text" id="demo" name="demo" value="" />
                    <div class="korea_hide_x">확인하기</div>
                </div>
                <div class="korea_hide_reset">초기화</div>

            </div>
        </div>
        <div class="main_content_title">
            <div class="search_result">검색결과</div>
            <div class="filter">
                <div class="trip_tmma">
                    <span class="tmma_type ${param.k_tag=="미식"?'search_act':''}">미식</span>
                    <span class="tmma_type ${param.k_tag=="문화/예술"?'search_act':''}">문화/예술</span>
                    <span class="tmma_type ${param.k_tag=="관광"?'search_act':''}">관광</span>
                    <span class="tmma_type ${param.k_tag=="액티비티"?'search_act':''}">액티비티</span>
                    <span class="tmma_type ${param.k_tag=="엔터테이먼트"?'search_act':''}">엔터테이먼트</span>
                </div>
                <div class="trip_gender">
                    <span class="gender_type ${param.gender=="1"?'search_act_2':''}" data-gender="1">여자</span>
                    <span class="gender_type ${param.gender=="0"?'search_act_2':''}" data-gender="0">남자</span>
                </div>
                <div class="trip_birth">
                    <span class="birth_type ${param.birth=="20"?'search_act_3':''}" data-birth="20">20대</span>
                    <span class="birth_type ${param.birth=="30"?'search_act_3':''}" data-birth="30">30대</span>
                    <span class="birth_type ${param.birth=="40"?'search_act_3':''}" data-birth="40">40대</span>
                    <span class="birth_type ${param.birth=="50"?'search_act_3':''}" data-birth="50">50대</span>
                    <span class="birth_type ${param.birth=="60"?'search_act_3':''}" data-birth="60">60대</span>
                </div>

            </div>

            <div class="select_cate">
                <span class="selected_cate">${param.k_sort==null||param.k_sort==''?'등록일 순':param.k_sort}</span>
                <img src="<c:url value="/resources/img/logo/icon_sort_20.svg"/>">
            </div>

            <div class="hide_select_cate_box">
                <div class="hide_select_cate" >등록일 순</div>
                <div class="hide_select_cate" >출발 빠른 순</div>
                <div class="hide_select_cate" >경비 높은 순</div>
                <div class="hide_select_cate" >경비 낮은 순</div>
            </div>
        </div>
        <div class="content_area"><p>총 <span>${ph.totalCount} 개</span>의 동행 모집글이 있습니다</p></div>
        <div class="main_content content_area">
            <div class="main_content_box">
                <c:choose>
                    <c:when test="${empty list}">
                        <h1> 일치하는 결과가 없습니다</h1>
                    </c:when>

                    <c:otherwise>
                        <c:forEach var="ktDto" items="${list}">
                            <div class="trip_item_box">
                                <a href='<c:url value="/modetour_korea/read?k_no=${ktDto.k_no}&page=${ph.page}&pageSize=${ph.pageSize}&k_state=${ktDto.k_state}&k_city=${ktDto.k_city}&k_tag=${ktDto.k_tag}&k_start=${ktDto.k_start}&k_end=${ktDto.k_end}&k_sort=${param.k_sort}&keyword=${param.keyword}"/>'

                                    <%-- Dto에 없는 변수 값을 받아서 오류 생김 --%>
                                   class="trip_item_box_link">
                                    <div class="modetour_trip_id">
                                        <div class="modetour_customer">
                                            <img src="<c:url value="/resources/img/636695092876604125.jpg"/>" class="modetour_trip_img">
                                            <div><span>${ktDto.k_writer}</span>
                                                <p class="user_info">
                                            <span class="user_birth" data-birth="${ktDto.birth}">
                                                    ${ktDto.birth}</span>
                                                    <span class="user_gender" data-gender="${ktDto.gender}">${ktDto.gender}</span>
                                                </p></div>


                                        </div>
                                        <div class="line"></div>
                                        <div class="trip_durtion">
                                            <img src="<c:url value="/resources/img/free-icon-calendar-8625359.png"/>">
                                            <p class="modetour_duration">
                                                <span>여행기간</span>
                                                    ${ktDto.k_start} ~ ${ktDto.k_end}
                                            </p>
                                        </div>
                                    </div>

                                    <div class="trip_item_img">
                                        <img src="<c:url value="/resources/img/ktour_upload_img/${ktDto.k_tra_img}"/>">
                                    </div>
                                    <div class="trip_item_txt">
                                        <div class="trip_item_cate_box">
                                            <div class="trip_item_cate">
                                                    ${ktDto.k_tag}
                                            </div>
                                        </div>
                                        <div class="trip_item_title_box trip_txt">
                                            <div class="trip_item_title"><img src="<c:url value="/resources/img/free-icon-chalkboard-3451388.png"/>"><span>${ktDto.k_title}</span></div>
                                        </div>
                                        <div class="trip_item_area1_box trip_txt">
                                            <img src="<c:url value="/resources/img/free-icon-location-pin-6798101.png"/>">
                                            <div class="trip_item_area1">${ktDto.k_state}</div>
                                            <div class="trip_item_area2">${ktDto.k_city}</div>
                                        </div>

                                        <div class="trip_item_price_box trip_txt">
                                            <div class="trip_item_price">
                                                <img src="<c:url value="/resources/img/free-icon-price-tag-1787203.png"/>">
                                                <span>${ktDto.k_price} 원</span></div>
                                        </div>
                                        <div class="trip_item_sonnel_box trip_txt">
                                            <div class="trip_item_sonnel">
                                                    <%--                                        <img src="<c:url value="/resources/img/sonnel.png"/>">--%>
                                                <span>${ktDto.k_sonnel}명 모집중</span>
                                            </div>
                                        </div>
                                    </div>
                                </a>

                                <c:choose>
                                    <%--                                로그인 했을 때--%>
                                    <c:when test="${u!=null}">
                                        <div class="pick_heart pick_heart_login" data-k_no="${ktDto.k_no}">

                                        </div>
                                    </c:when>
                                    <%--로그인 안 했을 때--%>
                                    <c:otherwise>
                                        <div class="pick_heart pick_heart_nologin" >
                                            <img src="<c:url value="/resources/img/logo/b_heart.png"/>" class="cik_heart nologin" data-iszzim="-1">
                                        </div>
                                    </c:otherwise>
                                </c:choose>
                            </div>

                        </c:forEach>
                    </c:otherwise>

                </c:choose>


            </div>
            <a href="<c:url value="/modetour_korea/write"/>" class="write_logo"><img src="<c:url value="/resources/img/edit_square_24dp_FILL0_wght400_GRAD0_opsz24.png" />"></a>
            <div class="zzim_logo"><img src="<c:url value="/resources/img/logo/b_heart.png" />"></div>
            <div class="zzim_list_big_box">

            </div>

            <div class="pagination">
                <c:if test="${ph.showPrevBtn}">
                    <a href="<c:url value="/modetour_korea/search?page=${ph.startPage - 1}&pageSize=${ph.pageSize}&k_state=${param.k_state}&k_city=${param.k_city}&keyword=${param.keyword}&k_start=${param.k_start}&k_end=${param.k_end}&k_tag=${param.k_tag}&k_sort=${param.k_sort}&gender=${param.gender}&birth=${param.birth}" />" class="startPage"><img src="<c:url value="/resources/img/free-icon-previous-189254.png"/>"></a>
                </c:if>

                <c:forEach var="i" begin="${ph.startPage}" end="${ph.endPage}">
                    <a class="inner_num ${i==ph.page?"pageActive":""}" href="<c:url value="/modetour_korea/search?page=${i}&pageSize=${ph.pageSize}&k_state=${param.k_state}&k_city=${param.k_city}&keyword=${param.keyword}&k_start=${param.k_start}&k_end=${param.k_end}&k_tag=${param.k_tag}&k_sort=${param.k_sort}&gender=${param.gender}&birth=${param.birth}" />" >${i}</a>
                </c:forEach>

                <c:if test="${ph.showNextBtn}">
                    <a href="<c:url value="/modetour_korea/search?page=${ph.endPage + 1}&pageSize=${
                    ph.pageSize}&k_state=${param.k_state}&k_city=${param.k_city}&keyword=${param.keyword}&k_start=${param.k_start}&k_end=${param.k_end}&k_tag=${param.k_tag}&k_sort=${param.k_sort}&gender=${param.gender}&birth=${param.birth}" />" class="endPage"><img src="<c:url value="/resources/img/free-icon-next-189253.png"/>"></a>
                </c:if>
            </div>
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
<script type="text/javascript">

    $(document).ready(function(){


        $(document).on('click','#select_region',function (){
            showDoList();
        })
        // $(document).on('change', '#do_id',function (){
        //     showSiList();
        // })


        // 도 불러오는 함수
        let showDoList = function (){
            $.ajax({
                url:"/modetour_korea/do_area",
                type: 'POST',
                // dataType: "json",
                success: function(data) {
                    let options = ""; //<option id='do_default' value='do_total'>전체</option>

                    for (let i = 0; i < data.length; i++) {
                        // options += "<option value='" + data[i].do_id + "'>" + data[i].do_area + " </option>"

                        <%--options += "<div class='area_button' data-idx='${i+1}'>"+ data[i].do_area+ "</div>"--%>
                        options += `<div class='area_button' data-idx='${'"${i+1}"'}'>${'${data[i].do_area}'}</div>`
                    }


                    $(".korea_hide_select").html(options);
                },
                error: function () {
                    alert("error load do area");
                }
            });
        }

        // 지역 버튼 선택했을 때

        $(document).on('click','#select_region',function (){
            $('.korea_area_hide').toggleClass('display')
            $(this).toggleClass('korea_act')
        })

        //날짜 버튼 클릭 했을 떄
        $(document).on('click','#select_date',function (){
            $('.korea_date_hide').toggleClass('display')
            $(this).toggleClass('korea_act')
        })





        //도 버튼 선택했을 때
        $(document).on('click','.area_button',function (){
            $('.area_button').removeClass('korea_act')
            $(this).addClass('korea_act')

            //$('.korea_hide_txt').css('display', 'flex')
            $('.korea_hide_txt').addClass('display')
            showSiList();
        })

        $(document).on('click','.link_korea_txt',function (){
            $('.link_korea_txt').removeClass('korea_act')
            $(this).toggleClass('korea_act')
        })

        $(document).on('click','.korea_area_hide .korea_hide_x',function (){
            const save_txt = $('.area_button').siblings('.korea_act').text();

            $('.link_area2').text(save_txt)

            const save_txt2 = $('.link_korea_txt').siblings('.korea_act').text();
            $('.link_area').text(save_txt2)

            $('.korea_area_hide').toggleClass('display')
        })

        $(document).on('click','.korea_date_hide .korea_hide_x',function (){
            // const save_txt = $('.area_button').siblings('.korea_act').text();
            const save_txt = $('#demo').val().split('~')[0].trim()

            $('.link_date1').text(save_txt)

            // const save_txt2 = $('.link_korea_txt').siblings('.korea_act').text();
            const save_txt2 = $('#demo').val().split('~')[1].trim()
            $('.link_date2').text(save_txt2)

            $('.giho').text(' ~ ')

            $('.korea_date_hide').toggleClass('display')
        })


        // 시 리스트 불러오는 함수
        function showSiList() {
            let doData = $(".area_button").siblings('.korea_act').data('idx');
            /*doData가 String이어야 함. */

            console.log(doData, typeof doData)

            $.ajax({
                url: '/modetour_korea/si_area',
                type: 'POST',
                data: doData, /* 보내는 데이터*/ //원래 JSON.Stringify(doData)가 기본형태임.
                contentType: 'application/json',  /*  여기는 보내는 do_id  {key: value}의 형태*/
                dataType: "json",       /* 여기는 받는 si_area List */
                success: function (data) {

                    let options = "";
                    for (let i = 0; i < data.length; i++) {
                        options += `<span class='link_korea_txt'> ${'${data[i].si_area}'} </span>`

                    }

                    $(".korea_hide_txt").html(options);
                    //$("#do_default").remove();  // 여기서 도.광역시 애를 삭제하면 될 듯
                },
                error: function () {
                    alert("error load si area");
                }
            })

        }


        //테마 태그

        $(document).on('click','.tmma_type',function (){
            if($(this).hasClass('search_act')){
                $(this).removeClass('search_act')
            }
            else {
                $('.tmma_type').removeClass('search_act')
                $(this).toggleClass('search_act')
            }
            search()
        })


        //성별 태그
        $(document).on('click','.gender_type',function (){
            if($(this).hasClass('search_act_2')){
                $(this).removeClass('search_act_2')
            }
            else {
                $('.gender_type').removeClass('search_act_2')
                $(this).toggleClass('search_act_2')
            }
            search()
        })
        //나이대 태그
        $(document).on('click','.birth_type',function (){
            if($(this).hasClass('search_act_3')){
                $(this).removeClass('search_act_3')
            }
            else {
                $('.birth_type').removeClass('search_act_3')
                $(this).toggleClass('search_act_3')
            }
            search()
        })


        //정렬


        $(document).on('click','.select_cate',function (){
            $('.hide_select_cate_box').toggleClass('display')
        })


        $(document).on('click','.hide_select_cate',function (){
            let cate_txt = $(this).text();
            $('.selected_cate').text(cate_txt);

            $('.hide_select_cate_box').removeClass('display')

            search()
        } )



        //초기화

        $(document).on('click', '.korea_hide_reset',function (){
            $('.start').text('')
            $('.end').text('')
            $('.link_area2').text('')
            $('.link_area').text('')
            $('#search_txt').val('')
        })




        // 성별, 나이
        function load(){
            let user_info = $('.user_info').length;
            for(i=0; i<user_info; i++){
                let  birthDate = new Date($('.user_birth').eq(i).data('birth')) ;
                let age = calculateAge(birthDate);

                $('.user_birth').eq(i).text( age )

                let gender = $('.user_gender').eq(i).data('gender');
                if(gender==1){
                    $('.user_gender').eq(i).text("여자").css("color","#ffbc38")
                }
                else {
                    $('.user_gender').eq(i).text("남자").css("color","#23ca14")
                }

            }



            function calculateAge(birthDate) {
                // 생년월일을 '년', '월', '일'로 분리합니다.
                let birthYear = birthDate.getFullYear();
                let birthMonth = birthDate.getMonth();
                let birthDay = birthDate.getDate();

                // 현재 날짜를 가져옵니다.
                let currentDate = new Date();
                let currentYear = currentDate.getFullYear();
                let currentMonth = currentDate.getMonth();
                let currentDay = currentDate.getDate();

                // 만 나이를 계산합니다.
                let age = currentYear - birthYear;

                // 현재 월과 생일의 월을 비교합니다.
                if (currentMonth < birthMonth) {
                    age--;
                }
                // 현재 월과 생일의 월이 같은 경우, 현재 일과 생일의 일을 비교합니다.
                else if (currentMonth === birthMonth && currentDay < birthDay) {
                    age--;
                }
                // 나이대 구하기
                age= (age+"").slice(0,1)+ "0대"

                return age;
            }

        }

// setTimeout(function (){
//     load()
// },100)


        load()





//찜 로드
        function iszzim(){
            <%--k_no =${param.k_no};--%>
            for(i=0; i<$('.pick_heart_login').length; i++){
                let   k_no = $('.pick_heart_login').eq(i).attr("data-k_no");
                (function (i){
                    $.ajax({
                        url: '/kzzim?k_no='+k_no,
                        type: 'GET',
                        //data: JSON.stringify({k_no:k_no}),
                        success: function (result){
                            console.log("dkdkdk"+result+ typeof result)
                            let like_img="";

                            if(result==''){
                                like_img =  `<img src="<c:url value="/resources/img/logo/b_heart.png"/>" class="cik_heart iszzimfalse" data-iszzim="0" >
                                    `
                            }
                            else {
                                like_img =  `<img src="<c:url value="/resources/img/logo/heart.png"/>" class="cik_heart iszzimtrue" data-iszzim="1" data-k_no="${'${result.k_no}'}" data-z_no="${'${result.z_no}'}">`
                            }

                            $('.pick_heart_login').eq(i).html(like_img)
                        },
                        error:function (){
                            alert("실패")
                        }
                    });
                })(i);

            }

        }
// setTimeout(functon (){
//     iszzim();
// },100)
        iszzim();


//찜버튼 눌렀을 대
        $(document).on('click','.pick_heart_login',function (){
            let k_no = $(this).attr("data-k_no");
            let iszzim = $(this).children().data('iszzim');

            if(iszzim==0){
                $.ajax({
                    type:'POST',
                    url:"/kzzim?k_no="+k_no,
                    headers: {"content-type":"application/json"},
                    data:JSON.stringify({k_no:k_no}),
                    success:function (result){

                        location.reload();

                    },
                    error:function(request, status, error){
                        console.log(request.status);
                        console.log(request.responseText);
                        console.log(error);

                        alert("등록 실패 - 관리자에게 문의하세요")
                    }
                })

            }
            if(iszzim==1){
                let z_no= $('.iszzimtrue').data('z_no')
                let k_no=$('.iszzimtrue').data('k_no')
                $.ajax({
                    type:"DELETE",
                    url: "/kzzim/"+z_no+"?k_no="+k_no,
                    success:function() {
                        location.reload();
                    },
                    error:function(){
                        alert("삭제 실패")
                    }
                });

            }


        })

        $(document).on('click','.pick_heart_nologin',function (){

            if(!confirm("로그인 후 사용 가능합니다.")) return;
            else {
                location.href ="<c:url value='/login'/>"
            }
        })
//마이 찜 리스트 불러오기
        $(document).on('click','.zzim_logo',function (){
            $('.zzim_list_big_box').toggleClass('show_zzim_list')

            loadmyzzim();

            function loadmyzzim(){
                $.ajax({
                    url:'/mykzzim',
                    type: 'GET',
                    success: function (mykzzimList){

                        let tmp = "";
                        let result = "";
                        mykzzimList.forEach(function (ktDto){




                            tmp+=` <div class="zzim_item_box">
                    <a href='<c:url value="/modetour_korea/read?k_no=${'${ktDto.k_no}'}"/>' class="trip_item_box_link">
    <%--&k_state=${ktDto.k_state}&k_city=${ktDto.k_city}&k_tag=${ktDto.k_tag}&k_start=${ktDto.k_start}&k_end=${ktDto.k_end}&k_sort=${param.k_sort}&keyword=${param.keyword}--%>
                            <div class="modetour_trip_id">
                                <div class="modetour_customer">
                                    <img src="<c:url value="/resources/img/user_img/${'${ktDto.picture}'}"/>" class="modetour_trip_img">
                                    <div>
                                    <span>${'${ktDto.k_writer}'}</span>
                                       </div>
                                </div>
                                <div class="line"></div>
                                <div class="trip_durtion">
                                    <img src="<c:url value="/resources/img/free-icon-calendar-8625359.png"/>">
                                    <p class="modetour_duration">
                                        <span>여행기간</span>
                                         ${'${ktDto.k_start}'} ~${'${ktDto.k_end}'}
                                    </p>
                                </div>
                            </div>

                            <div class="trip_item_img">
                                <img src="<c:url value="/resources/img/ktour_upload_img/${'${ktDto.k_tra_img}'}"/>">
                            </div>
                            <div class="trip_item_txt">
                                <div class="trip_item_cate_box">
                                    <div class="trip_item_cate">
                                            ${'${ktDto.k_tag}'}
                                    </div>
                                </div>
                                <div class="trip_item_title_box trip_txt">
                                    <div class="trip_item_title"><img src="<c:url value="/resources/img/free-icon-chalkboard-3451388.png"/>"><span>${'${ktDto.k_title}'}</span></div>
                                </div>
                                <div class="trip_item_area1_box trip_txt">
                                    <img src="<c:url value="/resources/img/free-icon-location-pin-6798101.png"/>">
                                    <div class="trip_item_area1">${'${ktDto.k_state}'}</div>
                                    <div class="trip_item_area2">${'${ktDto.k_city}'}</div>
                                </div>

                                <div class="confirm_btn_box trip_txt">
                                    <input type="button" value="신청하기" class="confirm_btn">
                                </div>
                            </div>
                           </a>
                           </div>`


                            result = `<h2>나의 찜 리스트</h2>` + tmp

                            $('.zzim_list_big_box').html(result);

                        })


                    }
                })
            }






        });





        $(document).on('click','.confirm_btn',function (e){
            e.preventDefault()

            console.log("신청하기 클릭")
        })

        /*--------------------------------------------------------------------------------*/


        // 검색하기 버튼 눌렀을 때
        $('#btn_search').click(function (){
            search()
            //

        })

        //검색하기 함수
        function search(){
            let k_state = $('.link_area2').text().trim();
            if (k_state=='') {k_state="전체"}
            let k_city = $('.link_area').text().trim();
            if (k_city=='') {k_city="전체"}
            let keyword = $('#search_txt').val().trim();
            let k_start= $('.link_date1').text().trim();

            console.log(k_start)
            let k_end= $('.link_date2').text().trim();
            if (k_end=='') {k_end="전체"}

            let k_tag= $('.search_act').text().trim();
            let k_sort=$('.selected_cate').text().trim();

            let gender=$('.search_act_2').data('gender');
            console.log(gender, typeof gender)
            if(gender==undefined){
                gender=-1
            }
            let birth=$('.search_act_3').data('birth');
            console.log(birth, typeof birth)
            if(birth==undefined){
                birth=''
            }
            location.href="<c:url value="/modetour_korea/search"/>?k_state="+k_state+"&k_city="+k_city+"&keyword="+keyword+"&k_start="+k_start+"&k_end="+k_end+"&k_tag="+k_tag+"&k_sort="+k_sort+"&gender="+gender+"&birth="+birth;
        }


        $('#search_txt').on('keydown',function(e){
            if(e.keyCode == 13 && $('#search_txt').val().trim().length > 0) {
                $('#btn_search').trigger('click');
            }
        })


        // $.ajax({
        //     url: '/modetour_korea',
        //     type: 'POST',
        //     data: JSON.stringify({k_state:k_state, k_city:k_city}),
        //     contentType: 'application/json',  /*  여기는 보내는 do_id */
        //     dataType: "json",       /* 여기는 받는 si_area List */
        //     success: function (data) {
        //         let options = "";
        //         for (let i = 0; i < data.length; i++) {
        //             options += "<option value='" + data[i].si_id + "'>" + data[i].si_area + "</option>"
        //         }
        //         $("#si_id").html(options);
        //         //$("#do_default").remove();  // 여기서 도.광역시 애를 삭제하면 될 듯
        //     },
        //     error: function () {
        //         alert("error load si area");
        //     }
        // })
        $(function (){
            $('input[name="demo"]').daterangepicker({
                "locale": {
                    "format": "YYYY-MM-DD",
                    "separator": " ~ ",
                    "applyLabel": "확인",
                    "cancelLabel": "취소",
                    "fromLabel": "From",
                    "toLabel": "To",
                    "customRangeLabel": "Custom",
                    "weekLabel": "W",
                    "daysOfWeek": ["일", "월", "화", "수", "목", "금", "토"],
                    "monthNames": ["1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월", "9월", "10월", "11월", "12월"],
                },
                "startDate": new Date(),
                "endDate": new Date(),
                "minDate" : new Date(),

                "drops": "auto"
            }, function (start, end, label) {
                console.log('New date range selected: ' + start.format('YYYY-MM-DD') + ' to ' + end.format('YYYY-MM-DD') + ' (predefined range: ' + label + ')');
            });
        })
    })



</script>

</body>
</html>