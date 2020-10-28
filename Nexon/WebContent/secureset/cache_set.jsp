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
    <title>넥슨캐시보안설정</title>
    <link rel="stylesheet" href="${contextPath}/css/cache_set.css">
    <script>
        function warn_msg(){
            alert("준비 중 입니다.");
        }
    </script>
</head>
<body>
    <!--header_wrapper 영역-->
    <header id="header_wrapper">
        <nav class="header_deco">
            <h1><img src="https://ssl.nx.com/S2/membership/2011/global/tit_members.gif" alt="넥슨멤버스"></h1>
            <ul>
                <li class="info"><a href="${contextPath}/infoset/info_change.jsp"><span>내정보관리</span></a></li>
                <li class="privacy"><a href="${contextPath}/secureset/login_set.jsp" class="on"><span>보안설정</span></a></li>
                <li class="cache"><a href="${contextPath}/error.jsp"><span>넥슨캐시</span></a></li>
                <li class="qna"><a href="${contextPath}/qna/qna.jsp"><span>고객센터</span></a></li>
            </ul>
        </nav>
    </header>
    <!--//header_wrapper 영역-->
    <!--content_wrapper 영역-->
    <div id="content_wrapper">
        <!--side_section 영역-->
        <aside class="side_section">
            <h3>내정보보안설정</h3>
            <!--top_section 영역-->
            <ul class="top_section">
                <li><a href="${contextPath}/secureset/login_set.jsp">로그인관리</a></li>
                <li><a href="${contextPath}/secureset/id_set.jsp">아이디생성잠금</a></li>
                <li><a href="${contextPath}/secureset/cache_set.jsp">넥슨캐시보안설정</a></li>
            </ul>
            <!--//top_section 영역-->
            <!--bottom_section 영역-->
            <ul class="bottom_section">
                <li><a href="${contextPath}/notice/notice_list.jsp"><img src="${contextPath}/images/notice_mini_logo.png" alt="공지사항">공지사항</a></li>
                <li><a href="${contextPath}/qna/qna.jsp"><img src="${contextPath}/images/qna_mini_logo.png" alt="고객센터">고객센터</a></li>
            </ul>
            <!--//bottom_section 영역-->
        </aside>
        <!--//side_section 영역-->
        <!--cache_set 영역-->
        <div class="cache_set">
            <!--cache_set_tit 영역-->
            <div class="cache_set_tit">
                <h2>넥슨캐시보안설정</h2>
                <p>고객님의 소중한 넥슨캐시를 안전하게 관리할 수 있습니다..</p>
            </div>
            <!--//cache_set_tit 영역-->
            <!--more_info 영역-->
            <div class="more_info">
                <span class="blue_tit">넥슨캐시 보안설정이란?</span>
                <span class="small_tit">소중한 넥슨캐시를 안전하게 관리하는법!</span>
                <span class="explain_1">
                    넥슨캐시 보안설정이란 넥슨캐시를 사용하실 게임을 미리 선택하여,<br>
                    해당 게임에서만 캐시를 사용할 수 있도록 한 보안 서비스입니다.<br>
                    타인에 의한 부정한 접근을 막고, 원하시는 게임에서만 넥슨캐시를<br>
                    안전하게 사용하세요.<br>
                </span>
            </div>
            <!--//more_info 영역-->
            <input type="button" value="넥슨캐시 보안설정 내역확인/수정" class="set_btn" onclick="warn_msg();">
        </div>
        <!--//cache_set 영역-->
    </div>
    <!--//content_wrapper 영역-->
    <!--footer 영역-->
    <footer>
        <p class="copyrihgt">© NEXON Korea Coporationi All Right Reserved.</p>
    </footer>
    <!--//footer 영역-->
</body>
</html>