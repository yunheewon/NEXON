$(document).ready(function(){

    $('.event_item').hover(function(){//이벤트 리스트 mouseenter
        $(this).css('box-shadow','0 8px 16px rgba(0,0,0,0.07)');//하단 부분 그림자효과
    }, function(){
        $(this).css('box-shadow', 'none');//이벤트 리스트 mouseleave
    });
});