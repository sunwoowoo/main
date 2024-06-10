$(window).scroll(function(){
    let body_top=$(window).scrollTop();
    let main= $('main').offset().top;
    let sec1= $('.home').offset().top;
    let sec2= $('.about').offset().top;
    let sec3= $('.skill').offset().top;
    let sec4= $('.potfolio').offset().top;
    let sec5= $('.contact').offset().top;
    if(body_top + 100>= sec1){
        $('.h').css({
            color: 'rgb(32, 0, 241)'
        })
        $('.a').css({
            color: 'slateblue'
        })
        $('.s').css({
            color: 'slateblue'
        })
        $('.p').css({
            color: 'slateblue'
        })
        $('.c').css({
            color: 'slateblue'
        })
    }
    else{
        $('.h').css({
            color: 'slateblue'
        })
    }
    if(body_top + 100>= sec2){
        $('.a').css({
            color: 'rgb(32, 0, 241)'
        })
        $('.h').css({
            color: 'slateblue'
        })
        $('.s').css({
            color: 'slateblue'
        })
        $('.p').css({
            color: 'slateblue'
        })
        $('.c').css({
            color: 'slateblue'
        })
    }
    if(body_top + 100>= sec3){
        $('.s').css({
            color: 'rgb(32, 0, 241)'
        })
        $('.h').css({
            color: 'slateblue'
        })
        $('.a').css({
            color: 'slateblue'
        })
        $('.p').css({
            color: 'slateblue'
        })
        $('.c').css({
            color: 'slateblue'
        })
    }
    if(body_top + 100>= sec4){
        $('.p').css({
            color: 'rgb(32, 0, 241)'
        })
        $('.h').css({
            color: 'slateblue'
        })
        $('.a').css({
            color: 'slateblue'
        })
        $('.s').css({
            color: 'slateblue'
        })
        $('.c').css({
            color: 'slateblue'
        })
    }
    if(body_top + 300>= sec5){
        $('.c').css({
            color: 'rgb(32, 0, 241)'
        })
        $('.h').css({
            color: 'slateblue'
        })
        $('.a').css({
            color: 'slateblue'
        })
        $('.p').css({
            color: 'slateblue'
        })
        $('.').css({
            color: 'slateblue'
        })
    }
})
$(document).ready(function($) {
    $(".scroll_move").click(function(event){
        console.log(".scroll_move");
        event.preventDefault();
        $('html,body').animate({scrollTop:$($(this).attr('href')).offset().top - 100}, 500);
    });
    console.log(this);
});