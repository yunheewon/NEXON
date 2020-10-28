$(document).ready(function(){
    var fileTarget = $('.add_file .upload-hidden');//찾아서 써놓긴했는데 해놓은 이유를 모르겠음. -> 굴러가는 이유를 질문 

    fileTarget.on('change', function(){//값이 변경되면 실행
        /*
        FileReader란?
        웹 애플리케이션이 비동기적으로 데이터를 읽기 위하여 읽을 파일을 가리키는 File 혹은 Blob객체를 이용해
        파일의 내용을 읽고 사용자의 컴퓨터에 저장하는 것을 가능하게 합니다.
        */
        if(window.FileReader){//FileReader가 작동할 때 실행되는 조건문
            var filename = $(this)[0].files[0].name;//input태그의 type="file" 중 첫번째 값의 이름만 추출하는 변수  
        }else{
            var filename = $(this).val().split('/').pop().split('\\').pop();//파일명만 추출
        }

        $(this).siblings('.upload-name').val(filename);//추출한 파일명 삽입
        
    });

    $('#del_filename').click(function(){//파일삭제 버튼을 클릭하면 실행
        var result = confirm("파일을 삭제하시겠습니까?");
        
        if(result == true){//확인을 눌렀을 때 실행되는 조건문
            $('.upload-name').val("파일선택");
        }else{//취소를 눌렀을 때 실행되는 조건문
            return false;
        }
        
    });
});