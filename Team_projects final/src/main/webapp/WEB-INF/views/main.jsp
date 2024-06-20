<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="/resources/css/main.css">
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
        <div class="text">Welcome</div>
    </div>
    <div class="about" id="scroll2">
        <div class="title">about</div>
        <div class="about_box">
            <div class="about_img_box">
                <div></div>
            </div>
            <div class="about_title_box">
                <div class="about_title_chk_box">
                    <div onclick="showMain_1(1)" id="about_title_chk_tag1">가치관</div>
                    <div onclick="showMain_1(2)" id="about_title_chk_tag2">정보</div>
                    <div onclick="showMain_1(3)" id="about_title_chk_tag3">학력 및 경험</div>
                </div>
                <div class="about_title_text">
                    <div class="about_title_chk about_main_1">
                        <h1>협력을 중요시하며 겸손을 지향합니다. </h1>
                    </div>
                    <div class="about_title_chk about_main_2">
                        <p>이름: 김선우</p>
                        <p>나이: 26(1999_10_04)</p>
                        <p>거주지: 경기도 용인시</p>
                        <p>po8702@naver.com</p>
                    </div>
                    <div class="about_title_chk about_main_3">
                        <p>학교: 호서대학교 ICT 공학(졸업)</p>
                        <p>경험: 2023~03 - 2023~~12 한국세라믹 기술원(인턴)</p>
                        <P>활동: 추계 학술대회 , 한일 세라믹 학회 2023 (장소:코엑스)/포스터 발표</P>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="skill" id="scroll3">
        <div class="title">skill</div>
        <div class="skill_box">
            <div class="skill_box_1">
                <div></div>
                <div></div>
                <div></div>
            </div>
            <div class="skill_box_2">
                <div></div>
                <div></div>
                <div></div>
            </div>
        </div>
    </div>
    <div class="potfolio" id="scroll4">
        <div class="potfolio_box1">
            <div class="title">potfolio_1</div>
            <div class="potfolio_1_main">
                <div class="potfolio_1_img_boxs"></div>
                <div class="potfolio_1_text">
                    <div class="potfolio_1_min">
                        <h1>Viewport: 반응형</h1>
                        <h1>제목: Clothes shop</h1>
                        <div class="introduction">
                            <h1>소개</h1>
                            <p>HTML, CSS ,Jquery, JavaScript  사용</p>
                            <p>개인 프로젝트이며, 역동적인 기술들을 표현하는것이 목표</p>
                            <p>프론트로 작업을 했으며, Hover,Scroll,Check 등 입체적인 효과로 구성</p>
                        </div>
                        <div class="skill_chk">
                            <a href="<c:url value="/p1"/>">Clothes shop 사이트 이동</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="potfolio_box2">
            <div class="title">potfolio_2</div>
            <div class="potfolio_2_main">
                <div class="potfolio_2_img_boxs"></div>
                <div class="potfolio_2_text">
                    <div class="potfolio_2_min">
                        <h1>Viewport: 반응형</h1>
                        <h1>제목: meetour</h1>
                        <div class="introduction">
                            <h1>소개</h1>
                            <p>HTML, CSS ,Jquery, MySoL , String 사용</p>
                            <p>팀 프로젝트이며, 유저의 정보의 활용하여 사이트를 만드는 것이 목표 </p>
                            <p>유저의 정보를 통해 검색, CRUD 구현 및 JAVA 활용하여 API 활용 </p>
                            <p>백엔드로 작업을 했으며, 유저 정보(DB) 에 관련된기술 담당 /참여도: 팀장(85%)</p>
                        </div>
                        <div class="skill_chk">
                            <a href="<c:url value="/index"/>">meetour 사이트 이동</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="contact"id="scroll5">
        <div class="title">contact</div>
        <div class="contact_box">
            <div><span>010-2111-3064</span></div>
            <div><span>https://github.com/sunwoowoo/span></div>
        </div>
    </div>
</main>
</body>
</html>