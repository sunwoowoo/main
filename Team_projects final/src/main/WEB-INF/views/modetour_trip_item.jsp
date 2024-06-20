<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

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
    <script defer src="/resources/js/modetour_header.js"></script>
    <script defer src="/resources/js/footer.js"></script>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css"/>
    <script src="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.js"></script>

    <script src="
https://cdn.jsdelivr.net/npm/sweetalert2@11.11.0/dist/sweetalert2.all.min.js
"></script>
    <link href="
https://cdn.jsdelivr.net/npm/sweetalert2@11.11.0/dist/sweetalert2.min.css
" rel="stylesheet">

    <%--datepicker--%>
<%--    <script type="text/javascript" src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>--%>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>

    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
    <link rel="stylesheet" type="text/css"  href="<c:url value="/resources/css/daterangepicker.css"/>" />


    <link rel="stylesheet" href="<c:url value="/resources/css/modetour_header.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/css/modetour_trip_item.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/css/modetour_footer.css"/>">
</head>
<body>
<div id="wrap">

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
    <div class="main">
        <c:if test="${mode == 'new'}">
            <h2 class="content_area">동행 모집글 작성</h2>
        </c:if>
        <h2 id="page_mode"></h2>
        <div class="item_img_box content_area">
            <div class="swiper swiper-container2 item_img">
                <div class="swiper-wrapper trip_item_box">
                    <div class="swiper-slide trip_item_img" id="images_container">
                        <c:if test="${mode == 'new'}" ></c:if>
                        <c:if test="${mode != 'new'}" >
                            <img src="/resources/img/ktour_upload_img/${ktDto.k_tra_img}"/>
                        </c:if></div>
                    <div class="left_btn item_btn"></div>
                    <div class="right_btn item_btn"></div>
                </div>
            </div>
        </div>

        <form action="" class="main_content content_area" id="frm">
            <input type="file" name="f_file" id="trip_file" class="trip_up_load" onchange="setThumbnail(e)"  multiple="multiple">
            <c:if test="${mode == 'new' || loginId.equals(ktDto.k_writer)}">
            <label for="trip_file" class="trip_file_button">
                이미지 업로드
            </label>
                <input type="hidden" name="k_tra_img" id="k_tra_img" value="${ktDto.k_tra_img}"/>
            </c:if>
            <div class="trip_schedule_title">
                여행 정보
            </div>
            <div class="content_area info_big_box">
                <div class="title_put_box">
                    <input id="k_title" class="put_txt put_txt_title" name="k_title" placeholder="제목을 입력해주세요" value="${ktDto.k_title}" ${mode=="new"?"":"readonly"} >
                </div>
                <div class="trip_schedule_title">
                    여행 정보
                </div>

                    <div class="trip_schedule_box">

                        <div class="trip_schedule_txt_title ">
                            <p>날짜:</p>
                            <p>지역:</p>
                            <p>테마:</p>
                            <p>모집인원:</p>
                            <p>여행 예상 경비:</p>
                        </div>
                        <div class="trip_schedule_txt">
                            <div class="date_put_box trip_korea_imf">
                                <input type="text" id="demo1" name="k_start" value="${ktDto.k_start}" placeholder="여행 시작일" ${mode=="new"?"":"readonly"} class="put_txt"/> ~
                                <input type="text" id="demo2" name="k_end" value="${ktDto.k_end}" placeholder="여행 마지막일" ${mode=="new"?"":"readonly"} class="put_txt"/>
                            </div>
                            <div class="area_put_box trip_korea_imf">
                                    <c:if test="${mode!='new'}">
<%--                                        <span class="read_k_state">${ktDto.k_state}</span>--%>
<%--                                        <span class="read_k_city">${ktDto.k_city}</span>--%>
                                    </c:if>

                                    <select onchange="do_select()" id="do_id" name="k_state"  class="put_txt" ${mode=="new"?"":"readonly"}>
                                    </select>
                                    <select id="si_id"  name = "k_city" class="put_txt" ${mode=="new"?"":"readonly"}>
                                        <option selected disabled>시/군/구</option>
                                    </select>


<%--                                    <span  id="k_state" class="put_txt">${ktDto.k_state}</span>--%>
<%--                                    <span  id="k_city" class="put_txt" >${ktDto.k_city}</span>--%>

                            </div>
                            <div class="tmma_put_box trip_korea_imf">
                                    <select id="k_tag"  name = "k_tag" class="put_txt"  ${mode=="new"?"":"readonly"} >
                                        <option value="" selected disabled>여행 테마</option>
                                        <option value="미식">미식</option>
                                        <option value="문화/예술">문화/예술</option>
                                        <option  value="관광">관광</option>
                                        <option  value="액티비티">액티비티</option>
                                        <option value="엔터테이먼트">엔터테이먼트</option>
                                    </select>

<%--                                <c:if test="${mode=='read'}">--%>
<%--                                    <span class="put_txt" id="thema_txt">${ktDto.k_tag}</span>--%>
<%--                                </c:if>--%>


                            </div>
                            <div class="people_put_box trip_korea_imf">
                                <input  id="k_sonnel" class="put_txt" name="k_sonnel" value="${ktDto.k_sonnel}" ${mode=="new"?"":"readonly"}> 명
                            </div>
                            <div class="price_put_box trip_korea_imf">
                                <input id="k_price"  class="put_txt" name="k_price"  value="${ktDto.k_price}
                " ${mode=="new"?"":"readonly"}> 원

                            </div>


                            <%--       ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ --%>

                            <%--        <div class="title_put_box trip_korea_imf">--%>
                            <%--            <span id="k_title" class="put_txt">${ktDto.k_title}</span>--%>
                            <%--        </div>--%>
                            <%--        <div class="date_put_box trip_korea_imf">--%>
                            <%--            <span id="k_start" class="put_txt" >${ktDto.k_start} ~ ${ktDto.k_end}</span>--%>
                            <%--        </div>--%>
                            <%--        <div class="area_put_box trip_korea_imf">--%>
                            <%--            <span  id="k_state" class="put_txt" }>${ktDto.k_state}</span>--%>
                            <%--            <span  id="k_city" class="put_txt" >${ktDto.k_city}</span>--%>
                            <%--        </div>--%>
                            <%--        <div class="tmma_put_box trip_korea_imf">--%>
                            <%--            <span  id="k_tag" class="put_txt">${ktDto.k_tag}</span>--%>
                            <%--            <div class="chs_tmma_box"></div>--%>
                            <%--        </div>--%>
                            <%--        <div class="people_put_box trip_korea_imf">--%>
                            <%--            <span  id="k_sonnel" class="put_txt" > ${ktDto.k_sonnel} </span>--%>
                            <%--        </div>--%>
                            <%--        <div class="price_put_box trip_korea_imf">--%>
                            <%--                        <span id="k_price"  class="put_txt">--%>
                            <%--                                ${ktDto.k_price}--%>
                            <%--                        </span>--%>
                            <%--        </div>--%>


                        </div>
                    </div>
                    <div class="trip_price_box">
                        <div class="trip_price_title">
                            여행 소개
                        </div>
                        <div class="trip_price_txt">
                            <textarea name="k_content" id="k_content" ${mode=="new"?"":"readonly"} class="border">
                                ${ktDto.k_content}
                            </textarea>

                        </div>
                    </div>


                <div class="side_trip_dp_box">
                    <div class="side_box">
                        <div class="side_title">회원정보</div>
                        <div class="trip_id_imf">
                            <c:if test="${mode!='new'}">
                            <div class="cstomer_img_box">
                                <img src="<c:url value="/resources/img/user_img/${userDto.picture}"/>" class="cstomer_img">
                                <span>${ktDto.k_writer}</span>
                            </div>
                                <div class="trip_spot cstomer_imf">
                            <div class="cstomer_Email cstomer_imf">${userDto.email}</div>
                            <div class="user_birth cstomer_imf">${userDto.birth}</div>
                            <div class="user_gender cstomer_imf">${userDto.gender}</div>

                                </div>

                            </c:if>


                            <c:if test="${mode =='new'}">
                                <div class="cstomer_img_box loginuser">

                                    <img src="<c:url value="/resources/img/user_img/${loginuserDto.picture}"/>" class="cstomer_img">

                                    <span>${ktDto.k_writer}</span>
                                </div>
                                <div class="cstomer_Email cstomer_imf">${loinguserDto.email}</div>
                                <div class="user_birth cstomer_imf">${loginuserDto.birth}</div>
                                <div class="user_gender cstomer_imf">${loginuserDto.gender}</div>
                            </c:if>
                            <div class="zzimbox">
                            <c:choose>
                                <c:when test="${u!=null}">
                                <div class="pick_heart pick_heart_login" >
                                </div>
                                </c:when>
                                <c:otherwise>
                                <div class="pick_heart pick_heart_nologin" >
                                    <img src="<c:url value="/resources/img/logo/b_heart.png"/>" class="cik_heart nologin" data-iszzim="-1">
                                </div>
                                </c:otherwise>
                            </c:choose>
                            <input type="button" value="신청하기" class="confirm_btn">
                            </div>
                        </div>


                    </div>
                </div>
            </div>



            <div class="content_area btn_box" >
                <c:if test="${mode== 'new'}">
                    <button type="button"  class="btn_write" id="btn_write">저장</button>
                </c:if>
                <c:if test="${mode == 'read' && ktDto.k_writer.equals(loginId)}">
                <input type="button" value="수정" class="resize_btn"  id="btn_modify">
                <input type="button" value="삭제" class="remove_btn" id="btn_del">
                </c:if>
                <button type="button"  class="return_btn" id="btn_list">돌아가기</button>
            </div>

        </form>

        <c:if test="${mode!= 'new'}">
        <div id="comment_area">
            <jsp:include page="k_comment.jsp" flush="false"/>
        </div>

        </c:if>



</div>




    <div class="popup_new_trip_write_body">
    </div>




<%-- footer   --%>
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

    $(document).ready(function(){
        //도 불러오기


        function showDoList(){
            $.ajax({
                url:"/modetour_korea/do_area",
                type: 'POST',
                dataType: "json",
                success: function(data){
                    let options = "<option id='do_default' value='' selected disabled>권역</option>";
                    for(let i= 0 ; i< (data.length - 1) ; i++){
                        options+= "<option value='" + data[i+1].do_area + "'>" + data[i+1].do_area + " </option>"
                    }
                    $("#do_id").html(options);
                },
                error: function(){
                    alert("error load do area");
                }
            });
        }
        showDoList();



        let searchParam1 = new URLSearchParams(location.search);
        //searchParam = [bno=221, page=1, pageSize=10, option=, keyword=] 객체형태로 나옴(배열x)
        //alert(searchParam.size); => 5
        let k_state_value = searchParam1.get('k_state');
        let k_city_value= searchParam1.get('k_city');
        let k_tag_value= searchParam1.get('k_tag');


        console.log(k_state_value,k_city_value,k_tag_value)
console.log(typeof k_state_value)
        // for(let i=0; i<$('#do_id').children('option').length; i++) {
        //     if(k_state_value==$('#do_id').children('option').eq(i).val()){
        //         $('#do_id').children('option').eq(i).attr('selected', true);
        //     }
        // }

        setTimeout(function (){
            $("#do_id").val(k_state_value).prop("selected", true);
            do_select()
            $("#si_id").val(k_city_value).prop("selected", true);
            $("#k_tag").val(k_tag_value).prop("selected", true);
        }, 100)





        //돌아가기 버튼 눌렀을 때
        $('#btn_list').on('click', function(){

            let tmp_param = get_uri_info();

            <%--location.href = "<c:url value='/board/list' />?page=${param.page}&pageSize=${param.pageSize}";--%> //주소창에서 끌어다 쓰는거
            location.href = "<c:url value='/modetour_korea/search' />?page=${page}&pageSize=${pageSize}&option=${param.option}&keyword=${param.keyword}";

            //모델에 있는 변수 끌어다 쓰는거  (왜 ph.page가 아니지? -> Ex09_BoardController에서 상세페이지보는 메서드에서 모델 m에 변수 담았었음!
        })







        //글쓰기 버튼 눌렀을 때
        $('#btn_write').on("click", function (){

            //trim():  좌우 공백제거
            // 유효성 검사 - title, content 빈칸 체크
            if($('#k_title').val().trim() == "") {
                alert("제목을 입력하시오");
                $('#k_title').focus();
                // return;
            }
            else if($('#demo1').val()>$('#demo2').val()){
                alert("끝나는 날짜는 시작하는 날짜와 같거나 커야합니다");
            }
            else if($('#k_content').val().trim() == "") {
                alert("내용을 입력하시오");
                $('#k_content').focus();
                // return;
            }
            else if($('#do_id option:selected').val() ==""){
                alert("지역 선택해주세요");
            }
            else if($('#k_tag option:selected').val() == "") {
                alert("테마를 선택해주세요");
            }
            else if($('#k_sonnel').val().trim() == "") {
                alert("모집인원을 입력해주세요");
                $('#k_sonnel').focus();
            }
            else if($('#k_price').val().trim() == "") {
                alert("여행 예상 경비를 입력해주세요");
                $('#k_price').focus();
            }

            else {


                let frm = $("#frm");
                frm.attr("action", "<c:url value='/modetour_korea/write'/>")//그냥 1페이지로 넘어가게 하면 됨.
                <%--포폴용으로 자신이 방금 쓴 글의 상세페이지로 넘어가게 할 수도 있음(내가 쓴 글 목록 중에서 최상단의 게시글 불러오기)  let tmp_param = get_uri_info();frm.attr("action", "<c:url value='/board/write'/>?"+tmp_param)--%>
                frm.attr("method", "POST");
                frm.attr('enctype','multipart/form-data'); // enctype: 인코딩되는 방법, 'multipart/form-data': 모든 문자를 인코딩하지 않음을 명시함. 이 방식은 <form> 요소가 파일이나 이미지를 서버로 전송할 때 주로 사용함.


                frm.submit();
            }

        })




        //수정 버튼 눌렀을 떄
        $(document).on('click','#btn_modify',function (){
    let isReadonly = $('#k_title').attr("readonly");
    console.log(11111111)
    // 1. 기존 읽기 상태일때 '수정'버튼 누른 경우
    //  #page_mode, #title, #content 의 readonly 삭제
    if(isReadonly == "readonly") {


        $('#page_mode').text("게시물 수정")
        $('#k_title').attr('readonly', false);
        $('#k_content').attr('readonly', false);
        $('#k_start').attr('readonly', false);
        $('#k_end').attr('readonly', false);
        $('#do_id').attr('readonly', false);
        $('#si_id').attr('readonly', false);
        $('#k_sonnel').attr('readonly', false);
        $('#k_price').attr('readonly', false);
        $('#demo1').attr('readonly', false);
        $('#demo2').attr('readonly', false);
        $('#k_title').focus();

        $('.put_txt').toggleClass('border')

        return;
    }
            if($('#k_title').val().trim() == "") {
                alert("제목을 입력하시오");
                $('#k_title').focus();
                // return;
            }
            else if($('#demo1').val()>$('#demo2').val()){
                alert("끝나는 날짜는 시작하는 날짜와 같거나 커야합니다");
            }
            else if($('#k_content').val().trim() == "") {
                alert("내용을 입력하시오");
                $('#k_content').focus();
                // return;
            }
            else if($('#do_id option:selected').val() ==""){
                alert("지역 선택해주세요");
            }
            else if($('#k_tag option:selected').val() == "") {
                alert("테마를 선택해주세요");
            }
            else if($('#k_sonnel').val().trim() == "") {
                alert("모집인원을 입력해주세요");
                $('#k_sonnel').focus();
            }
            else if($('#k_price').val().trim() == "") {
                alert("여행 예상 경비를 입력해주세요");
                $('#k_price').focus();
            }

            else {
                // 2. 수정 상태일때 또 '수정' 버튼 누른 경우
                $('.put_txt').toggleClass('border')
                let tmp_param = get_uri_info();

                let frm = $("#frm");
                frm.attr("action", "<c:url value='/modetour_korea/modify'/>?" + tmp_param)
                frm.attr("method", "post");
                frm.attr('enctype','multipart/form-data');
                frm.submit();
            }
})

        //url: 전체 http://localhost:8080/board/read?bno=221&page=1&pageSize=10&option=&keyword=
        //uri: ?뒤 bno=221&page=1&pageSize=10&option=&keyword=
        function get_uri_info() {
            // url 값 모두 가져오기
            // console.log(location.href);
            const searchParam = new URLSearchParams(location.search);
            //searchParam = [bno=221, page=1, pageSize=10, option=, keyword=] 객체형태로 나옴(배열x)
            //alert(searchParam.size); => 5

            let tmp_param=""; //bno=221&page=1&pageSize=10&option=&keyword=
            for(const param of searchParam) { // page=1 => [page,1]
                console.log(param);
                tmp_param += param[0]+"="+param[1]+"&"; // page=1&
                //bno=221&page=1&pageSize=10&option=&keyword=& //객체를 쪼개서 다시 합쳐서 문자열로 저장함.
            }
            console.log(tmp_param);

            return tmp_param;
        }





        // 삭제 버튼 눌렀을 떄
        $('#btn_del').on("click", function(){
            if(!confirm("삭제하시겠습니까?")) return;

            // url 값 모두 가져오기 --> 함수로 만들어서 쓰기
            // console.log(location.href);
            // const searchParam = new URLSearchParams(location.search);
            //
            // let tmp_param="";
            // for(const param of searchParam) {
            //     console.log(param);
            //     tmp_param += param[0]+"="+param[1]+"&";
            // }
            // console.log(tmp_param)
            let tmp_param = get_uri_info();


            // get 방식
            // location.href = "/board/remove?"+tmp_param;

            // post , get 다 됨
            let frm = $("#frm");
            frm.attr("action", "<c:url value='/modetour_korea/remove'/>?"+tmp_param) //get방식으로 썼지만 post방식으로 보내면 안 보임
            // /app/board/remove?tmp_param
            frm.attr("method", "post");
            // frm.attr("method", "get");
            frm.submit();

        });

        let k_no =<%=request.getParameter("k_no")%>;
        iszzim(k_no);

        //찜 했는지 확인
        function iszzim(k_no){
            <%--k_no =${param.k_no};--%>
            $.ajax({
                url: '/kzzim?k_no='+k_no,
                type: 'GET',
                //data: JSON.stringify({k_no:k_no}),
                success: function (result){
                    console.log(result+ typeof result)


                    let like_img="";
                    if(''== result){
                        like_img =  `<img src="<c:url value="/resources/img/logo/b_heart.png"/>" class="cik_heart iszzimfalse" data-iszzim="0" >
                                    `
                    }
                    else {
                        like_img =  `<img src="<c:url value="/resources/img/logo/heart.png"/>" class="cik_heart iszzimtrue" data-iszzim="1" data-k_no="${'${result.k_no}'}" data-z_no="${'${result.z_no}'}">`
                    }

                    $('.pick_heart_login').html(like_img)
                }
            })
        }



//찜 버튼 눌렀을 때
        $(document).on('click','.pick_heart_login',function (){
             let iszzim = $(this).children().data('iszzim');
             console.log(iszzim)

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
                let tmp_param=get_uri_info();
                <%--$.ajax({--%>
                <%--    url: '/modetour_korea/read?'+tmp_param,--%>
                <%--    type: 'POST',--%>
                <%--    headers: {"content-type":"application/json"},--%>
                <%--    data:JSON.stringify(tmp_param),--%>
                <%--    //data: JSON.stringify({k_no:k_no}),--%>
                <%--    success: function (result) {--%>

                <%--        location.href ="<c:url value='/login'/>"--%>
                <%--    }--%>

                <%--})--%>
                sessionStorage.setItem("prevPage"," /modetour_korea/read"+tmp_param);
                location.href ="<c:url value='/login'/>"
            }
        })









    });
////////////////////////////////////////////////////////
    function do_select(){
        let doData =($("#do_id option:selected").index() + 1).toString();
        $.ajax({
            url: '/modetour_korea/si_area',
            type:'POST',
            data: doData,
            contentType: 'application/json',  /* 이거 넣으니까 오류 해결: 여기는 보내는 do_id */
            dataType: "json",	 	/* 여기는 받는 si_area List */
            success:function(data){
                var options = "";
                for(var i= 0 ; i< (data.length - 1); i++){
                    options+= "<option value='" + data[i+1].si_area + "'>" + data[i+1].si_area + "</option>"
                }
                $("#si_id").html(options);
            },
            error:function(){
                alert("error load si area");
            }
        })
    }

    function setThumbnail(event){
        var reader = new FileReader();

        reader.onload = function(event){
            var img = document.createElement("img");
            img.setAttribute("src", event.target.result);
            img.setAttribute("class", "col-lg-6");
            document.querySelector("div#image_container").appendChild(img);
        };

        reader.readAsDataURL(event.target.files[0]);
    }






        let  birthDate1 = new Date($('.user_birth').text().trim()) ;
        let age1 = calculateAge(birthDate1);

        $('.user_birth').text( age1 )

        let gender1 = $('.user_gender').text().trim();
    console.log(gender1, typeof gender1)
        if(gender1=="1"){
            $('.user_gender').text("여자")
        }
        else {
            $('.user_gender').text("남자")
        }

    //나이대 구하는 함수

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
        age= (age+"").slice(0,1)+ "0 대"

        return age;
    }




    // 달력
    $(function (){
        $('input[name="k_start"]').daterangepicker({
            "locale": {
                "format": "YYYY-MM-DD",
                //"separator": " ~ ",
                "applyLabel": "확인",
                "cancelLabel": "취소",
               // "fromLabel": "From",
                //"toLabel": "To",
                "customRangeLabel": "Custom",
                "weekLabel": "W",
                "daysOfWeek": ["일", "월", "화", "수", "목", "금", "토"],
                "monthNames": ["1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월", "9월", "10월", "11월", "12월"],

            },
            //"startDate": new Date(),
           //  "endDate": new Date(),
            "minDate" : new Date(),
            "singleDatePicker": true,
           // "drops": "auto"
        }, function (start, end, label) {
            console.log('New date range selected: ' + start.format('YYYY-MM-DD') + ' to ' + end.format('YYYY-MM-DD') + ' (predefined range: ' + label + ')');
        });

        $('input[name="k_end"]').daterangepicker({
            "locale": {
                "format": "YYYY-MM-DD",
                //"separator": " ~ ",
                "applyLabel": "확인",
                "cancelLabel": "취소",
                // "fromLabel": "From",
                //"toLabel": "To",
                "customRangeLabel": "Custom",
                "weekLabel": "W",
                "daysOfWeek": ["일", "월", "화", "수", "목", "금", "토"],
                "monthNames": ["1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월", "9월", "10월", "11월", "12월"],

            },
            //"startDate": new Date(),
            //  "endDate": new Date(),
            "minDate" : new Date(),
            "singleDatePicker": true,
            // "drops": "auto"
        }, function (start, end, label) {
            console.log('New date range selected: ' + start.format('YYYY-MM-DD') + ' to ' + end.format('YYYY-MM-DD') + ' (predefined range: ' + label + ')');
        });
    })




</script>
</body>
</html>