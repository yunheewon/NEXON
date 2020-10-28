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
    <title>비밀번호 변경</title>
    <script type="text/javascript" src="${contextPath}/js/jquery-2.1.1.min.js"></script>
    <script type="text/javascript" src="${contextPath}/js/jquery-ui.min.js"></script>
    <script type="text/javascript" src="${contextPath}/js/jquery.easing.1.3.js"></script>
    <script type="text/javascript" src="${contextPath}/js/prefixfree.min.js"></script>
    <link rel="stylesheet" href="${contextPath}/css/pwd_change.css">
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
        <!--pwd_info 영역-->
        <div class="pwd_info">
            <!--pwd_info_tit 영역-->
            <div class="pwd_info_tit">
                <h2>비밀번호 변경</h2>
                <p>비밀번호는 주기적으로 변경해주시기 바랍니다.</p>
            </div>
            <!--//pwd_info_tit 영역-->
            <!--input_wrapper 영역-->
            <form class="input_wrapper" method="post" name="frmSubmit" action="#">
                <ul>
                    <li class="current_wrapper">
                        <span>현재 비밀번호</span>
                        <input type="password" name="cur_pwd" id="cur_pwd" onchange="cur_check()">
                    </li>
                    <li class="new_wrapper">
                        <span>새 비밀번호</span>
                        <input type="password" name="new_pwd" id="new_pwd" onchange="same_check()">
                        <p>영문/숫자/특수문자를 조합하여 10~16자로 입력해주세요.</p>
                    </li>
                    <li class="conf_wrapper">
                        <span>새 비밀번호 확인</span>
                        <input type="password" name="new_conf" id="new_conf" onchange="same_check()">
                        <p id="warning_msg">비밀번호를 다시 한번 입력해주세요.</p>
                    </li>
                </ul>
                <div class="all_logout_wrap">
                    <input type="checkbox" name="all_logout" id="all_logout">
                    <label for="all_logout">모든 모바일앱에서 로그아웃 합니다.</label>
                </div>
                <div class="btn_control">
                    <input type="submit" value="확인" class="ok" onclick="pwd_change()">
                    <input type="reset" value="새로입력" class="reset">
                </div>
            </form>
            <!--//input_wrapper 영역-->
        </div>
        <!--//pwd_info 영역-->
    </div>
    <!--//content_wrapper 영역-->
    <!--footer 영역-->
    <footer>
        <p class="copyrihgt">© NEXON Korea Coporationi All Right Reserved.</p>
    </footer>
    <!--//footer 영역-->
    <script src="${contextPath}/js/pwd_change.js"></script>
</body>
</html>