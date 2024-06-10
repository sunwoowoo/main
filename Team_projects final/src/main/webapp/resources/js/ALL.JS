//heander
$(window).scroll(function(){
    let body_top=$(window).scrollTop();
        let main= $('main').offset().top;
        let sec1= $('.sec1').offset().top;
        let sec2= $('.sec2').offset().top;
        let sec3= $('.sec3').offset().top;
        if(body_top - 100 >= main){
            $('header').css({
                position: "fixed",
                top: 0
            })
        }
        else{
            $('header').css({
                position: "sticky" 
            })
        }
        if(body_top + 200>= sec1){
            $('.header_list_1').css({
                color: 'red'
            })
            $('.header_list_2').css({
                color: '#fff'
            })
            $('.header_list_3').css({
                color: '#fff'
            })
        }
        else{
            $('.header_list_1').css({
                color: '#fff'
            })
        }
        if(body_top + 200>= sec2){
            $('.header_list_1').css({
                color: '#fff'
            })
            $('.header_list_2').css({
                color: 'red'
            })
            $('.header_list_3').css({
                color: '#fff'
            })
        }
        if(body_top + 200>= sec3){
            $('.header_list_1').css({
                color: '#fff'
            })
            $('.header_list_2').css({
                color: '#fff'
            })
            $('.header_list_3').css({
                color: 'red'
            })
        }
})
// heander_1
$(document).ready(function($) {
    $(".scroll_move").click(function(event){
        console.log(".scroll_move");         
        event.preventDefault();
        $('html,body').animate({scrollTop:$($(this).attr('href')).offset().top - 100}, 500);
    });
    console.log(this);
});
// main banner 슬라이드 자동 및 버튼
$(document).ready(function(){
    $('.main_baaner_box ').eq(0).css({opacity: 1, zIndex: 9})
    let main_baaner_box_length = $('.main_baaner_box ').length;
    for(let  i=0; i<main_baaner_box_length; i++){
        $('.line').append('<div class="line_list"></div>')
    }
    $('.line_list').eq(0).addClass('line_active');

    let main_baaner_num=0; 
    function slide1(){
        $('.line_list').removeClass('line_active')
        $('.line_list').eq((main_baaner_num + 1) % main_baaner_box_length).addClass('line_active')


        $('.main_baaner_box').eq(main_baaner_num % main_baaner_box_length).css({
            zIndex:1,
            transition: 'opacity 1s',
            opacity: 0,

        })

        $('.main_baaner_box').eq((main_baaner_num + 1) % main_baaner_box_length).css({
            zIndex:99,
            transition: 'opacity 1s',
            opacity: 1,
        })

        main_baaner_num = (main_baaner_num + 1) % main_baaner_box_length;
    }
    setInterval( slide1 , 5000)
    function slide2(e){
        $('.line_list').removeClass('line_active')
        $('.line_list').eq(e).addClass('line_active')


        $('.main_baaner_box').eq(main_baaner_num % main_baaner_box_length).css({
            zIndex:1,
            transition: 'opacity 1s',
            opacity: 0,

        })

        $('.main_baaner_box').eq(e).css({
            zIndex:99,
            transition: 'opacity 1s',
            opacity: 1,
        })

        main_baaner_num = e
    }
    $('.line_list').click(function(){
        if($('.line_active').index() != $(this).index()) {
            slide2($(this).index()) 
        }
    })
})
// sec1
$(document).ready(function(){
    $('.sec_1_L1').click(function(){
        sec1_num1=1;
        if(sec1_num1=1){
            $('.sec_1_R2').animate({
                right: '-100%'    
            } ,10)
            $('.sec_1_R3').animate({
                right: '-100%'    
            } ,10)
            $('.sec_1_R4').animate({
                right: '-100%'    
            } ,10)
            $('.sec_1_R1').animate({
                right: 0    
            } ,1000)
            $('.sec_1_L2').css({
                background: '#fff',
                color:'black'
            })
            $('.sec_1_L3').css({
                background: '#fff',
                color:'black'
            })
            $('.sec_1_L4').css({
                background: '#fff',
                color:'black'
            })
            $('.sec_1_L1').css({
                background: 'black',
                color:'#fff'
            })
        }
    })
    $('.sec_1_L2').click(function(){
        sec1_num1=2;
        if(sec1_num1=2){
            $('.sec_1_R1').animate({
                right: '-100%'    
            } , 10)
            $('.sec_1_R3').animate({
                right: '-100%'    
            } , 10)
            $('.sec_1_R4').animate({
                right: '-100%'   
            } , 10)
            $('.sec_1_R2').animate({
                right: 0   
            } , 1000)
            
            $('.sec_1_L1').css({
                background: '#fff',
                color:'black'
            })
            $('.sec_1_L2').css({
                background: '#fff',
                color:'black'
            })
            $('.sec_1_L3').css({
                background: '#fff',
                color:'black'
            })
            $('.sec_1_L2').css({
                background: 'black',
                color:'#fff'
            })
        }
    })
    $('.sec_1_L3').click(function(){
        sec1_num1=3;
        if(sec1_num1=3){
            $('.sec_1_R1').animate({
                right: '-100%'    
            } , 10)
            $('.sec_1_R2').animate({
                right: '-100%'    
            } , 10)
            $('.sec_1_R4').animate({
                right: '-100%'   
            } , 10)
            $('.sec_1_R3').animate({
                right: 0   
            } , 1000)
            
            $('.sec_1_L1').css({
                background: '#fff',
                color:'black'
            })
            $('.sec_1_L2').css({
                background: '#fff',
                color:'black'
            })
            $('.sec_1_L4').css({
                background: '#fff',
                color:'black'
            })
            $('.sec_1_L3').css({
                background: 'black',
                color:'#fff'
            })
        }
    })
    $('.sec_1_L4').click(function(){
        sec1_num1=4;
        if(sec1_num1=4){
            $('.sec_1_R1').animate({
                right: '-100%'    
            } , 10)
            $('.sec_1_R2').animate({
                right: '-100%'    
            } , 10)
            $('.sec_1_R3').animate({
                right: '-100%'   
            } , 10)
            $('.sec_1_R4').animate({
                right: 0   
            } , 1000)
            
            $('.sec_1_L1').css({
                background: '#fff',
                color:'black'
            })
            $('.sec_1_L2').css({
                background: '#fff',
                color:'black'
            })
            $('.sec_1_L3').css({
                background: '#fff',
                color:'black'
            })
            $('.sec_1_L4').css({
                background: 'black',
                color:'#fff'
            })
        }
    })
})
// sec2
$(document).ready(function(){
    $('.sec_2_L1').click(function(){
        sec1_num1=1;
        if(sec1_num1=1){
            $('.sec_2_R2').animate({
                right: '-100%'    
            } ,10)
            $('.sec_2_R3').animate({
                right: '-100%'    
            } ,10)
            $('.sec_2_R4').animate({
                right: '-100%'    
            } ,10)
            $('.sec_2_R1').animate({
                right: 0    
            } ,1000)
            $('.sec_2_L2').css({
                background: '#fff',
                color:'black'
            })
            $('.sec_2_L3').css({
                background: '#fff',
                color:'black'
            })
            $('.sec_2_L4').css({
                background: '#fff',
                color:'black'
            })
            $('.sec_2_L1').css({
                background: 'black',
                color:'#fff'
            })
        }
    })
    $('.sec_2_L2').click(function(){
        sec1_num1=2;
        if(sec1_num1=2){
            $('.sec_2_R1').animate({
                right: '-100%'    
            } , 10)
            $('.sec_2_R3').animate({
                right: '-100%'    
            } , 10)
            $('.sec_2_R4').animate({
                right: '-100%'   
            } , 10)
            $('.sec_2_R2').animate({
                right: 0   
            } , 1000)
            
            $('.sec_2_L1').css({
                background: '#fff',
                color:'black'
            })
            $('.sec_2_L2').css({
                background: '#fff',
                color:'black'
            })
            $('.sec_2_L3').css({
                background: '#fff',
                color:'black'
            })
            $('.sec_2_L2').css({
                background: 'black',
                color:'#fff'
            })
        }
    })
    $('.sec_2_L3').click(function(){
        sec1_num1=3;
        if(sec1_num1=3){
            $('.sec_2_R1').animate({
                right: '-100%'    
            } , 10)
            $('.sec_2_R2').animate({
                right: '-100%'    
            } , 10)
            $('.sec_2_R4').animate({
                right: '-100%'   
            } , 10)
            $('.sec_2_R3').animate({
                right: 0   
            } , 1000)
            
            $('.sec_2_L1').css({
            background: '#fff',
                color:'black'
            })
            $('.sec_2_L2').css({
            background: '#fff',
                color:'black'
            })
            $('.sec_2_L4').css({
            background: '#fff',
                color:'black'
            })
            $('.sec_2_L3').css({
                background: 'black',
                color:'#fff'
            })
        }
    })
    $('.sec_2_L4').click(function(){
        sec1_num1=4;
        if(sec1_num1=4){
            $('.sec_2_R1').animate({
                right: '-100%'    
            } , 10)
            $('.sec_2_R2').animate({
                right: '-100%'    
            } , 10)
            $('.sec_2_R3').animate({
                right: '-100%'   
            } , 10)
            $('.sec_2_R4').animate({
                right: 0   
            } , 1000)
            
            $('.sec_2_L1').css({
                background: '#fff',
                color:'black'
            })
            $('.sec_2_L2').css({
                background: '#fff',
                color:'black'
            })
            $('.sec_2_L3').css({
                background: '#fff',
                color:'black'
            })
            $('.sec_2_L4').css({
                background: 'black',
                color:'#fff'
            })
        }
    })
})
// sec3
$(document).ready(function(){
    $('.sec_3_L1').click(function(){
        sec1_num1=1;
        if(sec1_num1=1){
            $('.sec_3_R2').animate({
                right: '-100%'    
            } ,10)
            $('.sec_3_R3').animate({
                right: '-100%'    
            } ,10)
            $('.sec_3_R4').animate({
                right: '-100%'    
            } ,10)
            $('.sec_3_R1').animate({
                right: 0    
            } ,1000)
            $('.sec_3_L2').css({
                background: "#fff",
                color:'black'
            })
            $('.sec_3_L3').css({
                background: "#fff" ,
                color:'black'
            })
            $('.sec_3_L4').css({
                background: "#fff" ,
                color:'black'
            })
            $('.sec_3_L1').css({
                background: 'black',
                color:'#fff'
            })
        }
    })
    $('.sec_3_L2').click(function(){
        sec1_num1=2;
        if(sec1_num1=2){
            $('.sec_3_R1').animate({
                right: '-100%'    
            } , 10)
            $('.sec_3_R3').animate({
                right: '-100%'    
            } , 10)
            $('.sec_3_R4').animate({
                right: '-100%'   
            } , 10)
            $('.sec_3_R2').animate({
                right: 0   
            } , 1000)
            
            $('.sec_3_L1').css({
                background: "#fff" ,
                color:'black'
            })
            $('.sec_3_L2').css({
                background: "#fff" ,
                color:'black'
            })
            $('.sec_3_L3').css({
                background: "#fff" ,
                color:'black'
            })
            $('.sec_3_L2').css({
                background: 'black',
                color:'#fff'
            })
        }
    })
    $('.sec_3_L3').click(function(){
        sec1_num1=3;
        if(sec1_num1=3){
            $('.sec_3_R1').animate({
                right: '-100%'    
            } , 10)
            $('.sec_3_R2').animate({
                right: '-100%'    
            } , 10)
            $('.sec_3_R4').animate({
                right: '-100%'   
            } , 10)
            $('.sec_3_R3').animate({
                right: 0   
            } , 1000)
            
            $('.sec_3_L1').css({
                background: "#fff" ,
                color:'black'
            })
            $('.sec_3_L2').css({
                background: "#fff" ,
                color:'black'
            })
            $('.sec_3_L4').css({
                background: "#fff" ,
                color:'black'
            })
            $('.sec_3_L3').css({
                background: 'black',
                color:"#fff"
            })
        }
    })
    $('.sec_3_L4').click(function(){
        sec1_num1=4;
        if(sec1_num1=4){
            $('.sec_3_R1').animate({
                right: '-100%'    
            } , 10)
            $('.sec_3_R2').animate({
                right: '-100%'    
            } , 10)
            $('.sec_3_R3').animate({
                right: '-100%'   
            } , 10)
            $('.sec_3_R4').animate({
                right: 0   
            } , 1000)
            
            $('.sec_3_L1').css({
                background: "#fff" ,
                color:'black'
            })
            $('.sec_3_L2').css({
                background: "#fff" ,
                color:'black'
            })
            $('.sec_3_L3').css({
                background: "#fff" ,
                color:'black'
            })
            $('.sec_3_L4').css({
                background: 'black',
                color:"#fff"
            })
        }
    })
})
// 배너 32 이미지 확대
$('.banner_32_img_box').on("mousemove", function(e) {
    const width = $(window).width();
    const height = $(window).height();

    const moveX = (e.pageX - width / 2) / width;
    const moveY = (e.pageY - height / 2) / height;

    const backMoveX = -moveX * 30;
    const backMoveY = -moveY * 10;

    $('.banner_32_sw').css({
    transform: `translate(${backMoveX}px, ${backMoveY}px)`
    });
});