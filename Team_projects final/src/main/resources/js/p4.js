// 전체 가로 스크롤
$(document).ready(function(){
    const scrollContainer = document.querySelector("main");

scrollContainer.addEventListener("wheel", (evt) => {
    evt.preventDefault();
    scrollContainer.scrollLeft += evt.deltaY;
});
})
//  왼쪽 메뉴판
$(window).load(function(){
    var height = window.innerHeight,
    x= 0, y= height/2,
    curveX = 10,
    curveY = 0,
    targetX = 0,
    xitteration = 0,
    yitteration = 0,
    menuExpanded = false;
    
    blob = $('#blob'),
    blobPath = $('#blob-path'),
  
    hamburger = $('.hamburger');
  
    $(this).on('mousemove', function(e){
      x = e.pageX;
      
      y = e.pageY;
    });
  
    $('.hamburger, .menu-inner').on('mouseenter', function(){
      $(this).parent().addClass('expanded');
      menuExpanded = true;
    });
  
    $('.menu-inner').on('mouseleave', function(){
      menuExpanded = false;
      $(this).parent().removeClass('expanded');
    });
  
    function easeOutExpo(currentIteration, startValue, changeInValue, totalIterations) {
      return changeInValue * (-Math.pow(2, -10 * currentIteration / totalIterations) + 1) + startValue;
    }
  
    var hoverZone = 150;
    var expandAmount = 20;
    
    function svgCurve() {
      if ((curveX > x-1) && (curveX < x+1)) {
        xitteration = 0;
      } else {
        if (menuExpanded) {
          targetX = 0;
        } else {
          xitteration = 0;
          if (x > hoverZone) {
            targetX = 0;
          } else {
            targetX = -(((60+expandAmount)/100)*(x-hoverZone));
          }     
        }
        xitteration++;
      }
  
      if ((curveY > y-1) && (curveY < y+1)) {
        yitteration = 0;
      } else {
        yitteration = 0;
        yitteration++;  
      }
  
      curveX = easeOutExpo(xitteration, curveX, targetX-curveX, 100);
      curveY = easeOutExpo(yitteration, curveY, y-curveY, 100);
  
      var anchorDistance = 200;
      var curviness = anchorDistance - 40;
  
      var newCurve2 = "M60,"+height+"H0V0h60v"+(curveY-anchorDistance)+"c0,"+curviness+","+curveX+","+curviness+","+curveX+","+anchorDistance+"S60,"+(curveY)+",60,"+(curveY+(anchorDistance*2))+"V"+height+"z";
  
      blobPath.attr('d', newCurve2);
  
      blob.width(curveX+60);
  
      hamburger.css('transform', 'translate('+curveX+'px, '+curveY+'px)');
      
      $('h2').css('transform', 'translateY('+curveY+'px)');
      window.requestAnimationFrame(svgCurve);
    }
  
    window.requestAnimationFrame(svgCurve);
    
});
// 나가는 판
$(document).ready(function(){
    $('#right_box_button').click(function(){
        $('.right_box').css({
            right: '-100%'
        })
        
    })
})
// 들어가는판 
$(document).ready(function(){
    $('.list2_l').click(function(){
        $('.right_box').css({
            right:'0'
        })
        
    })
})
// 1111111111111111111111111 //
$(document).ready(function(){
    $('.cr_1').click(function(){
        $('.box1').css({
            background: 'url(https://www.prada.com/content/dam/pradabkg_products/1/1BA/1BA274/2CYSF0002/1BA274_2CYS_F0002_V_YOB_SLF.jpg/_jcr_content/renditions/cq5dam.web.hebebed.1200.1200.jpg) no-repeat center / cover'
        })
        
    })
    $('.cr_2').click(function(){
        $('.box1').css({
            background: 'url(https://www.prada.com/content/dam/pradabkg_products/1/1BA/1BA274/2CYSF0009/1BA274_2CYS_F0009_V_YOB_SLF.jpg/_jcr_content/renditions/cq5dam.web.hebebed.1200.1200.jpg) no-repeat center / cover'
        })
        
    })
    $('.cr_3').click(function(){
        $('.box1').css({
            background: 'url(https://www.prada.com/content/dam/pradabkg_products/1/1BA/1BA274/2CYSF0018/1BA274_2CYS_F0018_V_YOB_SLF.jpg/_jcr_content/renditions/cq5dam.web.hebebed.1200.1200.jpg) no-repeat center / cover'
        })
        
    })
})
// 2222222222222222222222222 /
$(document).ready(function(){
    $('.cr_4').click(function(){
        $('.box2').css({
            background: 'url(https://www.prada.com/content/dam/pradabkg_products/1/1BH/1BH204/R064F0002/1BH204_R064_F0002_V_V9L_SLF.jpg/_jcr_content/renditions/cq5dam.web.hebebed.1200.1200.jpg) no-repeat center / cover'
        })
        
    })
    $('.cr_5').click(function(){
        $('.box2').css({
            background: 'url(https://www.prada.com/content/dam/pradabkg_products/1/1BH/1BH204/R064F0009/1BH204_R064_F0009_V_V9L_SLF.jpg/_jcr_content/renditions/cq5dam.web.hebebed.1200.1200.jpg) no-repeat center / cover'
        })
        
    })
    $('.cr_6').click(function(){
        $('.box2').css({
            background: 'url(https://www.prada.com/content/dam/pradabkg_products/1/1BH/1BH204/R064F0076/1BH204_R064_F0076_V_V9L_SLF.jpg/_jcr_content/renditions/cq5dam.web.hebebed.1200.1200.jpg) no-repeat center / cover'
        })
        
    })
    $('.cr_7').click(function(){
        $('.box2').css({
            background: 'url(https://www.prada.com/content/dam/pradabkg_products/1/1BH/1BH204/R064F0322/1BH204_R064_F0322_V_V9L_SLF.jpg/_jcr_content/renditions/cq5dam.web.hebebed.1200.1200.jpg) no-repeat center / cover'
        })
        
    })
    $('.cr_8').click(function(){
        $('.box2').css({
            background: 'url(https://www.prada.com/content/dam/pradabkg_products/1/1BH/1BH204/R064F0F24/1BH204_R064_F0F24_V_V9L_SLF.jpg/_jcr_content/renditions/cq5dam.web.hebebed.1200.1200.jpg) no-repeat center / cover'
        })
        
    })
})
// 333333333333333333333
$(document).ready(function(){
    $('.cr_9').click(function(){
        $('.box3').css({
            background: 'url(https://www.prada.com/content/dam/pradabkg_products/1/1BG/1BG393/2C2TF0018/1BG393_2C2T_F0018_V_OOO_SLF.jpg/_jcr_content/renditions/cq5dam.web.hebebed.1200.1200.jpg) no-repeat center / cover'
        })
        
    })
    $('.cr_10').click(function(){
        $('.box3').css({
            background: 'url(https://www.prada.com/content/dam/pradabkg_products/1/1BG/1BG393/2C2TF0393/1BG393_2C2T_F0393_V_OOO_SLF.jpg/_jcr_content/renditions/cq5dam.web.hebebed.1200.1200.jpg) no-repeat center / cover'
        })
    })
})
// 444444444444444444444
$(document).ready(function(){
    $('.cr_11').click(function(){
        $('.box4').css({
            background: 'url(https://www.prada.com/content/dam/pradabkg_products/1/1BC/1BC499/ZO6F0002/1BC499_ZO6_F0002_V_OOO_SLF.jpg/_jcr_content/renditions/cq5dam.web.hebebed.1200.1200.jpg) no-repeat center / cover'
        })
        
    })
    $('.cr_12').click(function(){
        $('.box4').css({
            background: 'url(https://www.prada.com/content/dam/pradabkg_products/1/1BC/1BC499/ZO6F0009/1BC499_ZO6_F0009_V_OOO_SLF.jpg/_jcr_content/renditions/cq5dam.web.hebebed.1200.1200.jpg) no-repeat center / cover'
        })
    })
    $('.cr_13').click(function(){
        $('.box4').css({
            background: 'url(https://www.prada.com/content/dam/pradanux_products/1/1BC/1BC499/ZO6F0591/1BC499_ZO6_F0591_V_OOO_SLF.png/_jcr_content/renditions/cq5dam.web.hebebed.1200.1200.jpg) no-repeat center / cover'
        })
    })
    $('.cr_14').click(function(){
        $('.box4').css({
            background: 'url(https://www.prada.com/content/dam/pradabkg_products/1/1BC/1BC499/ZO6F0PG8/1BC499_ZO6_F0PG8_V_OOO_SLF.jpg/_jcr_content/renditions/cq5dam.web.hebebed.1200.1200.jpg) no-repeat center / cover'
        })
    })
})