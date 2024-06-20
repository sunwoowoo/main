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
            color: '#5A639C'
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
            color: '#5A639C'
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
            color: '#5A639C'
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
            color: '#5A639C'
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
            color: '#5A639C'
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
// abot div 효과
document.addEventListener("DOMContentLoaded", function() {
    showMain_1(1);
    var tag1 = document.getElementById('about_title_chk_tag1');
    tag1.style.background = '#7f8c8d';
    tag1.style.color = '#fff';
});
function showMain_1(num) {
    var mains = document.querySelectorAll('.about_title_chk');
    mains.forEach(function(main) {
        main.style.display = 'none';
    });
    var selectedMain = document.querySelector('.about_main_' + num);
    if (selectedMain) {
        selectedMain.style.display = 'block';
        selectedMain.style.width = '100%'; 
        selectedMain.style.height = '80%';
        selectedMain.style.background = '#c7ecee';
    }

    var tags = document.querySelectorAll('.about_title_chk_box > div');
    tags.forEach(function(tag) {
        tag.style.background = '#dfe6e9';
        tag.style.color = 'black';
    });

    var selectedTag = document.getElementById('about_title_chk_tag' + num);
    if (selectedTag) {
        selectedTag.style.background = '#7f8c8d'; 
        selectedTag.style.color = '#fff';
    }
}
