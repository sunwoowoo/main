$(document).ready(function(){
    // main_banner 자동 이동 
    let banner_img =0;
    let banner_img_lengh= $('.banner_img').length;
    let time= 2000;
    setInterval(banner_time , time);
    function banner_time(){
        $('.banner_img').eq(banner_img % banner_img_lengh).animate({
            right:'100%'
        } , 1000)
        $('.banner_img').eq((banner_img + 1) % banner_img_lengh).css({
            right:'-100%'
        } ).animate({
            right: 0
        } , 1000)
        banner_img=(banner_img + 1) % banner_img_lengh;
    }
    
    // sec1_main
    let sec1_num1
    $('.sec1_1a_box_click').click(function(){
        sec1_num1=1;
        if(sec1_num1=1){
            $('.sec1_main_L_2a_box').css({
                border: '0px solid'
            })
            $('.sec1_main_L_3a_box').css({
                border: '0px solid'
            })
            $('.sec1_main_L_4a_box').css({
                border: '0px solid'
            })
            $('.sec1_main_L_5a_box').css({
                border: '0px solid'
            })
            $('.sec1_main_L_1a_box').css({
                border: '1px solid'
            })
            $('.sec1_main_R_2').animate({
                right: '-100%'
            } , 100)
            $('.sec1_main_R_3').animate({
                right: '-100%'
            } , 100)
            $('.sec1_main_R_4').animate({
                right: '-100%'
            } , 100)
            $('.sec1_main_R_5').animate({
                right: '-100%'
            } , 100)
            $('.sec1_main_R_1').animate({
                right:0
            } , 300)
        }        
        console.log(this);
        console.log(sec1_num1);
    })
    $('.sec1_2a_box_click').click(function(){
        sec1_num1=2;
        if(sec1_num1=2){
            $('.sec1_main_L_1a_box').css({
                border: '0px solid'
            })
            $('.sec1_main_L_3a_box').css({
                border: '0px solid'
            })
            $('.sec1_main_L_4a_box').css({
                border: '0px solid'
            })
            $('.sec1_main_L_5a_box').css({
                border: '0px solid'
            })
            $('.sec1_main_R_1').animate({
                right: '-100%'
            } , 100)
            $('.sec1_main_R_3').animate({
                right: '-100%'
            } , 100)
            $('.sec1_main_R_4').animate({
                right: '-100%'
            } , 100)
            $('.sec1_main_R_5').animate({
                right: '-100%'
            } , 100)
            $('.sec1_main_L_2a_box').css({
                border: '1px solid'
            })
            $('.sec1_main_R_2').animate({
                right: 0
            } , 300)
        }      
        console.log(this);
        console.log(sec1_num1);
    })
    $('.sec1_3a_box_click').click(function(){
        sec1_num1=3;
        if(sec1_num1=3){
            $('.sec1_main_L_2a_box').css({
                border: '0px solid'
            })
            $('.sec1_main_L_1a_box').css({
                border: '0px solid'
            })
            $('.sec1_main_L_4a_box').css({
                border: '0px solid'
            })
            $('.sec1_main_L_5a_box').css({
                border: '0px solid'
            })
            $('.sec1_main_L_3a_box').css({
                border: '1px solid'
            })
            $('.sec1_main_R_2').animate({
                right: '-100%'
            } , 100)
            $('.sec1_main_R_1').animate({
                right: '-100%'
            } , 100)
            $('.sec1_main_R_4').animate({
                right: '-100%'
            } , 100)
            $('.sec1_main_R_5').animate({
                right: '-100%'
            } , 100)
            $('.sec1_main_R_3').animate({
                right:0
            } , 300)
        }      
        console.log(this);
        console.log(sec1_num1);
    })
    $('.sec1_4a_box_click').click(function(){
        sec1_num1=4;
        if(sec1_num1=4){
            $('.sec1_main_L_2a_box').css({
                border: '0px solid'
            })
            $('.sec1_main_L_3a_box').css({
                border: '0px solid'
            })
            $('.sec1_main_L_1a_box').css({
                border: '0px solid'
            })
            $('.sec1_main_L_5a_box').css({
                border: '0px solid'
            })
            $('.sec1_main_L_4a_box').css({
                border: '1px solid'
            })
            $('.sec1_main_R_2').animate({
                right: '-100%'
            } , 100)
            $('.sec1_main_R_3').animate({
                right: '-100%'
            } , 100)
            $('.sec1_main_R_1').animate({
                right: '-100%'
            } , 100)
            $('.sec1_main_R_5').animate({
                right: '-100%'
            } , 100)
            $('.sec1_main_R_4').animate({
                right:0
            } , 300)
        }      
        console.log(this);
        console.log(sec1_num1);
    })
    $('.sec1_5a_box_click').click(function(){
        sec1_num1=5;
        if(sec1_num1=5){
            $('.sec1_main_L_2a_box').css({
                border: '0px solid'
            })
            $('.sec1_main_L_3a_box').css({
                border: '0px solid'
            })
            $('.sec1_main_L_4a_box').css({
                border: '0px solid'
            })
            $('.sec1_main_L_1a_box').css({
                border: '0px solid'
            })
            $('.sec1_main_L_5a_box').css({
                border: '1px solid'
            })
            $('.sec1_main_R_2').animate({
                right: '-100%'
            } , 100)
            $('.sec1_main_R_3').animate({
                right: '-100%'
            } , 100)
            $('.sec1_main_R_4').animate({
                right: '-100%'
            } , 100)
            $('.sec1_main_R_1').animate({
                right: '-100%'
            } , 100)
            $('.sec1_main_R_5').animate({
                right:0
            } , 300)
        }      
        console.log(this);
        console.log(sec1_num1);
    })
    // sec4
    $(window).on('load', function() {
        setFlowBanner();
    })
    
    function setFlowBanner() {
        const $wrap = $('.flow_banner');
        const $list = $('.flow_banner .list');
        let wrapWidth = ''; //$wrap의 가로 크기
        let listWidth = ''; //$list의 가로 크기
        const speed = 92; //1초에 몇픽셀 이동하는지 설정
    
        //리스트 복제
        let $clone = $list.clone();
        $wrap.append($clone);
        flowBannerAct()
    
        //반응형 :: 디바이스가 변경 될 때마다 배너 롤링 초기화
        let oldWChk = window.innerWidth > 1279 ? 'pc' : window.innerWidth > 767 ? 'ta' : 'mo';
        $(window).on('resize', function() {
            let newWChk = window.innerWidth > 1279 ? 'pc' : window.innerWidth > 767 ? 'ta' : 'mo';
            if (newWChk != oldWChk) {
                oldWChk = newWChk;
                flowBannerAct();
            }
        });
    
        // sec4 배너 실행 
        function flowBannerAct() {
            if (wrapWidth != '') {
                $wrap.find('.list').css({
                    'animation': 'none'
                });
                $wrap.find('.list').slice(2).remove();
            }
            wrapWidth = $wrap.width();
            listWidth = $list.width();
    
 
            if (listWidth < wrapWidth) {
                const listCount = Math.ceil(wrapWidth * 2 / listWidth);
                for (let i = 2; i < listCount; i++) {
                    $clone = $clone.clone();
                    $wrap.append($clone);
                }
            }
            $wrap.find('.list').css({
                'animation': `${listWidth / speed}s linear infinite flowRolling`
            });
        }
    
        $wrap.on('mouseenter', function () {
            $wrap.find('.list').css('animation-play-state', 'paused');
        });
    
        $wrap.on('mouseleave', function () {
            $wrap.find('.list').css('animation-play-state', 'running');
        });
    }
})
// fixed_right 스크롤
$(window).scroll(function(){
    let body_top=$(window).scrollTop();
    let sec2= $('.sec2').offset().top;
    if( body_top + 100 >= sec2){
        $('.fixed_right').css({
            right: '20px'
        })
    }
    else{
        $('.fixed_right').css({
            right: '-10%'
        })
    }
})
// sec3 스크린
$(window).scroll(function(){
    let body_top=$(window).scrollTop();
    let sec3= $('.sec3').offset().top;
    if( body_top + 300 >= sec3){
        $('.sec3_main_box1').css({
            right:0
        })
        $('.sec3_main_box2').css({
            left:0
        })
    }
    else{
        $('.sec3_main_box1').css({
            right: '100%'
        })
        $('.sec3_main_box2').css({
            left: '100%'
        })
    }
})
// sec3 아래 클릭 시 위쪽  이미지 변경 
$(document).ready(function(){
    
    // 첫번째
    $('#sec3_j1').click(function(){
        $('.sec3_box_j2').animate({
            left: '-100%'
        } , 100)
        $('.sec3_box_j3').animate({
            left: '-100%'
        } , 100)
        $('.sec3_box_j1').animate({
            left: 0
        } , 100)
    })
    $('#sec3_j2').click(function(){
        $('.sec3_box_j1').animate({
            left: '-100%'
        } , 100)
        $('.sec3_box_j3').animate({
            left: '-100%'
        } , 100)
        $('.sec3_box_j2').animate({
            left: 0
        } , 100)
    })
    $('#sec3_j3').click(function(){
        $('.sec3_box_j1').animate({
            left: '-100%'
        } , 100)
        $('.sec3_box_j2').animate({
            left: '-100%'
        } , 100)
        $('.sec3_box_j3').animate({
            left: 0
        } , 100)
    })

    // 두번째 박스
    $('#sec3_j4').click(function(){
        $('.sec3_box_j5').animate({
            right: '-100%'
        } , 100)
        $('.sec3_box_j6').animate({
            right: '-100%'
        } , 100)
        $('.sec3_box_j4').animate({
            right: 0
        } , 100)
    })
    $('#sec3_j5').click(function(){
        $('.sec3_box_j4').animate({
            right:'-100%'
        } , 100)
        $('.sec3_box_j6').animate({
            right:'-100%'
        } , 100)
        $('.sec3_box_j5').animate({
            right: 0
        } , 100)
    })
    $('#sec3_j6').click(function(){
        $('.sec3_box_j4').animate({
            right:'-100%'
        } , 100)
        $('.sec3_box_j5').animate({
            right:'-100%'
        } , 100)
        $('.sec3_box_j6').animate({
            right: 0
        } , 100)
    })
})
// sec3 위쪽 색깔 클릭시 배경 바꾸기 box 1
$(document).ready(function(){
    $('#sec3_color_img1').click(function(){
        $('.sec3_box_111_img').css({
            background: 'url(https://assets.hermes.com/is/image/hermesproduct/kelly-men-%EB%B8%8C%EB%A0%88%EC%9D%B4%EC%8A%AC%EB%A6%BF--703205FB5F-front-1-300-0-800-800_g.jpg) no-repeat center / cover'
        })
    })
    $('#sec3_color_img2').click(function(){
        $('.sec3_box_111_img').css({
            background: 'url(https://assets.hermes.com/is/image/hermesproduct/rivale-mini-%EB%B8%8C%EB%A0%88%EC%9D%B4%EC%8A%AC%EB%A6%BF--011112CD0R-worn-1-0-0-800-800_g.jpg) no-repeat center / cover'
        })
    })
    $('#sec3_color_img3').click(function(){
        $('.sec3_box_111_img').css({
            background: 'url(https://assets.hermes.com/is/image/hermesproduct/rivale-mini-%EB%B8%8C%EB%A0%88%EC%9D%B4%EC%8A%AC%EB%A6%BF--081181CD0S-worn-1-0-0-800-800_g.jpg) no-repeat center / cover'
        })
    })
    $('#sec3_color_img4').click(function(){
        $('.sec3_box_111_img').css({
            background: 'url(https://assets.hermes.com/is/image/hermesproduct/rivale-mini-%EB%B8%8C%EB%A0%88%EC%9D%B4%EC%8A%AC%EB%A6%BF--081181CD0X-front-wm-2-0-0-800-800_g.jpg) no-repeat center / cover'
        })
    })
    $('#sec3_color_img5').click(function(){
        $('.sec3_box_111_img').css({
            background: 'url(https://assets.hermes.com/is/image/hermesproduct/rivale-mini-%EB%B8%8C%EB%A0%88%EC%9D%B4%EC%8A%AC%EB%A6%BF--081181CD8U-front-wm-2-0-0-800-800_g.jpg) no-repeat center / cover'
        })
    })
    $('#sec3_color_img6').click(function(){
        $('.sec3_box_112_img').css({
            background: 'url(https://assets.hermes.com/is/image/hermesproduct/olympe-%EB%A7%81-%EB%9D%BC%EC%A7%80-%EB%AA%A8%EB%8D%B8--500059FC18-worn-1-0-0-800-800_g.jpg) no-repeat center / cover'
        })
    })
    $('#sec3_color_img7').click(function(){
        $('.sec3_box_112_img').css({
            background: 'url(https://assets.hermes.com/is/image/hermesproduct/olympe-%EB%A7%81-%EB%9D%BC%EC%A7%80-%EB%AA%A8%EB%8D%B8--500059FC89-worn-1-0-0-800-800_g.jpg) no-repeat center / cover'
        })
    })
    $('#sec3_color_img8').click(function(){
        $('.sec3_box_112_img').css({
            background: 'url(https://assets.hermes.com/is/image/hermesproduct/olympe-%EB%A7%81-%EB%9D%BC%EC%A7%80-%EB%AA%A8%EB%8D%B8--500059FCN5-front-wm-2-0-0-800-800_g.jpg) no-repeat center / cover'
        })
    })
    $('#sec3_color_img9').click(function(){
        $('.sec3_box_113_img').css({
            background: 'url(https://assets.hermes.com/is/image/hermesproduct/olympe-%EB%B8%8C%EB%A0%88%EC%9D%B4%EC%8A%AC%EB%A6%BF--010678CC73-worn-1-0-0-800-800_g.jpg) no-repeat center / cover'
        })
    })
    $('#sec3_color_img10').click(function(){
        $('.sec3_box_113_img').css({
            background: 'url(https://assets.hermes.com/is/image/hermesproduct/olympe-%EB%B8%8C%EB%A0%88%EC%9D%B4%EC%8A%AC%EB%A6%BF--010678CC65-worn-1-0-0-800-800_g.jpg) no-repeat center / cover'
        })
    })
    $('#sec3_color_img11').click(function(){
        $('.sec3_box_113_img').css({
            background: 'url(https://assets.hermes.com/is/image/hermesproduct/olympe-%EB%B8%8C%EB%A0%88%EC%9D%B4%EC%8A%AC%EB%A6%BF--011062CCP9-worn-1-0-0-800-800_g.jpg) no-repeat center / cover'
        })
    })
    $('#sec3_color_img12').click(function(){
        $('.sec3_box_113_img').css({
            background: 'url(https://assets.hermes.com/is/image/hermesproduct/olympe-%EB%B8%8C%EB%A0%88%EC%9D%B4%EC%8A%AC%EB%A6%BF--010736CC75-front-wm-2-0-0-800-800_g.jpg) no-repeat center / cover'
        })
    })
    $('#sec3_color_img13').click(function(){
        $('.sec3_box_113_img').css({
            background: 'url(https://assets.hermes.com/is/image/hermesproduct/olympe-%EB%B8%8C%EB%A0%88%EC%9D%B4%EC%8A%AC%EB%A6%BF--500180FC37-front-wm-2-0-0-800-800_g.jpg) no-repeat center / cover'
        })
    })
})
// sec3 위쪽 색깔 클릭시 배경 바꾸기 box 2
$(document).ready(function(){
    $('#sec3_color_img21').click(function(){
        $('.sec3_box_211_img').css({
            background: 'url(https://assets.hermes.com/is/image/hermesproduct/chaine-d-ancre-%EB%B0%B0%EC%A7%80--500262FK0Z-front-wm-2-0-0-800-800_g.jpg) no-repeat center / cover'
        })
    })
    $('#sec3_color_img22').click(function(){
        $('.sec3_box_211_img').css({
            background:'url(https://assets.hermes.com/is/image/hermesproduct/chaine-d-ancre-%EB%B0%B0%EC%A7%80--500262FK0X-front-wm-2-0-0-800-800_g.jpg) no-repeat center / cover'
        })
    })
    $('#sec3_color_img23').click(function(){
        $('.sec3_box_211_img').css({
            background: 'url(https://assets.hermes.com/is/image/hermesproduct/chaine-d-ancre-%EB%B0%B0%EC%A7%80--500262FKS3-front-wm-2-0-0-800-800_g.jpg) no-repeat center / cover'
        })
    })
    $('#sec3_color_img24').click(function(){
        $('.sec3_box_211_img').css({
            background: 'url(https://assets.hermes.com/is/image/hermesproduct/chaine-d-ancre-%EB%B0%B0%EC%A7%80--500262FK7U-front-wm-2-0-0-800-800_g.jpg) no-repeat center / cover'
        })
    })
    $('#sec3_color_img25').click(function(){
        $('.sec3_box_212_img').css({
            background: 'url(https://assets.hermes.com/is/image/hermesproduct/loop-%EC%9D%B4%EC%96%B4%EB%A7%81-%EC%8A%A4%EB%AA%B0-%EB%AA%A8%EB%8D%B8--010716CA9R-worn-1-0-0-800-800_g.jpg) no-repeat center / cover'
        })
    })
    $('#sec3_color_img26').click(function(){
        $('.sec3_box_212_img').css({
            background: 'url(https://assets.hermes.com/is/image/hermesproduct/loop-%EC%9D%B4%EC%96%B4%EB%A7%81-%EC%8A%A4%EB%AA%B0-%EB%AA%A8%EB%8D%B8--010716CA37-worn-1-0-0-800-800_g.jpg) no-repeat center / cover'
        })
    })
    $('#sec3_color_img27').click(function(){
        $('.sec3_box_212_img').css({
            background: 'url(https://assets.hermes.com/is/image/hermesproduct/loop-%EC%9D%B4%EC%96%B4%EB%A7%81-%EC%8A%A4%EB%AA%B0-%EB%AA%A8%EB%8D%B8--010716CA55-worn-1-0-0-800-800_g.jpg) no-repeat center / cover'
        })
    })
    $('#sec3_color_img28').click(function(){
        $('.sec3_box_212_img').css({
            background: 'url(https://assets.hermes.com/is/image/hermesproduct/loop-%EC%9D%B4%EC%96%B4%EB%A7%81-%EC%8A%A4%EB%AA%B0-%EB%AA%A8%EB%8D%B8--010716CA76-worn-1-0-0-800-800_g.jpg) no-repeat center / cover'
        })
    })
    $('#sec3_color_img29').click(function(){
        $('.sec3_box_213_img').css({
            background: 'url(https://assets.hermes.com/is/image/hermesproduct/fusion-amulette-kelly-%ED%8E%9C%EB%8D%98%ED%8A%B8-%EB%9D%BC%EC%A7%80-%EB%AA%A8%EB%8D%B8--057119FD04-worn-1-0-0-800-800_g.jpg) no-repeat center / cover'
        })
    })
    $('#sec3_color_img30').click(function(){
        $('.sec3_box_213_img').css({
            background: 'url(https://assets.hermes.com/is/image/hermesproduct/fusion-amulette-kelly-%ED%8E%9C%EB%8D%98%ED%8A%B8-%EB%9D%BC%EC%A7%80-%EB%AA%A8%EB%8D%B8--057119FD01-worn-1-0-0-800-800_g.jpg) no-repeat center / cover'
        })
    })
    $('#sec3_color_img31').click(function(){
        $('.sec3_box_213_img').css({
            background: 'url(https://assets.hermes.com/is/image/hermesproduct/fusion-amulette-kelly-%ED%8E%9C%EB%8D%98%ED%8A%B8-%EB%9D%BC%EC%A7%80-%EB%AA%A8%EB%8D%B8--057119FD02-worn-1-0-0-800-800_g.jpg) no-repeat center / cover'
        })
    })
})