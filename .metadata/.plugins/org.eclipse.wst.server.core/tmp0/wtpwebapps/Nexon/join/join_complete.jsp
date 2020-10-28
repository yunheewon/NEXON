<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="<%= request.getContextPath()%>"></c:set> 
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="author" content="윤희원">
    <title>가입완료</title>
    <link rel="stylesheet" href="${contextPath}/css/join_complete.css">
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

    <!--complete_wrap 영역-->
    <div id="complete_wrap">
        <h1>가입 완료</h1>
        <!--top_content 영역-->
        <div class="top_content">
            <!--left_img 영역-->
            <div class="left_img">
                <img src="${contextPath}/images/welcome.PNG" alt="환영합니다">
            </div>
            <!--//left_img 영역-->
            <!--right_msg 영역-->
            <div class="right_msg">
                <h2>환영합니다!</h2>
                <strong>넥슨 회원가입이 완료 되었습니다.</strong>
                <br>
                <p>
                    넥슨ID는 <strong class="join_id">user@gmail.com</strong> 입니다.
                </p>
                <input type="button" value="넥슨 홈 가기" class="go_main_btn" onclick="location.href='${contextPath}/index.jsp'">
            </div>
            <!--//right_msg 영역-->
        </div>
        <!--//top_content 영역-->
        <!--bottom_content 영역-->
        <div class="bottom_content">
            <div class="title_msg">
                <p><strong>넥슨 게임</strong>을 이용하기 위해서는 <strong>로그인 및 본인확인</strong>이 필요합니다.</p>
                <p>고객님께서 <strong>해당하시는 회원의 유형을 선택</strong>해주세요.</p>
            </div>
            <!--identifi 영역-->
            <div class="identifi">
                <p>만 14세 미만</p>
                <strong>어린이회원</strong>
                <br>
                <a href="#">본인확인</a>
            </div>
            <!--//identifi 영역-->
            <!--identifi 영역-->
            <div class="identifi">
                <p>만 14세~18세 미만</p>
                <strong>청소년회원</strong>
                <br>
                <a href="#">본인확인</a>
            </div>
            <!--//identifi 영역-->
            <!--identifi 영역-->
            <div class="identifi">
                <p>만 18세 이상</p>
                <strong>일반회원</strong>
                <br>
                <a href="#">본인확인</a>
            </div>
            <!--//identifi 영역-->
        </div>
        <!--//bottom_content 영역-->
        <!--add_explain 영역-->
        <div class="add_explain">
            <p><strong>본인확인을 하지 않아도 가입하신 넥슨ID로 로그인이 가능</strong>합니다.</p>
        </div>
        <!--//add_explain 영역-->
    </div>
    <!--//complete_wrap 영역-->
    <!--footer 영역-->
    <footer>
        <hr>
        <p class="copyrihgt">© NEXON Korea Coporationi All Right Reserved.</p>
    </footer>
    <!--//footer 영역-->
</body>
</html>