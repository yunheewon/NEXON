var cur_save = "";

//현재 비밀번호 유효성 검사
function cur_check(){
	var cur_pwd = document.getElementById("cur_pwd").value;
	
	if(cur_pwd != ""){
		if(cur_pwd == '' || cur_pwd == 'undefined' ) return;
		
		if(!pwd_confirm(cur_pwd)){
			var result = alert('잘못된 형식의 비밀번호입니다.\n다시 입력해주세요.');
            if(result = true)//alert이 출력될 경우 true.
            	document.getElementById("cur_pwd").focus();//비밀번호를 다시 입력하게끔 비밀번호 입력칸으로 focus를 돌림.   
            else 
                return false;
		}else{
			document.getElementById("new_pwd").focus();
			cur_save = cur_pwd;
		}
			
	}else
		alert("비밀번호를 입력해주세요.");
}

var new_save = "";
//새로운 비밀번호 일치 여부 & 유효성 검사 
function same_check(){
    var new_pwd = document.getElementById("new_pwd").value;
    var new_conf = document.getElementById("new_conf").value;
    var warning_msg = document.getElementById("warning_msg");
    
    if(new_pwd != ""){//비밀번호 입력값이 null이 아닐 경우 실행하는 조건문
        // 값을 입력안한경우는 아예 체크를 하지 않는다.
        if( new_pwd == '' || new_pwd == 'undefined') return;

        if(!pwd_confirm(new_pwd)){//비밀번호 유효성 검사 함수(pwd_confirm)를 통해 체크한 비밀번호가 형식과 맞지 않을 경우 실행하는 조건문
            var result = alert('잘못된 형식의 비밀번호입니다.\n다시 입력해주세요.');
            if(result = true)//alert이 출력될 경우 true.
            	document.getElementById("new_pwd").focus();//비밀번호를 다시 입력하게끔 비밀번호 입력칸으로 focus를 돌림.        
            else 
                return false;
        }else if(new_pwd != "" && new_conf != "" ){//비밀번호와 비밀번호 확인칸 모두 값이 입력되있을 때 판별해야 하기 때문에 else if
            if(new_pwd == new_conf){//일치하는 경우
                warning_msg.innerHTML = "비밀번호가 일치합니다";
                warning_msg.style.color= "blue";
                new_save = new_conf;
            }else{//일치하지 않는 경우
                warning_msg.innerHTML = "비밀번호가 일치하지 않습니다";
                warning_msg.style.color= "red";
                document.getElementById("new_pwd").focus();//재 입력.
            }
        }
        
    }else{
        alert("비밀번호를 입력해주세요.");
    }
}

//비밀번호 유효성 검사 함수
function pwd_confirm(new_pwd){
    //regex : 비밀번호 정규 표현식
    var regex= /^[A-Za-z0-9]{10,16}$/;
    return (new_pwd != '' && new_pwd != 'undefined' && regex.test(new_pwd));//리턴값 지정.
}

//비밀번호 변경 여부 확인을 위한 변수
var success = "nope";

function pwd_change(){
	var cur_pwd = document.getElementById("cur_pwd").value;
	var new_pwd = document.getElementById("new_pwd").value;
    var new_conf = document.getElementById("new_conf").value;
    console.log(cur_pwd);
    console.log(new_pwd);
    console.log(new_conf);
    console.log(all_logout.checked);
    
	
	if(cur_pwd != "" && new_pwd != "" && new_conf != "" && all_logout.checked == true){
		if(cur_save != new_save && all_logout.checked == true){
			alert("새로운 비밀번호로 다시 로그인 해주세요.");
			success = "ok";
			
		}else if(cur_save == new_save && all_logout.checked == true){
			alert("현재 비밀번호와 새로 입력하신 비밀번호가 일치합니다.\n변경하실 비밀번호를 다시 입력해주세요.");
			success = "nope";
		}else if(cur_save != new_save && all_logout.checked == false){
			alert("로그아웃 동의 항목을 체크하신 후 '확인'버튼을 눌러주세요.");
			success = "nope";
		}else{
			alert("다시 입력해주세요.");
			success = "nope";
		}
	}else{
		alert("빈 칸을 다 채우신 후 '확인'버튼을 눌러주세요.");
		success = "nope";
	}
	
}

$(document).ready(function(){
    
    $(".ok").click(function(){
    	if(success == "ok"){
    		change_action();
    	}else{
    		return false;
    	}
    });

});

//자바 스크립트 내에서 ContextPath를 사용하기 위한 함수
function getContextPath() {
    var hostIndex = location.href.indexOf( location.host ) + location.host.length;
    return location.href.substring( hostIndex, location.href.indexOf('/', hostIndex + 1) );
}

function change_action(){
    document.forms["frmSubmit"].action =  getContextPath() + "/nexon.gd?type=pwdChange";
}



var all_logout = document.getElementById("all_logout");