<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
    <script src="/resources/js/p4.js"></script>
    <link rel="stylesheet" href="/resources/css/p4.css">
<body>
<div id="menu">
    <div class="hamburger">
        <div class="line"></div>
        <div class="line"></div>
        <div class="line"></div>
    </div>
    <div class="menu-inner">

        <ul>
            <li><a href="<c:url value="/p1"/>">HOME</a></li>
            <li><a  class="scroll_move1">갤러리아</a></li>
            <li><a  class="scroll_move2">리에디션</a></li>
            <li><a  class="scroll_move3">썸머 백</a></li>
            <li><a  class="scroll_move4 ">클레오</a></li>
        </ul>
    </div>



    <svg version="1.1" id="blob">
        <path id="blob-path" d="M60,500H0V0h60c0,0,20,172,20,250S60,900,60,500z"/>
    </svg>
</div>
<div class="right_box">
    <div class="right_button">
        <button value="x" id="right_box_button">x</button>
    </div>
    <div class="right_box_1">
        <p>제품 상세정보</p>
        <p>우수성을 향한 끊임없는 노력은 프라다 DNA와 세련된 라인 및 고급 소재로 제작된 제품에 내재되어 있습니다. 우아하고 활용도 높은 프라다 갤러리아 백은 산업적 정밀함과 정교하고 세심한 장인정신을 깔끔하고 세련된 가죽 디자인에 담아냈습니다. 80여 개의 개별 피스를 수작업으로 조립한 3개의 수납공간이 있는 스타일로, 다면적이면서 보편성을 지니고 있어 항상 새로운 해석을 위한 완벽한 캔버스가 됩니다. 전체에 적용된 미니 스터드가 아이코닉한 액세서리에 개성과 유니크함을 더합니다.</p>

        <p>제품 코드: 1BA274_2CYS_F0018_V_YOB </p>
        <p>전체 미니 스터드 </p>
        <p>탈부착형 가죽 키링 </p>
        <p>외부 지퍼 포켓 </p>
        <p>높이: 22cm </p>
        <p>폭: 32cm </p>
        <p>길이: 13cm </p>
        <p>제조자명: Prada SpA</p>
        <p>수입자명: (유)프라다 코리아</p>
        <p>특별한 관리가 필요한 제품입니다. 관리법은 정보 를 참고하시기 바랍니다. 품질 보증 기간은 1년입니다. 자세한 사항은 이용 약관 을 참고하시기 바랍니다.</p>
    </div>
    <div class="right_box_2"><p>소재</p><p>가죽</p></div>
    <div class="right_box_3">
        <p>문의하기</p>
        <p>상품이나 주문관련 궁금한 점이 있으신 경우 ###-###-#### 고객 서비스센터로 전화하거나 FAQ를 참조하세요. 문의하기를 통해서도 도움을 받으실 수 있습니다.</p>
    </div>
</div>
<main>
    <!-- 1번 -->
    <div class="wrap">
        <div class="box box1" id="sec11"></div>
    </div>
    <div class="wrap">
        <div class="box">
            <h1> 스터드 장식 가죽 백</h1>
            <div class="box_cr">
                <div class="box_cr_color cr_1"></div>
                <div class="box_cr_color cr_2"></div>
                <div class="box_cr_color cr_3"></div>
            </div>
            <div class="list1">
            </div>
            <div class="list2">
                <p><a href="https://www.prada.com/kr/ko.html">매장찾기</a></p>
                <p class="list2_l">제품 상세 정보</p>
                <p class="list2_l">배송 정보</p>
                <div class="list2_1">
                    <div class="list2_2">
                        <button  onclick="minus1()">-</button>
                        <input type="text" value="0" id="txt_num1">
                        <button  onclick="plus1()">+</button>
                    </div>
                    <div>w <span id="price1">9,550,000</span></div>
                    <div>w <span id="fin_price1">0</span></div>
                </div>
            </div>
            <div class="list">장바구니에 추가하기</div>
        </div>
    </div>
    <!-- 2번 -->
    <div class="wrap">
        <div class="box box2" id="sec22"></div>
    </div>
    <div class="wrap">
        <div class="box">
            <h1>   2005 리나일론 백</h1>
            <div class="box_cr">
                <div class="box_cr_color cr_4"></div>
                <div class="box_cr_color cr_5"></div>
                <div class="box_cr_color cr_6"></div>
                <div class="box_cr_color cr_7"></div>
                <div class="box_cr_color cr_8"></div>

            </div>
            <div class="list1">
            </div>
            <div class="list2">
                <p><a href="https://www.prada.com/kr/ko.html">매장찾기</a></p>
                <p class="list2_l">제품 상세 정보</p>
                <p class="list2_l">배송 정보</p>
                <div class="list2_1">
                    <div class="list2_2">
                        <button  onclick="minus2()">-</button>
                        <input type="text" value="0" id="txt_num2">
                        <button onclick="plus2()">+</button>
                    </div>
                    <div>w <span id="price2"> 2,500,000 </span></div>
                    <div>w <span id="fin_price2">0</span></div>
                </div>
            </div>
            <div class="list">장바구니에 추가하기</div>
        </div>
    </div>
    <!-- 3번 -->
    <div class="wrap">
        <div class="box box3" id="sec33"></div>
    </div>
    <div class="wrap">
        <div class="box">
            <h1>크로셰 토트백</h1>
            <div class="box_cr">
                <div class="box_cr_color cr_9"></div>
                <div class="box_cr_color cr_10"></div>
            </div>
            <div class="list1">
            </div>
            <div class="list2">
                <p><a href="https://www.prada.com/kr/ko.html">매장찾기</a></p>
                <p class="list2_l">제품 상세 정보</p>
                <p class="list2_l">배송 정보</p>
                <div class="list2_1">
                    <div class="list2_2">
                        <button  onclick="minus3()">-</button>
                        <input type="text" value="0" id="txt_num3">
                        <button onclick="plus3()">+</button>
                    </div>
                    <div>w <span id="price3"> 2,600,000 </span></div>
                    <div>w <span id="fin_price3">0</span></div>
                </div>
            </div>
            <div class="list">장바구니에 추가하기</div>
        </div>
    </div>
    <!-- 4번 -->
    <div class="wrap">
        <div class="box box4" id="sec44"></div>
    </div>
    <div class="wrap">
        <div class="box">
            <h1>클레오 브러시드 가죽 숄더 백</h1>
            <div class="box_cr">
                <div class="box_cr_color cr_11"></div>
                <div class="box_cr_color cr_12"></div>
                <div class="box_cr_color cr_13"></div>
                <div class="box_cr_color cr_14"></div>
            </div>
            <div class="list1">
            </div>
            <div class="list2">
                <p><a href="https://www.prada.com/kr/ko.html">매장찾기</a></p>
                <p class="list2_l">제품 상세 정보</p>
                <p class="list2_l">배송 정보</p>
                <div class="list2_1">
                    <div class="list2_2">
                        <button  onclick="minus4()">-</button>
                        <input type="text" value="0" id="txt_num4">
                        <button onclick="plus4()">+</button>
                    </div>
                    <div>w <span id="price4"> 4,200,000 </span></div>
                    <div>w <span id="fin_price4">0</span></div>
                </div>
            </div>
            <div class="list">장바구니에 추가하기</div>
        </div>
    </div>
</main>
<script>
    // 1번
    let el_1qty = document.getElementById('txt_num1');
    let el_1ip = document.getElementById('price1');
    let el_1fp = document.getElementById('fin_price1')
    function plus1() {
        let curr_1qty = +(el_1qty.value) + 1;
        el_1qty.value = curr_1qty;

        el_1fp.innerText = (+(el_1ip.innerText.replaceAll(",","")) * curr_1qty).toLocaleString("ko")}
    function minus1() {
        if(el_1qty.value <= 0) {
            alert("x")
        }
        else {
            let curr_qty = +(el_1qty.value) - 1;
            el_1qty.value = curr_qty;
            el_1fp.innerText = ((+(el_1ip.innerText.replaceAll(",",""))) * curr_1qty).toLocaleString("ko")}}
    // 2번
    let el_2qty = document.getElementById('txt_num2');
    let el_2ip = document.getElementById('price2');
    let el_2fp = document.getElementById('fin_price2')
    function plus2() {
        let curr_2qty = +(el_2qty.value) + 1;
        el_2qty.value = curr_2qty;

        el_2fp.innerText = (+(el_2ip.innerText.replaceAll(",","")) * curr_2qty).toLocaleString("ko")}
    function minus2() {
        if(el_2qty.value <= 0) {
            alert("x")
        }
        else {

            let curr_qty = +(el_2qty.value) - 1 ;
            el_2qty.value = curr_qty;
            el_2fp.innerText = ((+(el_2ip.innerText.replaceAll(",",""))) * curr_2qty).toLocaleString("ko")}}
    // 3번
    let el_3qty = document.getElementById('txt_num3');
    let el_3ip = document.getElementById('price3');
    let el_3fp = document.getElementById('fin_price3')
    function plus3() {
        let curr_3qty = +(el_3qty.value) + 1;
        el_3qty.value = curr_3qty;

        el_3fp.innerText = (+(el_3ip.innerText.replaceAll(",","")) * curr_3qty).toLocaleString("ko")}
    function minus3() {
        if(el_3qty.value <= 0) {
            alert("x")
        }
        else {

            let curr_qty = +(el_3qty.value) - 1 ;
            el_3qty.value = curr_qty;
            el_3fp.innerText = ((+(el_3ip.innerText.replaceAll(",",""))) * curr_3qty).toLocaleString("ko")}}
    // 4번
    let el_4qty = document.getElementById('txt_num4');
    let el_4ip = document.getElementById('price4');
    let el_4fp = document.getElementById('fin_price4')
    function plus4() {
        let curr_4qty = +(el_4qty.value) + 1;
        el_4qty.value = curr_4qty;

        el_4fp.innerText = (+(el_4ip.innerText.replaceAll(",","")) * curr_4qty).toLocaleString("ko")}
    function minus4() {
        if(el_4qty.value <= 0) {
            alert("x")
        }
        else {

            let curr_qty = +(el_4qty.value) - 1 ;
            el_4qty.value = curr_qty;
            el_4fp.innerText = ((+(el_4ip.innerText.replaceAll(",",""))) * curr_4qty).toLocaleString("ko")}}
</script>
</body>
</html>