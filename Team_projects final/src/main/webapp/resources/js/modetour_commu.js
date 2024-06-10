let heart = document.getElementsByClassName('commu_heart');
let heart_logo = document.getElementsByClassName('cik_heart');

let cik_prefer = document.getElementsByClassName('cik_prefer')[0];

let prefer_box = document.getElementsByClassName('prefer_box')[0];



for (let i = 0; i < heart.length; i++) {
    heart[i].addEventListener('click' , function(){
        heart_logo[i].classList.toggle('img_act')

        if(heart_logo[i].classList.contains('img_act')){
            heart_logo[i].src="./img/logo/b_heart.png"
        }else{
            heart_logo[i].src="./img/logo/heart.png"
        }
    })
}



cik_prefer.addEventListener('click' , function(){
    prefer_box.classList.toggle("display")
})


