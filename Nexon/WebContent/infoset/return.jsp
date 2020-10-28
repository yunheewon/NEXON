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
    <title>수신설정</title>
    <link rel="stylesheet" href="${contextPath}/css/return.css">
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
        <!--return_set 영역-->
        <div class="return_set">
            <!--return_set_tit 영역-->
            <div class="return_set_tit">
                <h2>수신 설정</h2>
                <p>넥슨의 알찬 정보를 이메일 문자로 받으실 수 있습니다.</p>
            </div>
            <!--//return_set_tit 영역-->
            <!--input_wrapper 영역-->
            <div class="input_wrapper">
                <h3>수신설정</h3>
                <dl>
                    <dt>이메일 수신동의</dt>
                    <dd>
                        <input type="checkbox" name="email" id="email">
                        <label for="email"><strong>(선택)</strong> 새 게임 출시, 업데이트 안내, 이벤트 등의 정보를 <strong>이메일</strong>로 받겠습니다.</label>
                    </dd>
                    <dt>휴대폰 문자 수신동의</dt>
                    <dd>
                        <input type="checkbox" name="phone_msg" id="phone_msg">
                        <label for="phone_msg"><strong>(선택)</strong> 새 게임 출시, 업데이트 안내, 이벤트 등의 정보를 <strong>문자</strong>로 받겠습니다.</label>
                    </dd>
                    <dt>쪽지 수신설정</dt>
                    <dd>
                        쪽지 수신설정은 [쪽지 > 설정 > 쪽지 수신설정]에서 가능합니다. <a href="#">바로가기</a>
                    </dd>
                </dl>
                <div class="btn_control">
                    <input type="button" value="확인" class="ok">
                    <input type="button" value="새로입력" class="reset">
                </div>
            </div>
            <!--//input_wrapper 영역-->
        </div>
        <!--//return_set 영역-->
    </div>
    <!--//content_wrapper 영역-->
    <!--footer 영역-->
    <footer>
        <p class="copyrihgt">© NEXON Korea Coporationi All Right Reserved.</p>
    </footer>
    <!--//footer 영역-->
</body>
</html>