$(document).ready(function(){

    $('.pc_game ul li').hover(function(){//PC게임 리스트 mouseenter
        $(this).css('box-shadow','0 8px 16px rgba(0,0,0,0.07)');//하단 부분 그림자 효과
    }, function(){
        $(this).css('box-shadow', 'none');//PC게임 리스트 mouseleave
    });

});