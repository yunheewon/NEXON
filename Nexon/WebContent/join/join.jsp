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
    <title>회원가입</title>
    <link rel="stylesheet" href="${contextPath}/css/join.css">
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
    <!--join_way 영역-->
    <div id="join_way">
        <img src="${contextPath}/images/join_way.PNG" alt="환영합니다">
        <hr>
        <h2>넥슨 회원가입 방식을 선택해주세요.</h2>
        <!--way_btn_wrapper 영역-->
        <ul class="way_btn_wrapper">
            <li>
                <a href="${contextPath}/join/agree.jsp">
                    <img src="${contextPath}/images/email_join.PNG" alt="이메일로 회원가입">
                </a>
            </li>
            <li>
                <a href="${contextPath}/join/agree.jsp">
                    <img src="${contextPath}/images/facebook_join.PNG" alt="페이스북으로 회원가입">
                </a>
            </li>
            <li>
                <a href="${contextPath}/join/agree.jsp">
                    <img src="${contextPath}/images/google_join.PNG" alt="구글로 회원가입">
                </a>
            </li>
            <li>
                <a href="${contextPath}/join/agree.jsp">
                    <img src="${contextPath}/images/naver_join.PNG" alt="네이버로 회원가입">
                </a>
            </li>
            <li>
                <a href="${contextPath}/join/agree.jsp">
                    <img src="${contextPath}/images/apple_join.PNG" alt="애플로 회원가입">
                </a>
            </li>
        </ul>
        <!--//way_btn_wrapper 영역-->
    </div>
    <!--//join_way 영역-->
    <!--footer 영역-->
    <footer>
        <hr>
        <p class="copyrihgt">© NEXON Korea Coporationi All Right Reserved.</p>
    </footer>
    <!--//footer 영역-->
</body>
</html>