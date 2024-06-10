<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="userId" value="${ pageContext.request.getSession(false).getAttribute('id')==null ? '':pageContext.request.getSession(false).getAttribute('id') }" />
<c:set var="logInOutLink" value="${ sessionScope.id==null ? '/login':'/logout' }" />
<c:set var="logInOutTxt" value="${ sessionScope.id==null ? '로그인':'로그아웃' }" />

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <script src="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.js"></script>
    <script defer src="/resources/js/modetour_header.js"></script>
    <script defer src="/resources/js/modetour_commu.js"></script>
    <script defer src="/resources/js/footer.js"></script>
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css"/>
    <link rel="stylesheet" href="/resources/css/modetour_commu.css">
    <link rel="stylesheet" href="/resources/css/modetour_header.css">
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
                                <a href="<c:url value="/modetour_korea/write"/>">글 쓰기</a>
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
        <div class="commu_title">
            <div class="commu_title_txt">
                <span class="cik_prefer">정렬순</span>
                <form  action="" class="prefer_box">
                    <div class="new"><a href="/modetour_commu/list">최신순</a></div>
                    <div class="likeseq" id="likeseq"><a href="/modetour_commu/list/view">조회순</a></div>
                </form>
            </div>
        </div>
        <div class="commu_box">
            <c:forEach var="boardDto" items="${list}">
                <a href="<c:url value="/modetour_commu_dp/read?b_no=${boardDto.b_no}&page=${ph.page}&pageSize=${ph.pageSize}" />" class="commu_imf_box">
                    <div class="commu_imf_inner">
                        <div class="commu_tilte_imf">
                            <div class="commu_user">
                                    ${boardDto.b_writer}
                            </div>
                            <div class="commu_date">
                                    <%--장소 --%>${boardDto.b_place}
                            </div>
                        </div>
                        <div class="commu_img_box">
                            <c:choose>
                                <c:when test="${empty boardDto.ki_src}">
                                    <img src = "/resources/img/commu_img/main_Logo.png">
                                </c:when>
                                <c:otherwise>
                                    <img src="/resources/img/commu_img/${boardDto.ki_src}">
                                </c:otherwise>
                            </c:choose>
                        </div>
                        <div class="commu_txt_box">
                            <div class="commu_txt_box_title">
                                <span class="commu_txt">${boardDto.b_title}</span>
                            </div>

                            <p class="commu_txt">${boardDto.b_content}</p>
                        </div>
                    </div>
                    <div class="commu_outer">
                        <div class="commu_heart">
                            <span>조회수</span>
                            <span>${boardDto.b_view_count}</span>
                        </div>
                        <div class="coomu_date">
                            <c:set var="today" value="<%= new java.util.Date() %>" /> <%-- Fri May 17 09:16:29 KST 2024--%>
                            <c:set var="date"> <fmt:formatDate value="${today}" pattern="yyyy-MM-dd" type="date" /> </c:set> <%-- 2024-05-17 --%>

                            <c:set var="date2"> <fmt:formatDate value="${boardDto.b_date}" pattern="yyyy-MM-dd" type="date" /> </c:set> <%-- 2024-05-17 --%>

                                <%--                                <c:out value="${date}" /> , <c:out value="${date2}" />--%>

                            <c:choose>
                                <c:when test="${date == date2}">
                                    <fmt:formatDate value="${boardDto.b_date}" pattern="HH:mm:ss" type="date" />
                                </c:when>
                                <c:otherwise>
                                    <fmt:formatDate value="${boardDto.b_date}" pattern="yyyy-MM-dd" type="date" />
                                </c:otherwise>
                            </c:choose>
                        </div>
                    </div>
                </a>
            </c:forEach>
            <a href="/modetour_commu_dp/write" class="write_logo"><img src="/resources/img/edit_square_24dp_FILL0_wght400_GRAD0_opsz24.png"></a>
            <div class="pagination">
                <c:if test="${ph.showPrevBtn}">
                    <a href="<c:url value='${sort == "view" ? "/modetour_commu/list/view" : "/modetour_commu/list"}?page=${ph.startPage - 1}&pageSize=${ph.pageSize}&option=${param.option}&keyword=${param.keyword}' />" class="startPage">[이전]</a>
                </c:if>

                <c:forEach var="i" begin="${ph.startPage}" end="${ph.endPage}">
                    <a href="<c:url value='${sort == "view" ? "/modetour_commu/list/view" : "/modetour_commu/list"}?page=${i}&pageSize=${ph.pageSize}' />" class="${i == ph.page ? 'pageActive' : ''}">${i}</a>
                </c:forEach>

                <c:if test="${ph.showNextBtn}">
                    <a href="<c:url value='${sort == "view" ? "/modetour_commu/list/view" : "/modetour_commu/list"}?page=${ph.endPage + 1}&pageSize=${ph.pageSize}' />" class="endPage">[다음]</a>
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
</body>
</html>