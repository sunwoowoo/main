const MainSwiper = new Swiper('.swiper-container', {
    slidesPerView : '1', // 한 슬라이드에 보여줄 갯수
    spaceBetween : 0, // 슬라이드 사이 여백
    loop : true, // 슬라이드 반복 여부
    loopAdditionalSlides : 1, // 슬라이드 반복 시 마지막 슬라이드에서 다음 슬라이드가 보여지지 않는 현상 수정
    pagination : false, // pager 여부
    autoplay :  {delay: 3000,
                disableOnInteraction :false},
    navigation:false
})

const SubSwiper = new Swiper('.swiper-container2', {
    slidesPerView : '1', // 한 슬라이드에 보여줄 갯수
    spaceBetween : 0, // 슬라이드 사이 여백
    slidesPerGroup: 1, 
    loop : true, // 슬라이드 반복 여부
    loopAdditionalSlides : 1, // 슬라이드 반복 시 마지막 슬라이드에서 다음 슬라이드가 보여지지 않는 현상 수정
    pagination : false, // pager 여부
    autoplay :{  // 자동 슬라이드 설정 , 비 활성화 시 false
        delay : 3000,
        disableOnInteraction :false
      },
    navigation: {   
        nextEl: '.right_btn',
        prevEl: '.left_btn',
    },
})

MainSwiper.controller.control = SubSwiper;
SubSwiper.controller.control = MainSwiper;


let swiper_box = document.getElementsByClassName('swiper-container2')[0];

swiper_box.addEventListener('mouseenter' , ()=> {
    MainSwiper.autoplay.stop();
    SubSwiper.autoplay.stop();
})
swiper_box.addEventListener('mouseleave' , ()=> {
    MainSwiper.autoplay.start();
    SubSwiper.autoplay.start();
})





////////////////////// 
let box_count = $('.recommend_trip_imf').length;
let box_w =  $('.recommend_trip_imf').outerWidth() + 19 ;
let bang = 0;

for (let i = 0; i < box_count; i++) {
    $('.recommend_trip_imf').eq(i).css({left: (box_w * i) + 1})
}


$(window).resize(function(){
    let box_w =  $('.recommend_trip_imf').outerWidth() + 19;

    for (let i = 0; i < box_count; i++) {
        $('.recommend_trip_imf').eq((i+bang) % box_count).css({left: box_w * i})
    }
})


$('.recommend_right_btn').click(function(){
    let box_w =  $('.recommend_trip_imf').outerWidth() + 19 ;
    $('.recommend_trip_imf').animate({left: `-=${box_w}`}, 500) 
            
    $('.recommend_trip_imf').eq(bang % box_count).animate({left: box_w * (box_count - 1)}, 0) 
    bang+=1;
})
$('.recommend_left_btn').click(function(){
    let box_w =  $('.recommend_trip_imf').outerWidth() + 19 ;
    
    $('.recommend_trip_imf').eq((bang - 1) %  box_count).animate({left: -box_w }, 0) 


    $('.recommend_trip_imf').animate({left: `+=${box_w}`}, 500) 
    bang-=1;
})





    // 프리펄 부분 
    let prefer_box = document.getElementsByClassName('prefer_swiper_box');
    let img_box = document.getElementsByClassName('prefer_img_box');


    img_box[0].style.backgroundColor="rgba(0, 156, 117, 0.3)"
    img_box[0].style.pointerEvents="none"
    prefer_box[0].classList.add('prefer_fis_back');


for (let i = 0; i < img_box.length; i++) {
    img_box[i].addEventListener('click', function() {

        if( prefer_box[0].classList.contains('prefer_fis_back')){
            prefer_box[0].classList.remove('prefer_fis_back');
            prefer_box[0].classList.add('prefer_fis_go');
            img_box[0].style.pointerEvents="auto"
        }else{
            prefer_box[0].classList.remove('prefer_fis_go');
        }

        for (let j = 0; j < img_box.length; j++) {
            if (prefer_box[j].classList.contains('prefer_back')) {
                prefer_box[j].classList.add('prefer_go');

                prefer_box[j].classList.remove('prefer_back');
                img_box[j].style.backgroundColor="black"
            } else {
                prefer_box[j].classList.remove('prefer_go');
                img_box[j].style.backgroundColor="black"
            }
        }

        if (prefer_box[i].classList.contains('prefer_go')) {
            prefer_box[i].classList.remove('prefer_go');
        }
        prefer_box[i].classList.add('prefer_back');
        img_box[i].style.backgroundColor="rgba(0, 156, 117, 0.3)"
    });
}














//  스크롤 시 옆에서 들어옴

let opci_box = document.getElementsByClassName('move_content_box')
let opci_img = document.getElementsByClassName('move_content')[0];
let content_top = opci_box[0].getBoundingClientRect().top - 500


if (window.scrollY > content_top || opci_img.classList.contains('animate')) {
    console.log(window.scrollY > content_top  || opci_img.classList.contains('animate'))
        opci_img.classList.add('animate');
}
window.addEventListener('scroll', ()=>{ 
        if (window.scrollY > content_top || opci_img.classList.contains('animate')) {
            console.log(window.scrollY > content_top  || opci_img.classList.contains('animate'))
            opci_img.classList.add('animate');
        }

});





$('.btn_top').click(function(){
    $( 'html, body').animate({
        scrollTop: 0
    }, 600)
})




//  호버시 옆에서 들어오기 ~
let prefer_img = document.getElementsByClassName('prefer_img')
let black_pan = document.getElementsByClassName('black_pan')
let prefer_txt = document.getElementsByClassName('prefer_txt')

for (let i = 0; i < prefer_img.length; i++) {
    prefer_img[i].addEventListener('mouseenter' , ()=>{
        black_pan[i].animate([
            {width: `0`},
            {width: `100%`},
        ],{
            duration: 800,
            fill: "forwards"
        })
        prefer_txt[i].animate([
            {left: `-100%`},
            {left: `50%`},
        ],{
            duration: 800,
            fill: "forwards"
        })

    })



        prefer_img[i].addEventListener('mouseleave' , ()=>{
            black_pan[i].animate([
                {width: `100%`},
                {width: `0%`},
            ],{
                duration: 0,
                fill: "forwards"
            })
            prefer_txt[i].animate([
                {left: `50%`},
                {left: `-100%`},
            ],{
                duration: 0,
                fill: "forwards"
            })
    
        })
    

    
}
