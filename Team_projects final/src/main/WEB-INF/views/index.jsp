<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>


<c:set var="logInOutLink" value="${ sessionScope.id==null ? '/login':'/logout' }" />
<c:set var="logInOutTxt" value="${ sessionScope.id==null ? '로그인':'로그아웃' }" />
<c:set var="userId" value="${sessionScope.id==null?'':sessionScope.id}" />
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Document</title>
    <script src="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.js"></script>
    <script defer src="/resources/js/modetour_header.js"></script>
    <script defer src="/resources/js/index.js"></script>
    <script defer src="/resources/js/footer.js"></script>

    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css"/>
    <link rel="stylesheet" href="/resources/css/modetour_header.css">
    <link rel="stylesheet" href="/resources/css/index.css">
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

    <!-- 헤더 전체적으로 변경. -->
    <div class="main">
        <div class="swiper swiper-container2 main_banner_box">
            <div class="swiper-wrapper ">
                <div class="swiper-slide main_banner">
                    <div class="main_banner_img main_banner_color1">
                        <img src="/resources/img/tour_img/tour.jpg" alt="">
                        <div class="main_txt content_area">
                            <h1>올해 우리 가족여행은?<p>풀빌라 vs 워터파크</p></h1>
                            <span>아이들을 위한 특별한 선물</span>
                        </div>                <!--텍스트 추가   -->
                    </div>
                </div>
                <div class="swiper-slide main_banner">
                    <div class="main_banner_img main_banner_color2">
                        <img src="/resources/img/tour_img/tour19.jpg" alt="">
                        <div class="main_txt content_area">
                            <h1>시그니처 여행<p>모두가 선택한 프리미엄여행</p></h1>
                            <span>#2023 한국소비자대상</span>
                        </div>    <!--텍스트 추가   -->
                    </div>
                </div>
                <div class="swiper-slide main_banner">
                    <div class="main_banner_img main_banner_color3">
                        <img src="/resources/img/tour_img/tour52.jpg" alt="">
                        <div class="main_txt content_area">
                            <h1>여행 전문가가 추천하는<p>국내여행 어디까지 가봤니?</p></h1>
                            <span>국내 어디든 떠나</span>
                        </div>    <!--텍스트 추가   -->
                    </div>
                </div>
                <div class="swiper-slide main_banner">
                    <div class="main_banner_img main_banner_color4">
                        <img src="/resources/img/tour_img/tour12.jpg" alt="">
                        <div class="main_txt content_area">
                            <h1>보홀~수록 가고싶은<p>환상의 힐링여행</p></h1>
                            <span>주옥같은 국내여행지</span>
                        </div>    <!--텍스트 추가   -->
                    </div>
                </div>
            </div>
            <div class="left_btn banner_btn"><</div>
            <div class="right_btn banner_btn">></div>
        </div>
        <div class="main_recommend_box content_area">
            <div class="recommend_title">모두의 추천상품</div>
            <div class=" recommend_trip_box">
                <a href="<c:url value="/modetour_korea/search"/>" class="recommend_trip_imf">
                    <img src="/resources/img/tour_img/tour1.jpg" alt="">
                    <div class="recommend_txt_box">
                        <h2>국내여행</h2>
                        <p>★추석연휴좌석확보/출발100%★[김포출발]더푸른제주</p>
                        <span>제주로 3박4일</span>
                        <span>#언제든#아무나#함께떠나요</span>
                    </div>
                </a>
                <a href="<c:url value="/modetour_korea/search"/>" class="recommend_trip_imf">
                    <img src="/resources/img/tour_img/tour2.jpg" alt="">
                    <div class="recommend_txt_box">
                        <h2>국내여행</h2>
                        <p>♥4인1실/테라스더블/조식미포함♥도시의 묘미 서울구경</p>
                        <span>서울으로 2박3일</span>
                        <span>#도시를#재미있게#보러 떠나요</span>
                    </div>
                </a>
                <a href="<c:url value="/modetour_korea/search"/>" class="recommend_trip_imf">
                    <img src="/resources/img/tour_img/tour9.jpg" alt="">
                    <div class="recommend_txt_box">
                        <h2>국내여행</h2>
                        <p>[포항영일만출발] 울릉도 완전일주 독도는 서비스~</p>
                        <span>섬으로 3박4일</span>
                        <span>#울릉크루즈 #울릉도 #독도</span>
                    </div>
                </a>
                <a href="<c:url value="/modetour_korea/search"/>" class="recommend_trip_imf">
                    <img src="/resources/img/tour_img/tour10.jpg" alt="">
                    <div class="recommend_txt_box">
                        <h2>국내여행</h2>
                        <p>안동전통시장 영주 선비세상 당일여행(낙강물길공원, 선비세상)</p>
                        <span>하루정도 편하게 지내요 당일치기</span>
                        <span>#국내여행 #버스여행
                                </span>
                    </div>
                </a>
                <a href="<c:url value="/modetour_korea/search"/>" class="recommend_trip_imf">
                    <img src="/resources/img/tour_img/tour7.jpg" alt="">
                    <div class="recommend_txt_box">
                        <h2>국내여행</h2>
                        <p>★지원특가★/경상도 동해안 7번국도 따라 1박2일(울진에서 경주까지~)</p>
                        <span>7번 국도따라 1박2일</span>
                        <span>#도로따라#신나게#달려보아여</span>
                    </div>
                </a>
                <div class="recommend_left_btn recommend_btn"><</div>
                <div class="recommend_right_btn recommend_btn">></div>
            </div>                                                                      <!--html 변경 밑 글씨  여기까지 변경 링크들 추가 -->
        </div>
        <div class="main_prefer_box">
            <div class="main_prefer_title content_area">요즘 여행가는 사람들은'여기'가요</div>
            <div class="prefer_box content_area">
                <div class="select_prefer">
                    <div class="prefer_img_box">
                        <span>아이들과 함께</span>
                        <img src="/resources/img/logo/icon_arrow_26_white.svg">
                    </div>
                    <div class="prefer_img_box">
                        <span>2030친구들을 위한</span>
                        <img src="/resources/img/logo/icon_arrow_26_white.svg">
                    </div>
                    <div class="prefer_img_box">
                        <span>부모님께 효도할</span>
                        <img src="/resources/img/logo/icon_arrow_26_white.svg">
                    </div>
                    <div class="prefer_img_box">
                        <span>솔로로 떠나요</span>
                        <img src="/resources/img/logo/icon_arrow_26_white.svg">
                    </div>
                </div>
                <div class= "prefer_swiper_box child">
                    <a class=" prefer_img"><!--이미지 추가  및 텍스트 넣기 밑에    -->
                        <img src="/resources/img/tour_img/tour3.jpg"/>
                        <div class="black_pan"></div>
                        <div class="prefer_txt">★국도 따라 차타고 떠나는 도로여행★</div>
                    </a>
                    <a class=" prefer_img">
                        <img src="/resources/img/tour_img/tour4.jpg"/>
                        <div class="black_pan"></div>
                        <div class="prefer_txt">★부산 바다를 낭만적으로 즐기는 여행★</div>
                    </a>
                    <a class=" prefer_img">
                        <img src="/resources/img/tour_img/tour5.jpg"/>
                        <div class="black_pan"></div>
                        <div class="prefer_txt">눈앞이 너무 예쁜 에매랄드 빛 수영장이 있는 숙소</div>
                    </a>
                    <a class=" prefer_img">
                        <img src="/resources/img/tour_img/tour39.jpg"/>
                        <div class="black_pan"></div>
                        <div class="prefer_txt">우리나라 문화제도 즐겨봐야지~</div>
                    </a>
                    <a class=" prefer_img">
                        <img src="/resources/img/tour_img/tour38.jpg"/>
                        <div class="black_pan"></div>
                        <div class="prefer_txt">같이 즐길래?서울 야경은 너무 이쁜거 같아 </div>
                    </a>
                    <a class=" prefer_img">
                        <div class="black_pan"></div>
                        <div class="prefer_txt">여기 산책로는 이렇게 이쁜걸?>너도 걸을래</div>
                        <img src="/resources/img/tour_img/tour40.jpg"/>
                    </a><!--이미지 추가   -->
                </div>
                <div class= "prefer_swiper_box friend">
                    <a class=" prefer_img">
                        <img src="/resources/img/tour_img/tour6.jpg"/>
                        <div class="black_pan"></div>
                        <div class="prefer_txt">하나 밖에 없는! 스페셜 호텔 너도 올래?</div>
                    </a>
                    <a class=" prefer_img">
                        <img src="/resources/img/tour_img/tour8.jpg"/>
                        <div class="black_pan"></div>
                        <div class="prefer_txt">이런 수영장은 어때? 이쁘지</div>
                    </a>
                    <a class=" prefer_img">
                        <img src="/resources/img/tour_img/tour11.jpg"/>
                        <div class="black_pan"></div>
                        <div class="prefer_txt">숲속에 숨겨진 풍경 너도 즐기러 와</div>
                    </a>
                    <a class=" prefer_img">
                        <img src="/resources/img/tour_img/tour18.jpg"/>
                        <div class="black_pan"></div>
                        <div class="prefer_txt">안동 축제 막걸리 한잔 먹으러 와!!</div>
                    </a>
                </div>
                <div class= "prefer_swiper_box parents">
                    <a class=" prefer_img">
                        <div class="black_pan"></div>
                        <div class="prefer_txt">살면서 꼭 가봐야 할 울릉도! 얼른 가자</div>
                        <img src="/resources/img/tour_img/tour13.jpg"/>
                    </a>
                    <a class=" prefer_img">
                        <div class="black_pan"></div>
                        <div class="prefer_txt">제주도 길따라 낭만을 즐겨보자</div>
                        <img src="/resources/img/tour_img/tour14.jpg"/>
                    </a>
                    <a class=" prefer_img">
                        <div class="black_pan"></div>
                        <div class="prefer_txt">이런 섬도 있다구~? 홍도로 떠날래?</div>
                        <img src="/resources/img/tour_img/tour15.jpg"/>
                    </a>
                    <a class=" prefer_img">
                        <div class="black_pan"></div>
                        <div class="prefer_txt">이런 강이 우리나라에? 얼른 가보자~</div>
                        <img src="/resources/img/tour_img/tour41.jpg"/>
                    </a><!--이미지 추가   -->
                    <a class=" prefer_img">
                        <div class="black_pan"></div>
                        <div class="prefer_txt">바다 우리를 걷는듯한 낭만 너도 즐기러와</div>
                        <img src="/resources/img/tour_img/tour42.jpg"/>
                    </a><!--이미지 추가   -->
                </div>
                <div class= "prefer_swiper_box solo">
                    <a class=" prefer_img">
                        <div class="black_pan"></div>
                        <div class="prefer_txt">너도 공주에 한옥집 구경올래?</div>
                        <img src="/resources/img/tour_img/tour16.jpg"/>
                    </a>
                    <a class=" prefer_img">
                        <div class="black_pan"></div>
                        <div class="prefer_txt">골프치기 딱 좋아! 여기는</div>
                        <img src="/resources/img/tour_img/tour17.jpg"/>
                    </a>
                    <a class=" prefer_img">
                        <div class="black_pan"></div>
                        <div class="prefer_txt">★노란세상★으로 너를 초대해~</div>
                        <img src="/resources/img/tour_img/tour50.jpg"/>
                    </a><!--이미지 추가   -->
                    <a class=" prefer_img">
                        <div class="black_pan"></div>
                        <div class="prefer_txt">여수 밤은 낭만이 넘친다구?</div>
                        <img src="/resources/img/tour_img/tour44.jpg"/>
                    </a><!--이미지 추가   -->
                    <a class=" prefer_img">
                        <div class="black_pan"></div>
                        <div class="prefer_txt">너는 이런거 타봤어? 나는 타보고싶어~</div>
                        <img src="/resources/img/tour_img/tour45.jpg"/>
                    </a><!--이미지 추가   -->
                </div>
            </div>
        </div>
        <div class="move_content_box">
            <div class="move_title content_area">
                <p>✨최신 여행 트렌드는? </p>
            </div>
            <div class="move_content content_area">
                <a href="<c:url value="/modetour_commu"/>" class="move_content_img_box">
                    <div class="move_size_img"><img src="/resources/img/tour_img/tour23.jpg" alt=""></div><!--이미지 추가  내용 글씨 크기 변경  -->
                    <div class="move_size_txt">
                        <p>최신 인기 1등! #가족끼리 함께 #한복체험 해봐요!!</p>
                        <span>#언제든#제일많이가본 #지금당장가요</span>
                    </div>
                </a>
                <a href="<c:url value="/modetour_commu"/>"  class="move_content_img_box">
                    <div class="move_size_img"><img src="/resources/img/tour_img/tour21.jpg" alt=""></div><!--이미지 추가  내용 글씨 크기 변경  -->
                    <div class="move_size_txt">
                        <p>가장 많이 본~ #요새 젊은사람들# 이런 곳을 찾는다고!!!</p>
                        <span>#가장많이 눌러본#당장가자#</span>
                    </div>
                </a>
                <a  href="<c:url value="/modetour_commu"/>" class="move_content_img_box">
                    <div class="move_size_img"><img src="/resources/img/tour_img/tour22.jpg" alt=""></div><!--이미지 추가  내용 글씨 크기 변경  a태그 위에  포함 추가 -->
                    <div class="move_size_txt">
                        <p>가장 가보고싶은 곳~ #커플들이 #제일 많이 가보고싶어하는 베스트 원!!!!</p>
                        <span>#남녀노소가장#얼른가보자</span>
                    </div>
                </a>
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
</div>
</body>
</html>


