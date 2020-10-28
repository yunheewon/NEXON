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
    <title>정보입력</title>
    <link rel="stylesheet" href="${contextPath}/css/register.css">
    <script type="text/javascript" src="${contextPath}/js/jquery-2.1.1.min.js"></script>
    <script type="text/javascript" src="${contextPath}/js/jquery-ui.min.js"></script>
    <script type="text/javascript" src="${contextPath}/js/jquery.easing.1.3.js"></script>
    <script type="text/javascript" src="${contextPath}/js/prefixfree.min.js"></script>
    <script type="text/javascript" src="${contextPath}/js/jquery.mousewheel.min.js"></script>
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
    <!--info_wrapper 영역-->
    <form id="info_wrapper" method="post" name="frmSubmit" action="#">
        <h1>정보입력</h1>
        <!--id_wrap 영역-->
        <div class="id_wrap">
            <p class="info_title">아이디</p>
            <input id="userId" name="userId" type="text" placeholder=" 아이디를 입력해주세요.">
            <input type="button" value="중복확인" class="overlap_btn" id="overlap_id" name="overlap_id" onclick="id_check();">
        </div>
        <!--//id_wrap 영역-->
        <!--pwd_wrap 영역-->
        <div class="pwd_wrap">
            <p class="info_title">비밀번호</p>
            <input id="userPw" name="userPw" type="password" placeholder=" 비밀번호를 입력해주세요." onchange="same_check()">
        </div>
        <!--//pwd_wrap 영역-->
        <!--pwd_conf 영역-->
        <div class="pwd_conf">
            <p class="info_title">비밀번호 확인</p>
            <input id="userPwConfirm" name="userPwConfirm" type="password" placeholder=" 비밀번호를 한 번 더 입력해주세요." onchange="same_check()">
            <p id="warning_msg"></p>
        </div>
        <!--//pwd_conf 영역-->
        <!--nickname_wrap 영역-->
        <div class="nickname_wrap">
            <p class="info_title">닉네임</p>
            <input id="nickName" name="nickName" type="text" placeholder=" 닉네임을 입력해주세요.">
        </div>
        <!--//nickname_wrap 영역-->
        <!--email_wrap 영역-->
        <div class="email_wrap">
            <p class="info_title">이메일</p>
            <input type="email" name="email" id="email" placeholder=" 이메일을 입력해주세요.">
            <input type="button" value="중복확인" class="overlap_btn" name="overlap_email" onclick="email_check();">
        </div>
        <!--//email_wrap 영역-->
        <!--next_btn_wrap 영역-->
        <div class="next_btn_wrap">
            <input type="submit" value="작성완료" class="next_btn" onclick="join();">
        </div>
        <!--//next_btn_wrap 영역-->
    </form>
    <!--//info_wrapper 영역-->
    <!--footer 영역-->
    <footer>
        <hr>
        <p class="copyrihgt">© NEXON Korea Coporationi All Right Reserved.</p>
    </footer>
    <!--//footer 영역-->
    <script src="${contextPath}/js/register.js"></script>
</body>
</html>