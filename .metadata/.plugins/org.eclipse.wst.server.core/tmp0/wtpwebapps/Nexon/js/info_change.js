/*자바 스크립트 내에서 ContextPath를 사용하기 위한 함수*/
function getContextPath() {
    var hostIndex = location.href.indexOf( location.host ) + location.host.length;
    return location.href.substring( hostIndex, location.href.indexOf('/', hostIndex + 1) );
}

function id_popup(){
	window.open( getContextPath() + "/infoset/info_id_changeForm.jsp", "idwin", "width=500, height=250");
}

//아이디 유효성 검사 
function id_confirm(userId){
    //regex : 아이디 정규 표현식
    var regex= /^[a-z0-9_-]{4,16}$/;
    return (userId != '' && userId != 'undefined' && regex.test(userId));//리턴값 지정
}

//중복확인
function id_check(){
	var userId = document.getElementsByName("userId")[0].value;

    if(userId != ""){//아이디 입력값이 null이 아닐 경우 실행하는 조건문

        // 값을 입력안한경우는 아예 체크를 하지 않는다.
        if( userId == '' || userId == 'undefined') return;

        if(!id_confirm(userId)){//아이디 유효성 검사 함수(id_confirm)를 통해 체크한 아이디가 형식과 맞지 않을 경우 실행하는 조건문
            var result = alert('잘못된 형식의 아이디입니다.\n다시 입력해주세요.');
            if(result = true)//alert이 출력될 경우 true.
                $("#userId").focus();//아이디를 다시 입력하게끔 아이디 입력칸으로 focus를 돌림.    
            else
                return false;
        }else{//아이디 유효성 검사 함수(id_confirm)를 통해 체크한 아이디가 형식에 부합하는 경우 실행하는 조건문
        	window.open( getContextPath() + "/join/idCheckForm.jsp", "idwin", "width=450, height=300");
        	id_submit = userId;
        }
    }else{
        alert("아이디를 입력해주세요.");
    }
}