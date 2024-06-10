<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="/resources/css/p1.css">
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="/resources/js/p1.js"></script>
</head>
<body>
<header>
    <div class="header_box">
        <div class="header_logo_L"><a href="<c:url value="/p1"/>">Clothes shop</a></div>
        <div class="header_list">
            <div>
                <div class="header_list_box_go_1"><a href="<c:url value="/p3"/>">브랜드</a>
                </div>
            </div>
            <div>
                <div class="header_list_box_go_2"><a href="<c:url value="/p3"/>">남자</a>
                </div>
            </div>
            <div>
                <div class="header_list_box_go_3"><a href="<c:url value="/p3"/>">여자</a>
                </div>
            </div>
            <div>
                <div><a href="<c:url value="/p2"/>">로그인</a></div>
            </div>
        </div>
        <div class="header_logo_R">
            <div class="header_logo_R_list">
                <a href="<c:url value="/p1"/>">Help Center</a>
            </div>
        </div>
    </div>

</header>
<div class="fixed_right"><a href="<c:url value="/p2"/>"></a></div>
<main>
    <div class="main_banner">
        <Video  class="main_banner_box" src="<c:url value="/resources/imgss/main_box.mp4"/>"  autoplay muted loop></Video>
        <div class="img_banner">
            <div class="banner_img img_banner_1"></div>
            <div class="banner_img img_banner_2"></div>
            <div class="banner_img img_banner_3"></div>
        </div>
    </div>
    <div class="sec1">
        <div class="sec1_main">
            <div class="sec1_main_L">
                <div class="sec1_main_L_1">
                    <div class="sec1_main_L_1a_cr_box">
                        <div class="sec1_cr1_box">
                            <div class="sec1_cr1_box_s"></div>
                        </div>
                    </div>
                    <div class="sec1_main_L_1a_box sec1_1a_box_click">
                        <div>OUTER</div>
                    </div>
                </div>
                <div class="sec1_main_L_2">
                    <div class="sec1_main_L_2a_cr_box">
                        <div class="sec1_cr2_box"></div>
                    </div>
                    <div class="sec1_main_L_2a_box sec1_2a_box_click">
                        <div>TOP</div>
                    </div>
                </div>
                <div class="sec1_main_L_3">
                    <div class="sec1_main_L_3a_cr_box">
                        <div class="sec1_cr3_box"></div>
                    </div>
                    <div class="sec1_main_L_3a_box sec1_3a_box_click">
                        <div>BOTTOM</div>
                    </div>
                </div>
                <div class="sec1_main_L_4">
                    <div class="sec1_main_L_4a_cr_box">
                        <div class="sec1_cr4_box"></div>
                    </div>
                    <div class="sec1_main_L_4a_box sec1_4a_box_click">
                        <div> DRESS</div>
                    </div>
                </div>
                <div class="sec1_main_L_5">
                    <div class="sec1_main_L_5a_cr_box">
                        <div class="sec1_cr5_box"></div>
                    </div>
                    <div class="sec1_main_L_5a_box sec1_5a_box_click">
                        <div>SHOES</div>
                    </div>
                </div>
            </div>
            <div class="sec1_main_R">
                <div class="sec1_main_R_1">
                    <div class="sec1_main_R_1_box1"></div>
                    <div class="sec1_main_R_1_box2"></div>
                    <div class="sec1_main_R_1_box3"></div>
                    <div class="sec1_main_R_1_box4"></div>
                    <div class="sec1_main_R_1_box5"></div>
                    <div class="sec1_main_R_1_box6"></div>
                    <div class="sec1_main_R_1_box7"></div>
                    <div class="sec1_main_R_1_box8"></div>
                </div>
                <div class="sec1_main_R_2">
                    <div class="sec1_main_R_2_box1"></div>
                    <div class="sec1_main_R_2_box2"></div>
                    <div class="sec1_main_R_2_box3"></div>
                    <div class="sec1_main_R_2_box4"></div>
                    <div class="sec1_main_R_2_box5"></div>
                    <div class="sec1_main_R_2_box6"></div>
                    <div class="sec1_main_R_2_box7"></div>
                    <div class="sec1_main_R_2_box8"></div>
                </div>
                <div class="sec1_main_R_3">
                    <div class="sec1_main_R_3_box1"></div>
                    <div class="sec1_main_R_3_box2"></div>
                    <div class="sec1_main_R_3_box3"></div>
                    <div class="sec1_main_R_3_box4"></div>
                    <div class="sec1_main_R_3_box5"></div>
                    <div class="sec1_main_R_3_box6"></div>
                    <div class="sec1_main_R_3_box7"></div>
                    <div class="sec1_main_R_3_box8"></div>
                </div>
                <div class="sec1_main_R_4">
                    <div class="sec1_main_R_4_box1"></div>
                    <div class="sec1_main_R_4_box2"></div>
                    <div class="sec1_main_R_4_box3"></div>
                    <div class="sec1_main_R_4_box4"></div>
                    <div class="sec1_main_R_4_box5"></div>
                    <div class="sec1_main_R_4_box6"></div>
                    <div class="sec1_main_R_4_box7"></div>
                    <div class="sec1_main_R_4_box8"></div>
                </div>
                <div class="sec1_main_R_5">
                    <div class="sec1_main_R_5_box1"></div>
                    <div class="sec1_main_R_5_box2"></div>
                    <div class="sec1_main_R_5_box3"></div>
                    <div class="sec1_main_R_5_box4"></div>
                    <div class="sec1_main_R_5_box5"></div>
                    <div class="sec1_main_R_5_box6"></div>
                    <div class="sec1_main_R_5_box7"></div>
                    <div class="sec1_main_R_5_box8"></div>
                </div>
            </div>
        </div>
    </div>
    <div class="sec2">
        <div class="sec2_main_box">
            <a href="<c:url value="/p4"/>" class="sec2_button1"></a>
            <a href="<c:url value="/p4"/>" class="sec2_button2"></a>
            <a href="<c:url value="/p4"/>" class="sec2_button3"></a>
        </div>
    </div>
    <div class="sec3">
        <div class="sec3_box">
            <div class="sec3_main_box1">
                <div class="sec3_box11">
                    <div class="sec3_box111 sec3_box_j1">
                        <div class="sec3_box_111_img"></div>
                        <div class="sec3_box_111_list">
                            <div class="sec3_box111_list" id="sec3_color_img1"></div>
                            <div class="sec3_box111_list" id="sec3_color_img2"></div>
                            <div class="sec3_box111_list" id="sec3_color_img3"></div>
                            <div class="sec3_box111_list" id="sec3_color_img4"></div>
                            <div class="sec3_box111_list" id="sec3_color_img5"></div>
                        </div>
                    </div>
                    <div class="sec3_box112 sec3_box_j2">
                        <div class="sec3_box_112_img"></div>
                        <div class="sec3_box_112_list">
                            <div class="sec3_box112_list" id="sec3_color_img6"></div>
                            <div class="sec3_box112_list" id="sec3_color_img7"></div>
                            <div class="sec3_box112_list" id="sec3_color_img8"></div>
                        </div>
                    </div>
                    <div class="sec3_box113 sec3_box_j3">
                        <div class="sec3_box_113_img"></div>
                        <div class="sec3_box_113_list">
                            <div class="sec3_box113_list" id="sec3_color_img9"></div>
                            <div class="sec3_box113_list" id="sec3_color_img10"></div>
                            <div class="sec3_box113_list" id="sec3_color_img11"></div>
                            <div class="sec3_box113_list" id="sec3_color_img12"></div>
                            <div class="sec3_box113_list" id="sec3_color_img13"></div>
                        </div>
                    </div>
                </div>
                <div class="sec3_box12">
                    <div class="sec3_box12_box" id="sec3_j1">
                        <div class="sec3_box_img1"></div>
                        <div class="sec3_box_list">
                            <br>
                            <p>Kelly Men 브레이슬릿</p>
                            <br>
                            <samp>₩ 1,100,000</samp>
                        </div>
                    </div>
                    <div class="sec3_box12_box" id="sec3_j2">
                        <div class="sec3_box_img2"></div>
                        <div class="sec3_box_list">
                            <br>
                            <p>Olympe 링</p>
                            <br>
                            <samp>₩ 580,000</samp>
                        </div>
                    </div>
                    <div class="sec3_box12_box" id="sec3_j3">
                        <div class="sec3_box_img3"></div>
                        <div class="sec3_box_list">
                            <br>
                            <p>Olympe 브레이슬릿</p>
                            <br>
                            <samp>₩ 1,060,000</samp>
                        </div>
                    </div>
                </div>
            </div>
            <div class="sec3_main_box2">
                <div class="sec3_box21">
                    <div class="sec3_box211 sec3_box_j4">
                        <div class="sec3_box_211_img"></div>
                        <div class="sec3_box_211_list">
                            <div class="sec3_box211_list" id="sec3_color_img21"></div>
                            <div class="sec3_box211_list" id="sec3_color_img22"></div>
                            <div class="sec3_box211_list" id="sec3_color_img23"></div>
                            <div class="sec3_box211_list" id="sec3_color_img24"></div>
                        </div>
                    </div>
                    <div class="sec3_box212 sec3_box_j5">
                        <div class="sec3_box_212_img"></div>
                        <div class="sec3_box_212_list">
                            <div class="sec3_box212_list" id="sec3_color_img25"></div>
                            <div class="sec3_box212_list" id="sec3_color_img26"></div>
                            <div class="sec3_box212_list" id="sec3_color_img27"></div>
                            <div class="sec3_box212_list" id="sec3_color_img28"></div>
                        </div>
                    </div>
                    <div class="sec3_box213 sec3_box_j6">
                        <div class="sec3_box_213_img"></div>
                        <div class="sec3_box_213_list">
                            <div class="sec3_box213_list" id="sec3_color_img29"></div>
                            <div class="sec3_box213_list" id="sec3_color_img30"></div>
                            <div class="sec3_box213_list" id="sec3_color_img31"></div>
                        </div>
                    </div>
                </div>
                <div class="sec3_box222">
                    <div class="sec3_box12_box" id="sec3_j4">
                        <div class="sec3_box_img4"></div>
                        <div class="sec3_box_list">
                            <br>
                            <p>Chaine d'Ancre 배지</p>
                            <br>
                            <samp>₩ 780,000</samp>
                        </div>
                    </div>
                    <div class="sec3_box12_box" id="sec3_j5">
                        <div class="sec3_box_img5"></div>
                        <div class="sec3_box_list">
                            <br>
                            <p>Loop 이어링</p>
                            <br>
                            <samp>₩ 1,250,000</samp>
                        </div>
                    </div>
                    <div class="sec3_box12_box" id="sec3_j6">
                        <div class="sec3_box_img6"></div>
                        <div class="sec3_box_list">
                            <br>
                            <p>Fusion Amulette Kelly </p>
                            <br>
                            <samp>₩ 1,120,000</samp>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="sec4">
        <div class="flow_banner">
            <div class="list">
                <div>________</div>
                <div>______</div>
                <div>_______</div>
                <div>______</div>
                <div>_________</div>
            </div>
        </div>
    </div>
</main>
<footer></footer>
</body>
</html>