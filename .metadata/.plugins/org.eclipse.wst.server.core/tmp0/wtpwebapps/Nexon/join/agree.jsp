<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<c:set var="contextPath" value="<%= request.getContextPath()%>"></c:set>  
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="author" content="윤희원">
    <title>약관동의</title>
    <link rel="stylesheet" href="${contextPath}/css/agree.css">
</head>
<body>
    <!--gnb_wrapper 영역-->
    <header id="gnb_wrapper">
        <!--logo 영역-->
        <div class="logo">
            <h1><img src="${contextPath}/images/join_logo.PNG" alt="로고"></h1>
        </div>
        <!--//logo 영역-->
        <!--side_menu 영역-->
        <ul class="side_menu">
            <li><a href="${contextPath}/index.jsp">넥슨닷컴</a></li>
            <li><a href="${contextPath}/join/join.jsp">회원가입</a></li>
            <li><a href="${contextPath}/login/login.jsp">로그인</a></li>
        </ul>
        <!--//side_menu 영역-->
    </header>
    <!--//gnb_wrapper 영역-->
    <hr>
    <!--user_agreement 영역-->
    <form id="user_agreement" method="post" action="#">
        <h1>약관동의</h1>
        <!--check_all 영역-->
        <div class="check_all" >
            <input type="checkbox" name="chk_all" id="chk_all"  onclick="useTerm_check();">
            <label for="check_all">
                넥슨 서비스 이용약관, 개인정보 수집 및 이용, 유효기간 5년(선택),<br>
                이벤트 등 프로모션 안내 메일 수신(선택)에 <strong>모두 동의</strong> 합니다.
            </label>
        </div>
        <!--//check_all 영역-->
        <!--service_ag 영역-->
        <div class="service_ag">
            <!--chk_square 영역-->
            <div class="chk_square">
                <input type="checkbox" name="chk_ser" id="chk_ser" onclick="unLockBox();">
                <label for="chk_ser">넥슨 서비스 이용약관 동의</label>
            </div>
            <!--//chk_square 영역-->
            <!--ser_content 영역-->
            <div class="ser_content">
                <strong><제1장 총칙></strong><br><br>
               	제1조(목적)<br>
               	이 약관은 (주)넥슨코리아(이하 "회사"라고 함)가 제공하는 게임 및 제반 서비스의 이용과 관련하여 회원과 회사 간의 조건 및 절차에 관한 기본적인 사항을 정함을 목적으로 합니다.<br>
               	제2조(용어의 정의)<br>
                ① 이 약관에서 사용하는 용어의 정의는 다음과 같습니다.<br>
                1. 이용 계약: 회사가 제공하는 서비스 이용과 관련하여 회사와 이용 고객 간에 체결하는 계약을 말합니다.<br>
                2. 회원: 회사가 제공하는 절차에 따른 가입 신청 및 이용 계약 체결을 완료한 뒤, ID를 발급받아 회사의 서비스를 이용할 수 있는 자를 말합니다.<br>
                3. ID: 회원 식별과 서비스 이용을 위하여 회원이 선정하고 회사가 승인하는 문자, 특수문자, 숫자 등의 조합을 말합니다.<br>
                4. 체험 ID: 회원 식별과 회사가 제공하는 특정 서비스를 이용하기 위하여 회원이 선정하고 회사가 승인하는 문자, 특수문자, 숫자 등을 말합니다.<br>
                5. PASSWORD(이하 "비밀번호"라고 함): 회원이 자신의 ID 또는 체험 ID와 일치하는 이용 고객임을 확인하기 위해 선정한 문자, 특수문자, 숫자 등의 조합을 말합니다.<br>
                6. 회원 탈퇴: 회원이 이용 계약을 해지함을 의미합니다.<br>
                7. 계정 : ID에 수반하여 게임 이용을 위해 회원이 별도로 생성하는 캐릭터, 게임 ID 등을 의미합니다.<br>
                ② 이 약관에서 사용하는 용어의 정의는 제1항에서 정하는 것을 제외하고는 관계 법령 및 각 서비스 별 안내에서 정하는 바에 의합니다. 관계 법령과 각 서비스 별 안내에서 정하지 않는 것은 일반적인 상관례에 의합니다.
            </div>
            <!--//ser_content 영역-->
        </div>
        <!--//service_ag 영역-->
        <!--privacy_ag 영역-->
        <div class="privacy_ag">
            <!--chk_square 영역-->
            <div class="chk_square">
                <input type="checkbox" name="chk_pri" id="chk_pri" onclick="unLockBox();">
                <label for="chk_pri">개인정보 수집 및 이용 동의</label>
            </div>
            <!--//chk_square 영역-->
            <!--pri_content 영역-->
            <div class="pri_content">
                <strong>[개인정보 수집 및 이용 동의]</strong><br><br>
                (주)넥슨코리아는 다음과 같이 개인정보를 수집 및 이용하고 있습니다.<br>
                - 수집 및 이용 목적: 회원 가입, 게임서비스 제공, 이용자 식별, 공지사항 전달<br>
                - 항목: ID, 닉네임, 비밀번호, 이메일주소<br>
                - 수집 및 이용 목적: 본인확인, 이용자 식별, 부정이용 방지, 중복가입 방지, 공지사항 전달<br>
                - 항목: 이름, 생년월일, 성별, 내외국인정보, 이동통신사정보, 휴대폰번호, 연계정보(CI), 중복가입정보(DI)<br>
                - 보유 및 이용기간: 회원탈퇴일로부터 30일 (법령에 특별한 규정이 있을 경우 관련 법령에 따라 보관)<br>
               	동의를 거부할 경우 회원가입이 불가능 합니다.<br>
               	외부 계정을 이용하는 경우 이용자가 동의한 범위 내에서만 개인정보를 제공받고 처리합니다.<br>
               	이벤트 등 프로모션 알림 전송을 위해 선택적으로 개인정보를 이용할 수 있습니다.<br><br>
               	※ 그 외의 사항 및 자동 수집 정보와 관련된 사항은 개인정보처리방침을 따릅니다.
            </div>
            <!--//pri_content 영역-->
        </div>
        <!--//privacy_ag 영역-->
        <!--priterm_ag 영역-->
        <div class="priterm_ag">
            <input type="checkbox" name="chk_priterm" id="chk_priterm" onclick="unLockBox();">
            <label for="chk_priterm">
                <strong>(선택)</strong> 개인정보 유효기간을 5년으로 선택합니다.
                <p>선택하지 않으시면 1년으로 설정됩니다.</p>
            </label>
        </div>
        <!--//priterm_ag 영역-->
        <!--event_ag 영역-->
        <div class="event_ag">
            <input type="checkbox" name="chk_eve" id="chk_eve" onclick="unLockBox();">
            <label for="chk_eve">
                <strong>(선택)</strong> 이벤트 등 프로모션 안내 메일을 수신합니다.
            </label>
        </div>
        <!--//event_ag 영역-->
        <!--next_btn_wrap 영역-->
        <div id="next_btn_wrap">
            <!--<a href="#" class="next_btn" onclick="this.href=need_field();">다음</a> -->
            <input type="submit" class="next_btn" onclick="need_field(this.form);" value="다음">
        </div>
        <!--//next_btn_wrap 영역-->
    </form>
    <!--//user_agreement 영역-->
    <!--footer 영역-->
    <footer>
        <hr>
        <p class="copyrihgt">© NEXON Korea Coporationi All Right Reserved.</p>
    </footer>
    <!--//footer 영역-->
    <script src="${contextPath}/js/agree.js"></script>
</body>
</html>