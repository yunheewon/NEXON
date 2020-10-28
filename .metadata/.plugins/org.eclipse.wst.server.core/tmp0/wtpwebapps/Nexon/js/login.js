var count = 0;// 비밀번호 횟수를 체크하기 위한 변수 지정

function save_cookie(){
	var login_id = document.getElementById("login_id").value;                 
	var login_pwd = document.getElementById("login_pwd").value;    
	
	if(document.getElementById("id_save").checked == true) // 로그인 상태 유지가 체크 되었을 때 실행되는 조건문
    {
        setCookie("id", login_id, 7);     // 쿠키이름을 id로 아이디 입력필드값을 7일동안 저장
        setCookie("pwd", login_pwd, 7);   // 쿠키이름을 pwd로 비밀번호 입력필드값을 7일동안 저장
        setCookie(login_id, login_id, 7)
    }else{// 로그인 상태 유지가 체크 해제 되었을 때 실행
        setCookie("id", login_id, 0);     // 날짜를 0으로 저장하여 쿠키를 삭제
        setCookie("pwd", login_pwd, 0);
        setCookie(login_id, login_id, 0);
    }
}

function setCookie(name, value, expiredays) // 쿠키 저장 함수
{
    var todayDate = new Date();                          // todayDate이름의 Date객체 생성
    todayDate.setDate(todayDate.getDate() + expiredays); // todayDate를 'DD'형식에 원하는 날짜기간(expiredays)을 더하여 설정

    document.cookie = name + "=" + escape(value) + "; path=/; expires=" + todayDate.toGMTString() + ";" // 생성한 쿠키는 지정한 name, value는 16진수 문자로 바꾸고 경로는 '/' 날짜는 GMT 형식으로 저장
}

//http://www.joshi.co.kr/index.php?mid=board_XbwP90&document_srl=711
function getCookie(Name) // 쿠키 불러오는 함수
{ 
    var search = Name + "="; //search 변수에 내가 입력한 Name 저장

    if (document.cookie.length > 0) // 쿠키들이 있을 때 실행하는 조건문
    { 
        offset = document.cookie.indexOf(search); // search에 저장된 문자/문자열을 찾은 후 그 위치값를 offset 변수에 저장
        if (offset != -1)                         // offset에 값이 존재한다면 = 쿠키가 존재하면 실행되는 조건문
        {                                         // 만약 특정 문자열을 해당하는 텍스트 안에서 찾았다면 if문에서 절대 -1이 될 수 없는 양수 값이기 때문에 -1은 값이 없다는 것을 의미
        
            offset += search.length;// 시작 위치값 설정
            end = document.cookie.indexOf(";", offset); // 끝나는 위치값 설정. 즉 offset(시작위치)부터 시작해서 ";"를 찾으면 그 위치값을 end에 저장
            if (end == -1)// end가 존재하지 않는다면 실행하는 조건문
                end = document.cookie.length; //쿠키의 길이 자체를 end에 저장.
            return unescape(document.cookie.substring(offset, end));
            // substring을 사용해 offset(시작위치), end(끝위치) 안에 들어가는 특정 문자열을 뽑아낸 후 16진수로 변환된 문자열을 다시 원상태로 복구하여 리턴
        }
    }
}

window.onload = function() {// 새로고침을 하거나 창을 열었을 때 바로 실행되는 함수

    if (getCookie("id") && getCookie("pwd")) // getCookie함수로 id와 pwd 이름의 쿠키를 불러왔을 때, 쿠키가 있을경우 실행되는 조건문
    { 
        document.getElementById("login_id").value = getCookie("id");      //input태그 이름이 login_id인곳에 getCookie("id")값을 넣어줌
        //document.getElementById("login_pwd").value = getCookie("pwd");    //input태그 이름이 login_pwd인곳에 getCookie("pwd")값을 넣어줌
        document.getElementById("id_save").checked = true;       // 체크는 체크됨으로
    }

}
