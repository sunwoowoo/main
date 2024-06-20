<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Title</title>


    <link rel="stylesheet" href="<c:url value="/resources/css/modetour_header.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/css/modetour_trip_item.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/css/modetour_footer.css"/>">


</head>
<body>
<div class="trip_dp_box content_area">
    <div class="trip_dp_title">
        댓글
    </div>
    <div class="review">
        <input type="text" name="comment" id="txt_comment" class="add_service_txt" placeholder="댓글 추가">
        <button class="review_right_box btn_submit_comment" id="btn_submit_comment">등록</button>
    </div>
</div>
<%--답글창--%>
<div id="popup_comment" class="position_fixed display_none">
<%--    position_fixed--%>
    <input type="text" name="comment" id="txt_comment_reply" class="add_service_txt" placeholder="댓글 추가" value="">
    <button class="review_right_box btn_submit_comment" id="btn_submit_comment_reply">등록</button>
    <input type="button" class="btn_comment btn_comment_edit_cancel_reply" value="취소">`
</div>

<div id="list_comment" class="content_area">

</div>

<%--<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>--%>
<script>
    $(document).ready(function (){
        // 한자리 수면 앞에 0 붙이는 함수
        function zero(num) {
            if(num < 10) {
                return "0"+num;
            }
            return num;
        }

        let k_no = ${param.k_no};
        let userId = "<%= session.getAttribute("id") %>";
        <%--let id = "<%= session.getAttribute("id") %>";--%>
        //let id = "asdf";
        /* 댓글 다 불러오기 */
        // 모든 댓글 불러오는 함수
        let showList = function(k_no){

            $.ajax({
                url:'/kcomments?k_no='+k_no,
                type: 'GET',
                success: function (result){

                    let tmp = "";


                    result.forEach(function (rowResult){

                        let dt = new Date(rowResult.c_regdate);
                        // console.log(dt);
                        let year = dt.getFullYear();
                        let month = dt.getMonth()+1;
                        let date=dt.getDate();
                        let hour=dt.getHours();
                        let min=dt.getMinutes();
                        let sec=dt.getSeconds();

                        tmp+=`<div class="review_txt_box" style="margin-left: ${'${(rowResult.level - 1) * 30}'}px;">
                                    <div class="review_box">
                                        <div class="review_id">
                                            <p>${"${rowResult.c_no}"} </p>&emsp;|&emsp;<span>${"${rowResult.c_commenter}"}</span>&emsp;|&emsp;
                                            <div class="review_date">
                                                <span>${'${year}'}-${'${zero(month)}'}-${'${zero(date)}'} ${'${zero(hour)}'}:${'${zero(min)}'}:${'${zero(sec)}'}</span>
                                            </div>
                                         </div>
                                        <span class="up_load_txt ">`


                                        if(rowResult.c_state=="N"){
                                            tmp+= ` <input type="text" class="comment_title" value="${'${rowResult.c_content}'}"  readonly>`
                                        }
                                        else{
                                           tmp+= `<p>삭제된 댓글입니다</p>`
                                        }




                              tmp+=          `</span>
                                    </div>`

                    if(rowResult.c_state=="N"){
                         tmp+=   `<div data-c_no="${'${rowResult.c_no}'}" data-k_no="${'${rowResult.k_no}'}" data-parent_c_no="${'${rowResult.parent_c_no}'}" data-c_regdate="${'${rowResult.c_regdate}'}" data-c_update="${'${rowResult.c_update}'}"class="review_change">
                                <input type="button" class="btn_comment btn_comment_reply" value="답글">
                            `
                        // 로그인 한 사람이랑 해당 댓글의 c_commenter랑 같으면 보여주기
                         if(userId == rowResult.c_commenter  && "N"==rowResult.c_state) {
                                tmp+= `<input type="button" class="btn_comment btn_comment_modify" value="수정">
                                <input type="button" class="btn_comment btn_comment_del" value="삭제">
                                <input type="button" class="btn_comment btn_comment_edit_submit displayNone" value="등록">
                                <input type="button" class="btn_comment btn_comment_edit_cancel displayNone" value="취소">`

                         }
                    }
                        tmp+=`</div>
                         </div>
                        </div>`


                    })
                    $('#list_comment').html(tmp);
                },
                error:function (){
                    alert("실패")
                }
            });



        }


        showList(k_no)
        /* 등록 */
        $(document).on('click', '#btn_submit_comment', function(){
            let c_content = $('#txt_comment').val().trim();
            console.log(c_content)
            let parent_c_no = $(this).attr("data-parent_c_no")

            if(c_content=="") {
                alert("입력해");
                $('#btn_submit_comment').focus();
                return;
            }
            $.ajax({
                type:'POST',
                url:"/kcomments?k_no="+k_no,
                headers: {"content-type":"application/json"},
                data:JSON.stringify({k_no:k_no, c_content:c_content , parent_c_no:parent_c_no}),
                // data: {"comment":comment},
                // dataType: 'json',
                success:function(result){
                    console.log("result: " + result)
                    console.log(33333333333)
                    $('#txt_comment').val(""); // 댓글 쓴 부분 빈칸으로 초기화 하기
                    showList(k_no);

                },
                error:function(request, status, error){
                    console.log(request.status);
                    console.log(request.responseText);
                    console.log(error);

                    alert("등록 실패 - 관리자에게 문의하세요")
                }
            });
        });

        $(document).on('keydown','#txt_comment', function (e){
            if(e.keyCode==13){
                $('#btn_submit_comment').trigger('click')
            }

        })


        /* 삭제 */
        $(document).on('click', '.btn_comment_del', function(){
            if(!confirm("삭제하시겠습니까?")) return;

            let c_no = $(this).parent().attr("data-c_no");
            let k_no = $(this).parent().attr("data-k_no");
            console.log("/comments/"+c_no+"?k_no="+k_no);
            $.ajax({
                type:"DELETE",
                url: "/kcomments/"+c_no+"?k_no="+k_no,
                success:function(result) {
                    showList(k_no)
                },
                error:function(){
                    alert("삭제 실패")
                }
            });
        });


        /* '수정'버튼 - 댓글 수정 할 수 있게 활성화 */
        let currComment =""; // 댓글 수정 버튼 누르면 기존값 저장해놨다가, 취소 눌렀을때 원상복귀 시킬때 쓸 변수
        $(document).on('click','.btn_comment_modify',function(){
            console.log("수정 버튼")

            // 해당 댓글 수정 가능하도록 활성화 - 등록, 취소 버튼 나타남
            let el = $(this).parent().prev().find('.comment_title');
            currComment = el.val(); // 나중에 취소 누르면 currComment 값으로 다시 복귀 시킬거임
            console.log("currComment1: " + currComment)
            el.attr("readonly", false);
            el.addClass('active_comment_edit');
            el.select(); //focus(): 커서만 들어가고 , select는 글자 다 잡은 상태로 줌.

            $(this).parent().children('.btn_comment').toggleClass('displayNone');
        });

        /* '취소'버튼 - 수정 취소 버튼 */
        $(document).on('click','.btn_comment_edit_cancel',function() {
            let el = $(this).parent().prev().find('.comment_title');
            el.attr("readonly", true);
            el.removeClass('active_comment_edit');
            el.val(currComment); // 원래 값으로 복원 시킴
            console.log("currComment2: " + currComment)

            $(this).parent().children('.btn_comment').toggleClass('displayNone');
        });

        /* '등록'버튼 - 댓글 수정 */
        $(document).on('click','.btn_comment_edit_submit',function() {

            let c_no = $(this).parent().attr("data-c_no");
            let k_no = $(this).parent().attr("data-k_no");
            let c_regdate = $(this).parent().attr("data-c_regdate");
            let c_update = $(this).parent().attr("data-c_update");
            let el = $(this).parent().prev().find('.comment_title');
            let c_content = el.val();

            console.log("c_no: "+c_no+", k_no: "+k_no+", c_content: "+ c_content);

            $.ajax({
                type:'PATCH',       // 요청 메서드
                url: '/kcomments/'+c_no,  // 요청 URI - Ex17_CommentController 의 맵핑 "/comments/{cno}"가 받음
                headers : { "content-type": "application/json" }, // 요청 헤더
                //dataType : 'json', // 전송받을 데이터의 타입
                data : JSON.stringify({c_no:c_no, c_content:c_content ,k_no:k_no, c_regdate:c_regdate}),  // 서버로 전송할 데이터. stringify()로 직렬화 필요.
                success : function(result){
                    alert("received="+result);       // result는 서버가 전송한 데이터
                    showList(k_no);
                },
                error   : function(){ alert("error") } // 에러가 발생했을 때, 호출될 함수
            });
        });

        // 답글 버튼 눌렀을 때
        $(document).on('click', '.btn_comment_reply', function (){
            let parent_c_no = $(this).parent().attr("data-c_no");


            $('#popup_comment').toggleClass('display_none');
            // $('#popup_comment').toggleClass('position_fixed').
            $('#btn_submit_comment_reply').attr("data-parent_c_no", parent_c_no)

        })

        // 답글 취소 버튼 눌렀을 때
           $(document).on('click', '.btn_comment_edit_cancel_reply', function ()
           {
               $('#popup_comment').toggleClass('display_none');
           })


        // 답글 작성 버튼 눌렀을 때
        $(document).on('click', '#btn_submit_comment_reply', function(){
            let c_content = $('#txt_comment_reply').val().trim();
            console.log(c_content)
            let parent_c_no = $(this).attr("data-parent_c_no")

            if(c_content=="") {
                alert("입력해");
                $('#txt_comment_reply').focus();
                return;
            }
            $.ajax({
                type:'POST',
                url:"/kcomments?k_no="+k_no,
                headers: {"content-type":"application/json"},
                data:JSON.stringify({k_no:k_no, c_content:c_content , parent_c_no:parent_c_no}),
                // data: {"comment":comment},
                // dataType: 'json',
                success:function(result){
                    console.log("result: " + result)
                    console.log(33333333333)
                    $('#txt_comment_reply').val(""); // 댓글 쓴 부분 빈칸으로 초기화 하기
                    showList(k_no);
                    $('#popup_comment').toggleClass('display_none');

                },
                error:function(request, status, error){
                    console.log(request.status);
                    console.log(request.responseText);
                    console.log(error);

                    alert("등록 실패 - 관리자에게 문의하세요")
                }
            });
        });

        $(document).on('keydown','#txt_comment_reply', function (e){
            if(e.keyCode==13){
                $('#btn_submit_comment_reply').trigger('click')
            }

        })




    })




</script>


</body>
</html>
