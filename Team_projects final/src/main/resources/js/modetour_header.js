window.onload=function() {
    let mini_logo = document.getElementsByClassName('mini_header_logo')[0];
    let meau_list = document.getElementsByClassName('all_menu_list')[0];
    let ham_box = document.getElementsByClassName('ham_box')[0];
    let x_btn = document.getElementsByClassName('x_btn')[0];
    let ham_txt = document.getElementsByClassName('ham_txt');
    let ham_title = document.getElementsByClassName('ham_title')[0];

    let korea_txt =  document.getElementsByClassName('ham_korea_box')[0];
    let ham_commu =  document.getElementsByClassName('ham_commu_box')[0];


    let up_search = document.getElementsByClassName('header_search_box')[0];
    let mini_search = document.getElementsByClassName('mini_header_search')[0];



    function move_resize() {
        if(window.innerWidth <= 900  ||  window.innerWidth >= 700) {
            mini_logo.addEventListener('click' , function(){
                meau_list.classList.toggle('display')
            })



        }

        if(window.innerWidth < 700){
            meau_list.style.display="none"
            up_search.classList.add('down_move')
            up_search.style.display="none"



            mini_logo.addEventListener('click' , function(){
                document.getElementsByTagName('body')[0].style.overflow="hidden"
                mini_logo.style. pointerEvents="none"
                ham_commu.style.display="none"


                ham_box.animate([
                        {    left: `-100%`,},
                        {    left: `0px`,},
                    ],
                    {
                        duration:1000,
                        fill: "forwards",
                    });

            })
            x_btn.addEventListener('click' , function(){
                document.getElementsByTagName('body')[0].style.overflow="auto"
                mini_logo.style. pointerEvents="visible"
                ham_box.animate([
                        {    left: `0`,},
                        {    left: `-100%`,},
                    ],
                    {
                        duration:1000,
                        fill: "forwards",
                    });

            })
        }
    }

    move_resize()



    window.addEventListener('resize' , ()=> {
        move_resize()
    })


    ham_txt[0].addEventListener('click' , function(){
        korea_txt.style.display="none"
        ham_commu.style.display="none"
        for (let i = 0; i <2 ; i++) {
            ham_txt[i].style.borderBottom="0"
        }

        ham_txt[0].style.borderBottom="2px solid"
        korea_txt.style.display="flex"


    })
    ham_txt[1].addEventListener('click' , function(){
        korea_txt.style.display="none"
        ham_commu.style.display="none"
        for (let i = 0; i <2 ; i++) {
            ham_txt[i].style.borderBottom="0"

        }
        ham_txt[1].style.borderBottom="2px solid"
        ham_commu.style.display="flex"

    })



    $('.btn_top').click(function(){
        $( 'html, body').animate({
            scrollTop: 0
        }, 600)
    })



}












