 /* 전체 선택/해제 함수 - useTerm_check()
- checkFlag : 체크박스를 제어 할 변수 지정
- checkFlag = false -> 전체 선택
- checkFlag = true -> 전체 선택 해제 */
var checkFlag = false;

function useTerm_check(){

    if(checkFlag == false){
        chk_ser.checked = true;
        chk_pri.checked = true;
        chk_priterm.checked = true;
        chk_eve.checked = true;
        checkFlag = true;
    }else{
        chk_ser.checked = false;
        chk_pri.checked = false;
        chk_priterm.checked = false;
        chk_eve.checked = false;
        checkFlag = false;
    }
}

/* 필수 동의항목 처리 함수 - need_field() */
function need_field(f){
    if(chk_ser.checked == false){
        alert("동의 항목 중 '(선택)을 제외한 항목'은 반드시 체크하셔야\n다음 단계로 넘어갑니다");
        return  f.action = "#";
    }else if(chk_pri.checked == false){
        alert("동의 항목 중 '(선택)을 제외한 항목'은 반드시 체크하셔야\n다음 단계로 넘어갑니다");
        return f.action = "#";
    }
    
    return f.action = getContextPath() + "/nexon.gd?type=joinForm";
}

/*자바 스크립트 내에서 ContextPath를 사용하기 위한 함수*/
function getContextPath() {
    var hostIndex = location.href.indexOf( location.host ) + location.host.length;
    return location.href.substring( hostIndex, location.href.indexOf('/', hostIndex + 1) );
}

/* 체크박스 목록 중 하나라도 체크 해제 할 시 전체 선택 해제 - unLockBox()
- chk_all : 전체 선택(체크박스) 변수*/
function unLockBox(){
    var chk_all = document.getElementById("chk_all");
    
    if(chk_ser.checked == false | chk_pri.checked == false | chk_priterm.checked == false | chk_eve.checked == false)
        chk_all.checked = false;
}

var chk_ser = document.getElementById("chk_ser");
var chk_pri = document.getElementById("chk_pri");
var chk_priterm = document.getElementById("chk_priterm");
var chk_eve = document.getElementById("chk_eve");