$(document).ready(function(){
    //애니메이션 효과를 완료할 때까지 걸리는 시간 변수 지정
    var duration = 1200;

    //사이드 메뉴를 연결하여 사용하기 위한 변수 지정
    var $sidebar = $("#sidebar_menu");

    /*
        stop() : stop() 이벤트를 사용한 이유는 현재 동작하고 있는 애니메이션은 즉시 동작이 중단하기 위함.
            -> stop() 이벤트를 쓰지않으면 width 값이 다시 되돌아온다.
        toggleClass : .toggleClass()로 선택한 요소에 클래스(Class) 값을 넣었다 뺐다 하기 위함.
        emphasized : 메뉴 이외의 부분은 불투명 처리하기 위함.
        release : "X" 버튼을 눌러 메뉴를 닫았을 때 원상태로 만들기 위함.

        *left:-90px로 준 이유: 
        animate easing 효과로 easeOutBack, easeInBack을 사용했는데 이 효과는 특정 px만큼 더 나오기 때문에 여백이 생긴다.
        그 여백을 처리하기 위해 -90px을 줌.
    */

    $(".all_menu").on("click",function(){//"메뉴" 버튼을 클릭했을 때 실행
        $sidebar.stop().animate({left: '-90px'}, duration, 'easeOutBack');
        $sidebar.toggleClass("emphasized");
    });

    $(".close").on("click",function(){//"X" 버튼을 클릭했을 때 실행
        $sidebar.stop().animate({left: '-650px'}, duration, 'easeInBack');
        $sidebar.toggleClass("release")
    });

    /*
        7
    */
    $(".pc_btn").on("click",function(){//사이트 메뉴 안 "PC 게임" 버튼을 클릭했을 때 실행
        $(".mobile_list").css({
            "display" : "none"
        });

        $(".pc_list").css({
            "display" : "inline-block"
        });
    });

    $(".mobile_btn").on("click",function(){//사이드 메뉴 안 "모바일게임" 버튼을 클릭했을 때 실행
        $(".mobile_list").css({
            "display" : "inline-block"
        });

        $(".pc_list").css({
            "display" : "none"
        });
    });

});