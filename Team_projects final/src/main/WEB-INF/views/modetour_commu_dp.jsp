<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<c:set var="userId" value="${ pageContext.request.getSession(false).getAttribute('id')==null ? '':pageContext.request.getSession(false).getAttribute('id') }" />
<c:set var="option" value="${ pageContext.request.getSession(false).getAttribute('option')==null ? '':pageContext.request.getSession(false).getAttribute('option') }" />
<c:set var="logInOutLink" value="${ sessionScope.id==null ? '/login':'/logout' }" />
<c:set var="logInOutTxt" value="${ sessionScope.id==null ? '로그인':'로그아웃' }" />
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css"/>
    <script src="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.js"></script>
    <script defer src="/resources/js/modetour_header.js"></script>
    <script defer src="/resources/js/modetour_commu_dp.js"></script>
    <script defer src="/resources/js/footer.js"></script>
    <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>



    <link rel="stylesheet" href="/resources/css/modetour_header.css">
    <link rel="stylesheet" href="/resources/css/modetour_commu_dp.css">
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
    <form action="" class="main content_area" id="frmboard">


        <div class="commu_dp_banner">
            <c:if test="${mode == 'new'}" ></c:if>
            <c:if test="${mode != 'new'}" >
                <c:choose>
                    <c:when test="${empty boardDto.ki_src}">
                        <img src = "/resources/img/commu_img/main_Logo.png">
                    </c:when>
                    <c:otherwise>
                        <img src="/resources/img/commu_img/${boardDto.ki_src}" id="commu_dp_banner_img">
                    </c:otherwise>
                </c:choose>
<%--                <c:if test ='${boardDto.ki_src}="" '>--%>
<%--                    <img src = "/resources/img/commu_img/main_Logo.png">--%>
<%--                </c:if>--%>
<%--                <c:if test ='${boardDto.ki_src}!="" '>--%>
<%--                    <img src="/resources/img/commu_img/${boardDto.ki_src}" id="commu_dp_banner_img">--%>
<%--                </c:if>--%>

            </c:if>

        </div>

        <input type="file" name="f_file" multiple="multiple" id="input_file" class="commu_up_load">
        <label for="input_file" class="input_file_button ${mode=="new"?"":"displayNone"}">
            이미지 업로드
        </label>
        <input type="hidden" name="ki_src",id="ki_src"value="${boardDto.ki_src}"/>
        <input type="button" class="imgdelete" id="imgdelete" value="사진삭제">
        <label for="imgdelete" class="remove_file_button displayNone">
            사진 삭제
        </label>


        <div class="commu_dp_box">
            <div class="commu_introduce_box">
                <div class="commu_introduce_title">여행 제목</div>
                <%--                <textarea name="b_title" id="b_title" class="commu_title" >--%>
                <%--                    ${boardDto.b_title}--%>
                <%--                </textarea>--%>
                <input type="text"  name="b_title" id="b_title" class="commu_title" value="${boardDto.b_title}" ${mode=="new"?"":"readonly"} />
            </div>
            <div class="commu_introduce_box">
                <div class="commu_introduce_title">여행 장소</div>
                <%--                <textarea name="b_place" id="b_place" class="commu_title" >${boardDto.b_place}</textarea>--%>
                <input type="text"  name="b_place" id="b_place" class="commu_title" value="${boardDto.b_place}" ${mode=="new"?"":"readonly"} />
            </div>
            <div class="commu_introduce_box">
                <div class="commu_introduce_title">여행소개</div>
                <textarea name="b_content" id="b_content" class="commu_introduce_txt" ${mode=="new"?"":"readonly"}>${boardDto.b_content}</textarea>
            </div>
            <div class="side_commu_dp_box">
                <div class="side_box">
                    <div class="commu_id_imf">
                        <div class="side_title">회원정보</div>
                        <div class="cotomer_user_img">
                            <div class="cstomer_img_box">

                                <c:choose>
                                    <c:when test="${empty userDto.picture}">
                                        <img src = "/resources/img/user_img/free-icon-user-727379.jpg">
                                    </c:when>
                                    <c:otherwise>
                                        <img src="/resources/img/user_img/${userDto.picture}" alt="" class="cstomer_img">
                                    </c:otherwise>
                                </c:choose>

                            </div>
                            <div class="cotomer_user">
                                <span>${userDto.id}</span>
                            </div>
                        </div>
                        <div class="cstomer_Email cstomer_imf">${userDto.email}</div>
                        <div class="cstomer_gender cstomer_imf">

                            ${userDto.gender}

                        </div>
                        <div class="trip_spot cstomer_imf">

                            <div class="trip_spot_txt">
                                간단한 소개
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <c:if test="${mode == 'new'}" >
                <input type="button" value="확인" class="confirm_btn" id="confirm_btn">
            </c:if>
            <c:if test="${mode != 'new' && boardDto.b_writer.equals(userId)}">
                <input type="button" value="수정" class="resize_btn" id="resize_btn">
                <input type="button" value="삭제" class="remove_btn" id="remove_btn">
            </c:if>

            <input type="button" value="되돌아가기" class="back_btn">
        </div>
    </form>
    <form action="" class="trip_dp_box content_area">
        <div class="trip_dp_title">
            댓글
        </div>
        <div class="review">
            <input type="text" name="c_content" id="review_content" class="add_service_txt" placeholder="댓글 추가">
            <button type="button" class="review_right_box" id="review_submit">등록</button>
        </div>
    </form>
    <div id="list_comment" class="content_area">
        <%--        <div class="review_txt_box">--%>
        <%--            <div class="review_box">--%>
        <%--                <div class="review_id">--%>
        <%--                    <p>숫자</p>&emsp;|&emsp;<span>이름</span>&emsp;|&emsp;<div class="review_date">날짜</div>--%>
        <%--                </div>--%>
        <%--                <span class="up_load_txt">내용</span>--%>
        <%--            </div>--%>
        <%--            <div class="review_change">--%>
        <%--                <input type="button" value="수정">--%>
        <%--                <input type="button" value="삭제">--%>
        <%--            </div>--%>
        <%--        </div>--%>
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
<script>
    ////////////////////게시글///////////////////////
    $(document).ready(function () {
        $('.back_btn').on('click', function () {
            let tmp_param = get_uri_info();
            let option = "<%= session.getAttribute("option")%>"
                console.log("1111111111111")
            console.log(option)
            if(option == "null"){
                location.href = "<c:url value ='/modetour_commu/list'/>?page=${page}&pageSize=${pageSize}"
            }
            else if(option == "view"){
                location.href = "<c:url value ='/modetour_commu/list/view'/>?page=${page}&pageSize=${pageSize}"
            }


        })


        $('#confirm_btn').on('click', function () {
            if ($('#b_title').val().trim() == "") {
                alert("제목을 입력하세요");
                $('#b_title').focus();
            } else if ($('#b_content').val().trim() == "") {
                alert("내용을 입력하세요");
            } else if ($('#b_place').val().trim() == "") {
                alert("장소를 입력하세요");
            } else {
                let frmboard = $('#frmboard');
                frmboard.attr("action", "<c:url value='/modetour_commu_dp/write'/>");
                frmboard.attr("method", "POST");
                frmboard.attr('enctype', 'multipart/form-data');
                frmboard.submit();

            }
        })

        $('#resize_btn').on('click', function () {
            let isReadonly = $('#b_title').attr("readonly");
            $('.remove_file_button').toggleClass('displayNone');
            $('.input_file_button').toggleClass('displayNone');
            if (isReadonly == "readonly") {
                $('#b_title').attr('readonly', false);
                $('#b_content').attr('readonly', false);
                $('#b_place').attr('readonly', false);
                $('#resize_btn').val('확인');
                $("#b_title").focus();


                return;
            }

            let tmp_param = get_uri_info();

            let frmboard = $("#frmboard");
            frmboard.attr("action", "<c:url value='/modetour_commu_dp/modify'/>?" + tmp_param);

            frmboard.attr("method", "post");
            frmboard.attr('enctype', 'multipart/form-data');
            frmboard.submit();

        });

        function get_uri_info() {
            // url 값 모두 가져오기
            // console.log(location.href);
            const searchParam = new URLSearchParams(location.search);
            // [ bno=224,  page=1,  pageSize=10,  option=,  keyword= ]
            // alert(searchParam.size); // 5
            let tmp_param = ""; // bno=224&page=1&pageSize=10&option=&keyword=&
            for (const param of searchParam) { // page=1 => [page, 1]

                tmp_param += param[0] + "=" + param[1] + "&"; // page=1&
                // bno=224&page=1&pageSize=10&option=&keyword=
            }
            // console.log(tmp_param);

            return tmp_param;
        }

        $('#remove_btn').on("click", function () {
            if (!confirm("삭제하시겠습니까?")) return;

            let tmp_param = get_uri_info();

            let frmboard = $("#frmboard");
            frmboard.attr("action", "<c:url value='/modetour_commu_dp/remove'/>?" + tmp_param)
            frmboard.attr("method", "post");
            frmboard.submit();
        });

        ///////////////////댓글//////////////////////
        function zero(num) {
            if (num < 10) {
                return "0" + num;
            }
            return num;
        }

        <c:if test="${!empty param.b_no || param.b_no != null }">
        let b_no = ${param.b_no};
        </c:if>

        let userId = "<%= session.getAttribute("id") %>";

        let showList = function (b_no) {

            $.ajax({
                url: '/comments?b_no=' + b_no,
                type: 'GET',

                success: function (result) {
                    let tmp = "";

                    result.forEach(function (rowResult) {
                        let dt = new Date(rowResult.c_date);
                        let year = dt.getFullYear();
                        let month = dt.getMonth() + 1;
                        let date = dt.getDate();
                        let hour = dt.getHours();
                        let min = dt.getMinutes();
                        let sec = dt.getSeconds();

                        tmp += `<div class="review_txt_box">
        <div class="review_box">
           <div class="review_id">
            <span>${"${rowResult.c_writer}"}</span>&emsp;|&emsp;<div class="review_date">${'${year}'}-${'${zero(month)}'}-${'${zero(date)}'} ${'${zero(hour)}'}:${'${zero(min)}'}:${'${zero(sec)}'}</div>
        </div>
       <input type="text" class="up_load_txt" name="up_load_txt" value="${'${rowResult.c_content}'}" readonly >
      </div>
</div>
`

                        if (userId == rowResult.c_writer) {
                            tmp += `<div data-c_no="${'${rowResult.c_no}'}" data-b_no="${'${rowResult.b_no}'}" class="review_change">
    <input type="button" class="btn_comment comment_modify" value="수정">
   <input type="button" class="btn_comment comment_delete" value="삭제">
    <input type="button" class="btn_comment comment_submit displayNone" value="등록">
     <input type="button" class="btn_comment comment_cancel displayNone" value="취소">
</div>`;

                        }
                        tmp += `</div>`
                    })
                    $('#list_comment').html(tmp);
                },
                error: function () {
                    alert("실패")
                }
            });
        }
        <c:if test="${!empty param.b_no || param.b_no != null }">
        showList(b_no);
        </c:if>

        /* 등록 */
        $(document).on('click', '#review_submit', function () {
            let c_content = $('#review_content').val().trim();
            if (c_content == "") {
                alert("내용을 입력해주세요");
                $('#review_submit').focus();
                return;
            }
            if (!confirm("등록 하시겠습니까?")) return;
            $.ajax({
                type: 'POST',
                url: "/comments?b_no=" + b_no,
                headers:
                    {"content-type": "application/json"},
                data: JSON.stringify({b_no: b_no, c_content: c_content}),
                success: function (result) {
                    $('#review_content').val("");
                    alert("등록 완료하였습니다");
                    showList(b_no);
                },
                error: function (request, status, error) {
                    alert("등록 실패 - 관리자에게 문의하세요")
                }
            });
        });

        let currComment = "";
        /* 수정 */
        $(document).on('click', '.comment_modify', function () {
            let el = $(this).parent().prev().find('.up_load_txt');
            currComment = el.val();

            el.attr("readonly", false);
            // el.addClass('active_comment_edit');
            el.select();

            $(this).parent().children('.btn_comment').toggleClass('displayNone');
        });
        /* 수정 버튼 누른 후 취소 */
        $(document).on('click', '.comment_cancel', function () {
            let el = $(this).parent().prev().find('.up_load_txt');
            el.attr("readonly", true);
            el.val(currComment);

            $(this).parent().children('.btn_comment').toggleClass('displayNone');
        })

        /* 수정 후 등록 */
        $(document).on('click', '.comment_submit', function () {
            let c_no = $(this).parent().attr("data-c_no");
            let b_no = $(this).parent().attr("data-b_no");
            let el = $(this).parent().prev().find('.up_load_txt');
            let c_content = el.val();

            $.ajax({
                type: 'PATCH',
                url: '/comments/' + c_no,
                headers: {"content-type": "application/json"},
                data: JSON.stringify({c_no: c_no, c_content: c_content}),
                success: function (result) {
                    showList(b_no);
                },
                error: function () {
                    alert("error")
                }
            });
        });
        /* 삭제 */
        $(document).on('click', '.comment_delete', function () {
            if (!confirm("삭제 하시겠습니까?")) return;

            let c_no = $(this).parent().attr("data-c_no");
            let b_no = $(this).parent().attr("data-b_no");
            $.ajax({
                type: "DELETE",
                url: "/comments/" + c_no + "?b_no=" + b_no,
                success: function () {

                    showList(b_no)
                    alert("삭제 하였습니다");
                },
                error: function () {
                    alert("삭제 실패")
                }
            });
        });

        <!-- 사진삭제 -->
        $(document).on('click','#imgdelete',function (){

            $.ajax({
                type:'GET',
                url:'/imgdelete?b_no='+b_no,
                // headers:{"content-type":"application/json"},
                // data:JSON.stringify({b_no:b_no}),
                success:function (result){
                    $('input[name="ki_src"]').val('');

                    $('#commu_dp_banner_img').attr('src', "/resources/img/commu_img/main_Logo.png");


                    alert("사진 삭제성공");
                },
                error : function (){alert("error")}


            });
        });

    })
</script>
</body>
</html>