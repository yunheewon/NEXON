// id_submit : 중복확인버튼 클릭 시 아이디 입력칸에 입력된 값을 저장하기 위해 전역변수 지정.
var id_submit = "";

/*
아이디 중복확인 체크 함수 - id_check
- userId : 아이디 input태그에 담긴 값.
- result : 아이디 유효성 결과 여부를 저장.
*/
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

//아이디 유효성 검사 
function id_confirm(userId){
    //regex : 아이디 정규 표현식
    var regex= /^[a-z0-9_-]{4,16}$/;
    return (userId != '' && userId != 'undefined' && regex.test(userId));//리턴값 지정
}

/*
비밀번호 일치 처리 함수 - same_check()
- usePW : 비밀번호 input태그에 담긴 값.
- usePwConfirm : 비밀번호 재확인 input태그에 담긴 값.
- warning_msg : 비밀번호 일치를 확인하기 위한 span태그
*/
function same_check(){
    var userPw = document.getElementsByName("userPw")[0].value;
    var userPwConfirm = document.getElementsByName("userPwConfirm")[0].value;
    var warning_msg = document.getElementById("warning_msg");

    if(userPw != ""){//비밀번호 입력값이 null이 아닐 경우 실행하는 조건문
        // 값을 입력안한경우는 아예 체크를 하지 않는다.
        if( userPw == '' || userPw == 'undefined') return;

        if(!pwd_confirm(userPw)){//비밀번호 유효성 검사 함수(pwd_confirm)를 통해 체크한 비밀번호가 형식과 맞지 않을 경우 실행하는 조건문
            var result = alert('잘못된 형식의 비밀번호입니다.\n다시 입력해주세요.');
            if(result = true)//alert이 출력될 경우 true.
                $("#userPw").focus();//비밀번호를 다시 입력하게끔 비밀번호 입력칸으로 focus를 돌림.        
            else 
                return false;
        }else if(userPw != "" && userPwConfirm != "" ){//비밀번호와 비밀번호 확인칸 모두 값이 입력되있을 때 판별해야 하기 때문에 else if
            if(userPw == userPwConfirm){//일치하는 경우
                warning_msg.innerHTML = "비밀번호가 일치합니다";
                warning_msg.style.color= "blue";
            }else{//일치하지 않는 경우
                warning_msg.innerHTML = "비밀번호가 일치하지 않습니다";
                warning_msg.style.color= "red";
                $("#userPw").focus();//재 입력.
            }
        }
    }else{
        alert("비밀번호를 입력해주세요.");
    }
}

//비밀번호 유효성 검사 
function pwd_confirm(userPw){
    //regex : 비밀번호 정규 표현식
    var regex= /^[A-Za-z0-9]{10,16}$/;
    return (userPw != '' && userPw != 'undefined' && regex.test(userPw));//리턴값 지정.
}

$(document).ready(function(){

    //닉네임 유효성 검사
    //regex : 닉네임 정규 표현식
    var nickname_confirm = /^[a-z0-9가-힣]{3,10}$/;

    $("#email").focus(function(){//email칸에 focus가 되었을 때 닉네임 유효성 검사 실행.
        if(!nickname_confirm.test($.trim($("#nickName").val()))){//닉네임 input 값을 잘라서 정규 표현식으로 통한 test() 결과, 형식이 잘못되었을 때 실행되는 조건문
            alert("잘못된 형식의 닉네임입니다.\n다시 입력해주세요.");
            $("#nickName").focus();//재 입력
            return false;
        }
    });
    
    $(".next_btn").click(function(){
    	if(success == "ok"){
    		change_action();
    	}else{
    		return false;
    	}
    });

});

// email_submit : 중복확인버튼 클릭 시 이메일 입력칸에 입력된 값을 저장하기 위해 전역변수 지정.
var email_submit = "";

/*
이메일 중복확인 체크 함수 - email_check
- userEmail : 이메일 input태그에 담긴 값.
- result : 이메일 유효성 결과 여부를 저장.
*/
function email_check(){
    var userEmail = document.getElementsByName("email")[0].value;

    if(userEmail != ""){//이메일 입력값이 null이 아닐 경우 실행하는 조건문

        // 값을 입력안한경우는 아예 체크를 하지 않는다.
        if( userEmail == '' || userEmail == 'undefined') return;

        if(!email_confirm(userEmail)){//이메일 유효성 검사 함수(email_confirm)를 통해 체크한 이메일이 형식과 맞지 않을 경우 실행하는 조건문
            var result = alert('잘못된 형식의 이메일입니다.\n다시 입력해주세요.');
            if(result = true)//alert이 출력될 경우 true.
                $("#email").focus();//이메일을 다시 입력하게끔 이메일 입력칸으로 focus를 돌림.    
            else
                return false;
        }else{//이메일 유효성 검사 함수(id_confirm)를 통해 체크한 이메일이 형식에 부합하는 경우 실행하는 조건문
        	window.open(getContextPath() + "/join/emailCheckForm.jsp", "emailwin", "width=450, height=300");
            email_submit = userEmail;//현재 입력된 이메일을 전역변수 email_submit에 저장.
        }
    }else{
        alert("이메일을 입력해주세요.");
    }
}

//이메일 유효성 검사 
function email_confirm(userEmail){
    //regex : 이메일 정규 표현식
    var regex=/([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
    return (userEmail != '' && userEmail != 'undefined' && regex.test(userEmail));//리턴값 지정.
}

//회원가입 성공 여부 확인을 위한 변수
var success = "nope";

function join(){
    /*
    [조건]
    - 모든 칸이 빈칸이면 안됨
    - 중복 확인 버튼이 눌린 후 "사용 가능한 아이디, 이메일입니다" 가 뜬 아이디, 이메일이어야 함 -> overlap_id, overlap_email = "가능"
    - 비밀번호와 비밀번호 확인 입력 칸이 일치 -> 결과 반환
    - 중복확인 체크된 아이디, 이메일과 작성완료 클릭 시 전송되는 아이디, 이메일이 같아야 함 -> id_submit, email_submit
    */
    var userId = document.getElementsByName("userId")[0].value;
    var userPw = document.getElementsByName("userPw")[0].value;
    var userPwConfirm = document.getElementsByName("userPwConfirm")[0].value;
    var warning_msg = document.getElementById("warning_msg").innerHTML;
    var nickName = document.getElementsByName("nickName")[0].value;
    var userEmail = document.getElementsByName("email")[0].value;
    // console.log(userId);
    // console.log(userPw);
    // console.log(userPwConfirm);
    // console.log(warning_msg);
    // console.log(nickName);
    // console.log(userEmail);
    
    if(userId != "" && userPw != "" && userPwConfirm != "" && nickName != "" && userEmail != ""){
            if(warning_msg == "비밀번호가 일치합니다"){
                if(userId == id_submit && userEmail == email_submit){
                    alert("환영합니다!\n'" + nickName + "'님께서 가입 시 입력하신 " + "아이디는 '" + id_submit  + "'\n" +
                    "이메일은 '" + email_submit + "' 입니다.");
                    success = "ok";
                }else{
                    alert("입력하신 정보와 중복확인한 정보가 일치하지 않습니다.");
                    success = "nope";
                }
            }else{
                alert("비밀번호가 일치하지 않습니다.\n다시 입력해주세요.");
                success = "nope";
            }
    }else{
    	alert("모든 칸을 채우신 후 '작성완료'버튼을 눌러주세요!");
    	success = "nope";
    }
}

/*자바 스크립트 내에서 ContextPath를 사용하기 위한 함수*/
function getContextPath() {
    var hostIndex = location.href.indexOf( location.host ) + location.host.length;
    return location.href.substring( hostIndex, location.href.indexOf('/', hostIndex + 1) );
}

function change_action(){
    document.forms["frmSubmit"].action =  getContextPath() + "/nexon.gd?type=join";
}