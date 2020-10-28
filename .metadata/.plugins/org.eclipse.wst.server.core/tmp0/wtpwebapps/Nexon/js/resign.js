//비밀번호 변경 여부 확인을 위한 변수
var success = "nope";

//비밀번호 유효성 검사 및 예외처리
/*function pwd_check(){
	var pwd = document.getElementById("pwd").value;
	
	console.log(pwd);
	
	if(pwd != null){
		if( pwd == '' || pwd == 'undefined') return;
	}else{
		if(!pwd_confirm(pwd)){//비밀번호 유효성 검사 함수(pwd_confirm)를 통해 체크한 비밀번호가 형식과 맞지 않을 경우 실행하는 조건문
            var result = alert('잘못된 형식의 비밀번호입니다.\n다시 입력해주세요.');
            if(result = true)//alert이 출력될 경우 true.
            	document.getElementById("pwd").focus();//비밀번호를 다시 입력하게끔 비밀번호 입력칸으로 focus를 돌림.        
            else 
                return false;
        }else{
        	document.getElementById("resign_btn").focus();
        	
        }
	}
		
}*/

function resign(){
	var pwd = document.getElementById("pwd").value;
	
	console.log(pwd);
	
	if(pwd != null){
		//if( pwd == '' || pwd == 'undefined') return;
		
		if(!pwd_confirm(pwd)){//비밀번호 유효성 검사 함수(pwd_confirm)를 통해 체크한 비밀번호가 형식과 맞지 않을 경우 실행하는 조건문
            var result = alert('잘못된 형식의 비밀번호입니다.\n다시 입력해주세요.');
            if(result = true)//alert이 출력될 경우 true.
            	document.getElementById("pwd").focus();//비밀번호를 다시 입력하게끔 비밀번호 입력칸으로 focus를 돌림.        
            else 
                return false;
        }else{
	    		var more_resign_check = confirm("정말로 회원 탈퇴를 진행하시겠습니까?");
	    		if(more_resign_check == true){
	    			alert("회원 탈퇴가 완료되었습니다.\n그동안 이용해주셔서 감사합니다.");
	    			success = "ok";
	    		}else{
	    			alert("요청이 취소되었습니다.");
	    			success = "nope";
	    		}
        }

	}else{
		alert("비밀번호를 입력해주세요.");
		document.getElementById("pwd").focus();
	}
}

//비밀번호 유효성 검사 함수
function pwd_confirm(pwd){
    //regex : 비밀번호 정규 표현식
    var regex= /^[A-Za-z0-9]{10,16}$/;
    return (pwd != '' && pwd != 'undefined' && regex.test(pwd));//리턴값 지정.
}

$(document).ready(function(){
	$("#resign_btn").click(function(){
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
    document.forms["frmSubmit"].action =  getContextPath() + "/nexon.gd?type=resign";
}