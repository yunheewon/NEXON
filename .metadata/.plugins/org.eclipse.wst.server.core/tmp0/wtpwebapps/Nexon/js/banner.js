$(document).ready(function(){
    console.clear();

    // 상단 메인 배너 slick
    $('.main-slider').slick({
        dots:true,
        fade:true,
        /*제공되는 페이징 버튼이 아닌 custom 버튼 형식으로 대체*/
        customPaging: function(slider, i) { 
            //console.log($(slider.$slides[i]).html());
            /* slick내부에서 슬라이드 개수 만큼 for문으로 생성 ( 슬라이드 개수 만큼 복제된다. )*/
            return '<button class="tab"><div class="s-indicator only-pc"><span class="inner-txt">' + $(slider.$slides[i]).find('.slide-item').attr('data-dot-title') + '</span></div><span class="s-line-fill"></span></button>';
        },
    });

    // 마우스 더미에 올렸을 때 멈추도록 = 즉 배너 이미지에 마우스 커서를 가져다 댔을 때 멈춤
    $('.slide-dummy, .slide-txt').mouseenter(function() {
        $(this).closest('.slider-wrap').attr('data-slick-autoplay-status', 'N');
    });

    $('.slide-dummy').mouseleave(function() {
        $(this).closest('.slider-wrap').attr('data-slick-autoplay-status', 'Y');
    });

    // 재생 및 정지 버튼 클릭
    $('.s-autoplay-btn').click(function(){
        var $sliderWrap = $(this).parent();
        
        /*실제 구현 기능과 보이는 이미지가 반대로 되어야 함.
        즉, autoplay 재생 버튼이 보이고 있을 때는 정지 상태
        autoplay 일시 정지 버튼이 보이고 있을 때는 재생 상태
        */
        if ( $sliderWrap.attr('data-slick-autoplay-status') == 'Y' ){
            $sliderWrap.attr('data-slick-autoplay-status', 'N');
        }
        else if ( $sliderWrap.attr('data-slick-autoplay-status') == 'N' ){
            $sliderWrap.attr('data-slick-autoplay-status', 'Y');
        }
    })

    // progressbar 다 차면 슬라이드 시키기
    setInterval(function() {
        /*main-slider의 index값 만큼 반복하는 each 반복문*/
        $('.slider-wrap > .main-slider').each(function(index, node) {
            var $slider = $(node);
            
            if ( $slider.parent().attr('data-slick-autoplay-status') !== 'N' ) {//autoplay가 일시정지 상태가 아닐 때 실행되는 조건문
                var width = $slider.find('.slick-dots .slick-active > button > .s-line-fill').css('width');/*클래스가 active로 되어 파란색으로 채워지는 width*/
                var buttonWidth = $slider.find('.slick-dots .slick-active > button').css('width');/*클래스가 active인 버튼 본래의 width*/
                
                //console.log(width);
                if ( width == buttonWidth ) {/*클래스가 active로 되어 파란색으로 채워지는 width와 버튼 본래의 width 값이 일치하면 실행되는 조건문*/
                    $slider.slick('slickNext');/*다음으로 이동*/
                }
            }
        });
    }, 500);
});