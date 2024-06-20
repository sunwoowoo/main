
    let heart = document.getElementsByClassName('pick_heart');
    let heart_logo = document.getElementsByClassName('cik_heart');

    let hide_box = document.getElementsByClassName('hide_select_cate_box')[0];

    let select_cate = document.getElementsByClassName('select_cate')[0];


    // select_cate.addEventListener('click', function () {
    //     hide_box.classList.toggle("display")
    // })


// let inner_num = document.getElementsByClassName('inner_num');
//
// for (let i = 0; i < inner_num.length; i++) {
//     inner_num[i].addEventListener('click' , ()=> {
//         for (let j = 0; j < inner_num.length; j++) {
//             inner_num[j].style.color="black"
//             inner_num[j].style.fontWeight="normal"
//         }
//         inner_num[i].style.color="#028267"
//         inner_num[i].style.fontWeight="900"
//
//     })
// }

// let korea_box = document.getElementsByClassName('korea_hide_box');
// let korea_btn = document.getElementsByClassName('korea_select');
// let hide_x = document.getElementsByClassName('korea_hide_x');
//
//
// for (let i = 0; i < korea_btn.length; i++) {
//     korea_btn[i].addEventListener('click' , ()=> {
//         if(korea_btn[i].classList.contains('korea_color')){
//             korea_box[i].style.display="none"
//             korea_btn[i].style.border="1px solid"
//             korea_btn[i].classList.remove('korea_color')
//
//             korea_box[i].style.display="none"
//         }else{
//             for (let j = 0; j < korea_box.length; j++) {
//                 korea_box[j].style.display="none"
//                 korea_btn[j].style.border="1px solid"
//                 korea_btn[j].classList.remove('korea_color')
//             }
//
//             korea_box[i].style.display="flex"
//             korea_btn[i].style.border="2px solid #028267"
//             korea_btn[i].classList.add('korea_color')
//         }
//     })
// }
//
//
//     for (let i = 0; i < hide_x.length; i++) {
//         hide_x[i].addEventListener('click', () => {
//             korea_box[i].style.display = "none"
//             korea_btn[i].style.border = "1px solid"
//             korea_btn[i].classList.remove('korea_color')
//         })
//     }


// let  link_txt = document.getElementsByClassName('link_korea_txt');
// let  area_button = document.getElementsByClassName('area_button');
// let  select_box = document.getElementsByClassName('korea_hide_txt');
let link_area = document.getElementsByClassName('link_area');
// let  confirm_btn =  document.getElementsByClassName('korea_hide_x');
let link_area2  = document.getElementsByClassName('link_area2');
//
// for (let i = 0; i < area_button.length; i++) {
//     area_button[i].addEventListener('click' , ()=> {
//         for (let j = 0; j < area_button.length; j++) {
//             area_button[j].classList.remove('korea_act')
//         }
//         area_button[i].classList.toggle('korea_act')
//
//         if(area_button[i].classList.contains('korea_act')){
//             for (let j = 0; j < select_box.length; j++) {
//                 select_box[j].style.display="none"
//             }
//             select_box[i].style.display="flex"
//         }
//     })
// }
// for (let i = 0; i < link_txt.length; i++) {
//     link_txt[i].addEventListener('click' , ()=> {
//         for (let j = 0; j < link_txt.length; j++) {
//             link_txt[j].classList.remove('korea_act')
//         }
//
//         link_txt[i].classList.toggle('korea_act')
//     })
// }
// for (let i = 0; i < confirm_btn.length; i++) {
//     confirm_btn[i].addEventListener('click' , ()=> {
//         for (let j = 0; j < link_txt.length; j++) {
//             if(link_txt[j].classList.contains('korea_act')) {
//                 const save_txt = link_txt[j].innerText
//                 console.log(save_txt)
//
//                 link_area[0].innerText=`${save_txt}`
//             }
//         }
//         for (let j = 0; j < area_button.length; j++) {
//             if(area_button[j].classList.contains('korea_act')) {
//                 const save_txt2 = area_button[j].innerText
//                 console.log(save_txt2)
//
//                 link_area2[0].innerText=`${save_txt2}`
//             }
//         }
//
//
//     })
//
// }


// let tmma_type = document.getElementsByClassName('tmma_type');
//
//
// for (let i = 0; i < tmma_type.length; i++) {
//     tmma_type[i].addEventListener('click' , ()=> {
//         if(tmma_type[i].classList.contains('search_act')){
//             tmma_type[i].classList.remove('search_act')
//         }else{
//             for (let j = 0; j < tmma_type.length; j++) {
//                 tmma_type[j].classList.remove('search_act')
//             }
//             tmma_type[i].classList.toggle('search_act')
//         }
//
//
//     })
//
//
// }
/////////////

// let hide_cate = document.getElementsByClassName('hide_select_cate')
// let selected_cate =  document.getElementsByClassName('selected_cate')
//
// for (let i = 0; i < hide_cate.length; i++) {
//     hide_cate[i].addEventListener('click' , ()=> {
//         let cate_txt  = hide_cate[i].innerText
//         selected_cate[0].innerText=`${cate_txt}`
//
//         hide_box.classList.remove('display')
//     })
//
//
// }

    // let reset = document.getElementsByClassName('korea_hide_reset')[0];
    // let korea_start = document.getElementsByClassName('start')[0];
    // let korea_end = document.getElementsByClassName('end')[0];
    //
    // reset.addEventListener('click', () => {
    //     korea_end.innerText = ""
    //     korea_start.innerText = ""
    //     link_area[0].innerText = ""
    //     link_area2[0].innerText = ""
    // })


// 달력


    $('.korea_hide_x').eq(1).click(function () {
        let demo = document.getElementById('demo').value;
        let  trim_box = demo.trim();
        let trim_txt = trim_box.split('~' , 2 )

        $('.link_date').eq(0).text("")
        $('.link_date').eq(1).text("")
        $('.link_date').eq(0).text(`${trim_txt[0]}`)
        $('.link_date').eq(1).text(`${trim_txt[1]}`)

    })

