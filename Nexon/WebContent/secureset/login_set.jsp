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
    <title>로그인관리</title>
    <link rel="stylesheet" href="${contextPath}/css/login_set.css">
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
        <!--login_set 영역-->
        <div class="login_set">
            <!--login_set_tit 영역-->
            <div class="login_set_tit">
                <h2>로그인 관리</h2>
                <p>고객님의 로그인 정보 확인을 통해 안전하게 계정을 관리할 수 있습니다.</p>
            </div>
            <!--//login_set_tit 영역-->
            <!--more_info 영역-->
            <div class="more_info">
                <span class="blue_tit">로그인 관리란?</span>
                <span class="small_tit">넥슨 아이디 로그인을 안전하게 관리하세요!</span>
                <span class="explain_1">
                    해외 IP에 대해서 로그인 차단을 설정하실 수 있습니다.<br>
                    해외 로그인 차단 설정하신 고객님께서 해외 IP에서 접속하시는 경우,<br>
                    본인확인을 통해 안전하게 로그인할 수 있도록 보호합니다. 해외 사용자이시거나<br>
                    해외로 여행, 유학, 출장을 가실 경우에는 해제해 주시기 바랍니다.<br>
                </span>
                <span class="explain_2">
                    로그인 내역 내 고객님이 이용하지 않는 IP가 확인되어 계정도용임이<br>
                    의심되는 경우에는 먼저 비밀번호변경을 통하여 고객님의 정보를<br>
                    보호해 주시기 바랍니다.<br>
                </span>
            </div>
            <!--//more_info 영역-->
            <input type="button" value="로그인 관리" class="set_btn">
        </div>
        <!--//login_set 영역-->
    </div>
    <!--//content_wrapper 영역-->
    <!--footer 영역-->
    <footer>
        <p class="copyrihgt">© NEXON Korea Coporationi All Right Reserved.</p>
    </footer>
    <!--//footer 영역-->
</body>
</html>