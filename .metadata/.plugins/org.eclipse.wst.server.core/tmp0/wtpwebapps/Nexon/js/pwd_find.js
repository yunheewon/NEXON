var save_num = 0;                   //인증번호 요청 후 받은 문자열을 저장하기 위해 save_num 변수 지정
var id_check = "";                  // 아이디 일치 여부를 확인하기 위한 id_check 변수 지정
var name_check = "";                // 이름 일치 여부를 확인하기 위한 name_check 변수 지정 
var email_check = "";               // 이메일 일치 여부를 확인하기 위한 email_check 변수 지정
var All_check = "InputTheField";    // 빈칸이 다 입력되었는지 확인하기 위해 ALL_check 변수 지정 -> 기본값은 "InputTheField"로 지정
var num_ok = "";                    // 인증번호 입력 후 확인버튼을 눌렀는지 여부를 확인하기 위한 num_ok 변수 지정

function reqForPwd(){ // 인증번호 요청 버튼을 클릭하였을 때 실행되는 함수
    var id = document.getElementsByName("memberLoginId")[0].value;  //input태그 id가 "id"인 것을 사용하기 위한 email 변수 지정
    var name = document.getElementsByName("name")[0].value;         //input태그 id가 "name"인 것을 사용하기 위한 name 변수 지정
    var email = document.getElementsByName("email")[0].value;       //input태그 id가 "email"인 것을 사용하기 위한 email 변수 지정
    //console.log(id);
    //console.log(name);
    //console.log(email);

    //var cert_num = Math.floor(Math.random()*1000000) + 100000;  // 랜덤값을 출력하고 저장하기 위한 cert_num 변수 지정
    var rand_num = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"; // 숫자와 문자 혼합 함수를 출력하기 위한 랜덤변수 지정
    var cert_num = ""; // 랜덤변수를 저장해놓기 위한 cert_num 변수 지정

    if(name != "" && email != "" && id != ""){//id, name, email이 빈 값이 아닐 때 실행되는 조건문
        
        // 값을 입력안한경우는 아예 체크를 하지 않는다.
        if( email == '' || email == 'undefined') return;

        // 이메일 유효성 검사
        if( !email_confirm(email) ) {
            var result = alert('잘못된 형식의 이메일 주소입니다.\n다시 입력해주세요.');
            if(result = true)
                $("#email").focus();
            else
                return false;
        }else{
            alert("인증번호를 발송했습니다.\n인증번호가 오지 않으면 입력하신 정보가 회원정보와 일치하는지 확인해주세요.");
            // if(cert_num > 1000000)// 랜덤값 6자리 출력을 위한 조건문
            //     cert_num = cert_num - 100000;
            for(var i = 0; i < 6; i++) {// 6자리 랜덤값을 출력하기 위한 반복문
                cert_num += rand_num.charAt(Math.floor(Math.random() * rand_num.length));
            };

            console.log(cert_num);      // 인증번호 메시지 대신 콘솔창 출력
            save_num = cert_num;        // 전역변수인 save_num에 랜덤값 cert_num을 저장
            id_check = id;              // 입력받은 id와 "비밀번호 찾기" 버튼을 눌렀을 때 입력되어있는 값의 일치 여부를 확인하기 위해 전역변수 id_check에 저장
            name_check = name;          // 입력받은 name과 "비밀번호 찾기" 버튼을 눌렀을 때 입력되어있는 값의 일치 여부를 확인하기 위해 전역변수 name_check에 저장
            email_check = email;        // 입력받은 email과 "비밀번호 찾기" 버튼을 눌렀을 때 입력되어있는 값의 일치 여부를 확인하기 위해 전역변수 email_check에 저장
            num_ok = "please_click_ok"  // 인증번호를 받고 일치여부를 확인하기 위한 "확인"버튼을 클릭하지 않았으므로 "please_click_ok" 를 전달
        }
    }else
        alert("이름과 이메일 주소를 입력해주세요.");
}

function conf_num(){// 확인버튼을 눌렀을 때 실행되는 함수
    var request_num = document.getElementsByName("request_num")[0].value; // "인증번호를 입력하세요" 필드 값을 사용하기 위한 request_num 변수 지정
    var sameCheck = document.getElementById("sameCheck"); // 인증번호 일치여부를 메시지로 띄우기 위한 sameCheck 변수 지정

    if(request_num == save_num && request_num != ""){ // 필드값(request_num)과 인증번호(save_num)이 일치하고, 필드값이 빈 값이 아닐 때 실행되는 조건문 
        sameCheck.innerHTML = "인증번호가 일치합니다."
        sameCheck.style.color = "blue";
        All_check = true;   // 모든 필드에 값을 채웠으므로 true 전달
        num_ok = "clicked"; // "확인" 버튼을 클릭하였으므로 "clicked"를 전달
    }else{
        sameCheck.innerHTML = "인증번호가 일치하지 않습니다."
        sameCheck.style.color = "red";
        All_check = false;         // 모든 필드에 값을 채웠지만 번호가 일치하지 않아 다시 인증번호를 받아야 하므로 false 전달
        num_ok = "please_click_ok" // "확인" 버튼을 클릭하였지만 번호가 일치하지 않으므로 "please_click_ok" 를 전달
    }   
}

function get_pwd(){// 비밀번호 찾기 버튼을 눌렀을 때 실행되는 함수
    id = document.getElementsByName("memberLoginId")[0].value; // 비밀번호 찾기 버튼을 누르기 전 입력값과 누른 후 입력값을 비교하기 위한 변수 지정
    name = document.getElementsByName("name")[0].value;
    email = document.getElementsByName("email")[0].value;
    request_num = document.getElementsByName("request_num")[0].value;

    var findwin = window.open('about:blank','pwdfind','width=450,height=300');
    var frm = document.findfrm;
    
    if(request_num.indexOf(save_num) == -1){
        alert("발송된 인증번호와 입력하신 인증번호가 일치하지 않습니다.");
        frm.action = "#";
    }else{
    	//name_check, email_check, id_check 수정
        if(num_ok == "clicked" && All_check == true && id_check == id && email_check == email){// "확인" 버튼이 클릭되었을 때 실행되는 조건문
        	frm.action = getContextPath() + "/login/pwdFindProc.jsp";
    	    frm.target ="pwdfind";
    	    frm.method ="post";
    	    frm.submit();
        }else if(num_ok == "please_click_ok" && All_check == "InputTheField" ){          // "확인"버튼을 클릭하지 않고, 필드에 빈 칸이 존재할 때 실행되는 조건문
            alert("인증번호를 입력하신 후 확인버튼을 눌러주세요.");
            frm.action = "#";
        }else if(num_ok == "please_click_ok" && All_check == true | All_check == false){ // "확인"버튼을 클릭하지 않았는데, 일치여부 메시지는 띄워져 있을 때 실행되는 조건문
            alert("인증번호를 확인하신 후 확인버튼을 눌러주세요.");
            frm.action = "#";
        }else if(All_check == true && name_check != name | email_check != email | id_check != id){ // 필드가 모두 채워져있지만 회원정보와 아이디, 이름 또는 이메일이 일치하지 않을 때 실행되는 조건문
            alert("입력하신 정보와 일치하는 회원정보가 없습니다.");
            frm.action = "#";
        }else if(All_check == "InputTheField"){ // 필드에 빈 값이 있을 때 실행되는 조건문
            alert("회원정보를 입력해주세요.");
            frm.action = "#";
        }else if(name_check != name | email_check != email | id_check != id){
	    	alert("입력하신 정보를 다시 확인해주세요.");
	    	frm.action = "#";
	    }else{
            alert("회원정보를 입력해주세요.");
            frm.action = "#";
        }
    }
}

//절대 경로 지정
function getContextPath() {
    var hostIndex = location.href.indexOf( location.host ) + location.host.length;
    return location.href.substring( hostIndex, location.href.indexOf('/', hostIndex + 1) );
}

function cancel_msg(){// 취소 버튼을 눌렀을 때 실행되는 함수
    var click = confirm('로그인 화면으로 돌아가시겠습니까?');

    if(click){
        return location.href = "../login/login.jsp"; // 로그인 페이지로 되돌아가기
    }else{
        return false;
    }
}

//이메일 유효성 검사 
function email_confirm(email){
    var regex=/([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
    return (email != '' && email != 'undefined' && regex.test(email));
}

$(document).ready(function(){

    var id_confirm = /^[a-z0-9_-]{4,16}$/;
    var name_confirm = /^[가-힣]{2,8}$/;

    //아이디 유효성 검사
    $('#name').focus(function(){
        if(!id_confirm.test($.trim($("#memberLoginId").val()))){
            alert("잘못된 형식의 아이디입니다.\n다시 입력해주세요.");
            $("#memberLoginId").focus();
            return false;
        }
    });

    //이름 유효성 검사
    $("#email").focus(function(){
        if(!name_confirm.test($.trim($("#name").val()))){
            alert("잘못된 형식의 이름입니다.\n다시 입력해주세요.");
            $("#name").focus();
            return false;
        }
    });
});
