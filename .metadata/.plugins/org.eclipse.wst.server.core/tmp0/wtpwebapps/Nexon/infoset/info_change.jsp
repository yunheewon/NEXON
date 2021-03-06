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
    <title>개인정보변경</title>
    <link rel="stylesheet" href="${contextPath}/css/info_change.css">
</head>
<body>
    <!--header_wrapper 영역-->
    <header id="header_wrapper">
        <nav class="header_deco">
            <h1><img src="https://ssl.nx.com/S2/membership/2011/global/tit_members.gif" alt="넥슨멤버스"></h1>
            <ul>
                <li class="info"><a href="${contextPath}/infoset/info_change.jsp" class="on"><span>내정보관리</span></a></li>
                <li class="privacy"><a href="${contextPath}/secureset/login_set.jsp"><span>보안설정</span></a></li>
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
            <h3>내정보관리</h3>
            <!--top_section 영역-->
            <ul class="top_section">
                <li><a href="${contextPath}/infoset/info_change.jsp">개인정보변경</a></li>
                <li><a href="${contextPath}/infoset/id_change.jsp">넥슨ID변경</a></li>
                <li><a href="${contextPath}/infoset/pwd_change.jsp">비밀번호변경</a></li>
                <li><a href="${contextPath}/infoset/return.jsp">수신설정</a></li>
                <li><a href="${contextPath}/infoset/resign.jsp">회원탈퇴</a></li>
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
        <!--pri_info 영역-->
        <div class="pri_info">
            <!--pri_info_tit 영역-->
            <div class="pri_info_tit">
                <h2>개인정보 변경</h2>
                <p>고객님의 개인정보보호를 위해 최선을 다하겠습니다.</p>
            </div>
            <!--//pri_info_tit 영역-->
            <!--input_wrapper 영역-->
            <div class="input_wrapper">
                <ul>
                    <li class="id_wrap">
                        <span>넥슨ID</span>
                        <input type="text" name="id" id="id">
                        <input type="button" value="넥슨ID 변경" onclick="id_popup();">
                    </li>
                    <li class="nickname_wrap">
                        <span>닉네임</span>
                        <input type="text" name="nickname" id="nickname">
                        <input type="button" value="변경">
                    </li>
                    <li class="phone_wrap">
                        <span>휴대폰</span>
                        <input type="tel" name="phone" id="phone">
                        <input type="button" value="변경">
                        <input type="button" value="삭제">
                    </li>
                    <li class="pri_date_wrap">
                        <div class="radio_wrap">
                            <span>개인정보 유효기간</span>
                            <input type="radio" name="5years" id="5years"> 5년
                            <input type="radio" name="1years" id="1years"> 1년
                            <input type="radio" name="untill_resign" id="untill_resign"> 탈퇴시까지
                        </div>
                        <input type="button" value="변경">
                    </li>
                </ul>
            </div>
            <!--//input_wrapper 영역-->
        </div>
        <!--//pri_info 영역-->
    </div>
    <!--//content_wrapper 영역-->
    <!--footer 영역-->
    <footer>
        <p class="copyrihgt">© NEXON Korea Coporationi All Right Reserved.</p>
    </footer>
    <!--//footer 영역-->
	<script type="text/javascript" src="${contextPath}/js/info_change.js"></script>
</body>
</html>