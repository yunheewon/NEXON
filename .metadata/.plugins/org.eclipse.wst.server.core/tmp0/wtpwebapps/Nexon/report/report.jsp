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
    <title>신고하기(신고이용안내) - 신고안내</title>
    <link rel="stylesheet" href="${contextPath}/css/report.css">
    <link rel="stylesheet" href="${contextPath}/css/menu.css">
    <script type="text/javascript" src="${contextPath}/js/jquery-2.1.1.min.js"></script>
    <script type="text/javascript" src="${contextPath}/js/jquery-ui.min.js"></script>
    <script type="text/javascript" src="${contextPath}/js/jquery.easing.1.3.js"></script>
    <script type="text/javascript" src="${contextPath}/js/prefixfree.min.js"></script>
    <script type="text/javascript" src="${contextPath}/js/menu.js"></script>
</head>
<body>
    <!--gnb_wrapper 영역-->
    <header id="gnb_wrapper">
        <!--left_gnb 영역-->
        <div class="left_gnb">
            <div id="all_menu" class="all_menu">
                <span class="menu_icon"></span>
                <span class="menu_font">메뉴</span>
            </div>
        </div>
        <!--//left_gnb 영역-->
        <!--logo_gnb 영역-->
        <h1 class="logo_gnb">
            <a href="${contextPath}/index.jsp"><img src="${contextPath}/images/main_logo.png" alt="NEXON"></a>
        </h1>
        <!--//logo_gnb 영역-->
        <!--right_gnb 영역-->
        <div class="right_gnb">
            <div class="join_gnb">
                <a href="${contextPath}/join/join.jsp">회원가입</a>
            </div>
            <div class="login_gnb">
                <a href="${contextPath}/login/login.jsp">로그인</a>
            </div>
        </div>
        <!--//right_gnb 영역-->
    </header>
    <!--//gnb_wrapper 영역-->

    <!--sidebar_menu 영역-->
    <aside id="sidebar_menu">
        <!--menu_content 영역-->
        <div class="menu_content">
            <!--control 영역-->
            <div class="control">
                <button class="close">
                    <img src="${contextPath}/images/close.png" alt="닫기">
                </button>
            </div>
            <!--control 영역-->
            <hr>
            <!--game_list 영역-->
            <div class="game_list">
                <!--game_tab 영역-->
                <nav class="game_tab">
                    <ul>
                        <li><input class="pc_btn" type="button" value="PC 게임"></li>
                        <li><input class="mobile_btn" type="button" value="모바일 게임"></li>
                    </ul>
                    <a href="${contextPath}/qna/qna.jsp">고객센터</a>
                </nav>
                <!--//game_tab 영역-->
                <!--pc_game 영역-->
                <div class="pc_list">
                    <!--pc_cell 영역-->
                    <nav class="pc_cell">
                        <h3>A~Z</h3>
                        <ul>
                            <li>EA SPORT FIFA ONLINE 4</li>
                            <li>V4</li>
                        </ul>
                        <h3>ㄱ~ㄹ</h3>
                        <ul>
                            <li>던전앤파이터</li>
                            <li>드래곤네스트</li>
                            <li>로스트사가</li>
                        </ul>
                        <h3>ㅁ~ㅅ</h3>
                        <ul>
                            <li>마비노기</li>
                            <li>마비노기영웅전</li>
                            <li>메이플스토리</li>
                            <li>메이플스토리2</li>
                            <li>바람의나라</li>
                            <li>버블파이터</li>
                            <li>사이퍼즈</li>
                            <li>서든어택</li>
                        </ul>
                    </nav>
                    <!--//pc_cell 영역-->
                    <!--pc_cell 영역-->
                    <nav class="pc_cell">
                        <h3>ㅇ~ㅈ</h3>
                        <ul>
                            <li>아스가르드</li>
                            <li>아키에이지</li>
                            <li>어둠의 전설</li>
                            <li>엘소드</li>
                            <li>이카루스</li>
                            <li>일랜시아</li>
                        </ul>
                        <h3>ㅊ~ㅋ</h3>
                        <ul>
                            <li>천애명월도</li>
                            <li>카운터스트라이크온라인</li>
                            <li>카트라이더</li>
                            <li>커츠펠</li>
                            <li>크레이지아케이드</li>
                            <li>클로저스</li>
                        </ul>
                        <h3>ㅌ~ㅎ</h3>
                        <ul>
                            <li>테라</li>
                            <li>테일즈런너</li>
                            <li>테일즈위버</li>
                            <li>트리오브세이비어</li>
                            <li>파이널판타지14</li>
                            <li>프리스타일2</li>
                        </ul>
                    </nav>
                    <!--//pc_cell 영역-->
                </div>
                <!--//pc_game 영역-->
                <!--mobile_game 영역-->
                <div class="mobile_list">
                    <!--mobile_cell 영역-->
                    <nav class="mobile_cell">
                        <h3>A~Z</h3>
                        <ul>
                            <li>EA SPORT FIFA ONLINE 4 M</li>
                            <li>V4</li>
                        </ul>
                        <h3>ㄱ~ㄹ</h3>
                        <ul>
                            <li>고질라 디펜스 포스</li>
                            <li>다크어벤저3</li>
                            <li>런웨이 스토리</li>
                            <li>린: 더 라이트브링어</li>
                            <li>링토스 세계여행</li>
                        </ul>
                        <h3>ㅁ~ㅅ</h3>
                        <ul>
                            <li>메이플스토리 M</li>
                            <li>바람의나라: 연</li>
                            <li>삼국지조조선 Online</li>
                            <li>스페셜솔져</li>
                        </ul>
                    </nav>
                    <!--//mobile_cell 영역-->
                    <!--mobile_cell 영역-->
                    <nav class="mobile_cell">
                        <h3>ㅇ~ㅈ</h3>
                        <ul>
                            <li>엑스</li>
                            <li>오버히트</li>
                        </ul>
                        <h3>ㅊ~ㅋ</h3>
                        <ul>
                            <li>카운터사이드</li>
                            <li>카이저</li>
                            <li>카트라이더 러쉬플러스</li>
                            <li>크레이지아케이트 BnB M</li>
                        </ul>
                        <h3>ㅌ~ㅎ</h3>
                        <ul>
                            <li>트라하</li>
                        </ul>
                    </nav>
                    <!--//mobile_cell 영역-->
                </div>
                <!--//mobile_game 영역-->
            </div>
            <!--//game_list 영역-->
            <!--more_menu 영역-->
            <div class="more_menu">
                    <!--left_menu 영역-->
                    <nav class="left_menu">
                        <ul>
                            <li><img src="${contextPath}/images/list_icon.png" alt="내정보"><a href="${contextPath}/infoset/info_change.jsp"> 내정보</a></li>
                            <li><img src="${contextPath}/images/list_icon.png" alt="이벤트"><a href="${contextPath}/event/event.jsp"> 이벤트</a></li>
                        </ul>
                    </nav>
                    <!--//left_menu 영역-->
                    <!--right_menu 영역-->
                    <nav class="right_menu">
                        <ul>
                            <li><img src="${contextPath}/images/list_icon.png" alt="공지사항"><a href="${contextPath}/notice/notice_list.jsp"> 공지사항</a></li>
                            <li><img src="${contextPath}/images/list_icon.png" alt="고객센터"><a href="${contextPath}/qna/qna.jsp"> 고객센터</a></li>
                        </ul>
                    </nav>
                    <!--//right_menu 영역-->
            </div>
            <!--//more_menu 영역-->
        </div>
        <!--//menu_content 영역-->
    </aside>
    <!--//sidebar_menu 영역-->

    <!--nav_wrapper 영역-->
    <nav id="nav_wrapper">
        <ul>
            <li><a href="${contextPath}/notice/notice_list.jsp">공지사항</a></li>
            <li><a href="${contextPath}/event/event.jsp">이벤트</a></li>
            <li><a href="${contextPath}/qna/qna.jsp">고객센터</a></li>
        </ul>
    </nav>
    <!--//nav_wrapper 영역-->
    <!--content_wrapper 영역-->
    <div id="content_wrapper">
        <!--side_menu 영역-->
        <aside class="side_menu">
            <!--menu_wrap 영역-->
            <ul>
                <li><a href="${contextPath}/qna/qna.jsp">온라인<br>게임</a></li>
                <li><a href="${contextPath}/qna/qna_mobile.jsp">모바일<br>게임</a></li>
                <li><a href="https://security.nexon.com/main/index.aspx"><img src="http://help.nexon.com/image/Landing/b03feae4114a4fb7b05df9a41933a014.png" alt="넥슨보안센터"></a></li>
                <li><a href="https://schoolzone.nexon.com/page/nx.aspx?URL=Home/Index"><img src="http://help.nexon.com/image/Landing/fe8858e4fcf34948af39c37f0268855b.png" alt="스쿨존"></a></li>
                <li><a href="${contextPath}/qna/howto_qna.jsp">문의방법</a></li>
                <li><a href="${contextPath}/report/report.jsp">신고하기</a></li>
            </ul>
            <!--//menu_wrap 영역-->
        </aside>
        <!--//side_menu 영역-->
        <!--report_guide 영역-->
        <div class="report_guide">
            <h1>신고하기</h1>
            <p class="tit_exep">
                서비스를 이용하시면서 아래와 같은 상황이 발생할 때에는 신고하기를 이용해주세요.<br>
                넥슨은 여러분과 함께 건전한 인터넷 문화 공간 조성을 위해 노력하겠습니다.
            </p>
            <!--report_tab 영역-->
            <div class="report_tab">
                <a href="${contextPath}/report/report.jsp">신고이용안내</a>
                <a href="${contextPath}/report/punish_game.jsp">처벌기준</a>
            </div>
            <!--//report_tab 영역-->
            <strong>신고이용안내</strong>
            <ul class="rep_mini_tab">
                <li><a href="${contextPath}/report/report.jsp" class="on">신고안내</a></li>
                <li><a href="${contextPath}/report/howto_report.jsp">신고방법</a></li>
            </ul>
            <!--when_report 영역-->
            <div class="when_report">
                <p>이럴 때 신고하세요!</p>
                <!--position 영역-->
                <dl class="position">
                    <dt>게임에서</dt>
                    <dd>
                        <ul>
                            <li>게임 머니/아이디 거래를 요청할 때</li>
                            <li>운영자를 사칭하여 개인정보를 요구할 때</li>
                            <li>욕설이나 음란성 메세지를 계속해서 올릴 때</li>
                            <li>불량한 의도의 아이디가 보일 때</li>
                        </ul>
                    </dd>
                </dl>
                <dl class="position">
                    <dt>길드에서</dt>
                    <dd>
                        <ul>
                            <li>음란성 정보와 관련된 길드일 때</li>
                            <li>저작권에 위배되는 불법 자료를 공유하는 길드일 때</li>
                            <li>상업적 목적으로 생성된 길드일 때</li>
                            <li>게임 내 악영향을 끼칠 수 있는 의도로 개설 되었을 때</li>
                            <li>게임머니/아이디 거래를 하는 길드일 때</li>
                        </ul>
                    </dd>
                </dl>
                <dl class="position">
                    <dt>게시판에서</dt>
                    <dd>
                        <ul>
                            <li>음란성 내용을 포함하고 있을 때</li>
                            <li>저작권에 위배되는 불법 자료를 올렸을 때</li>
                            <li>게시물이 상업적인 내용일 때</li>
                            <li>운영자를 사칭하여 개인정보를 요구할 때</li>
                            <li>게임머니/아이디 거래를 요청할 때</li>
                        </ul>
                    </dd>
                </dl>
                <dl class="position">
                    <dt>메신저/쪽지에서</dt>
                    <dd>
                        <ul>
                            <li>욕설이나 음란성 메시지를 보낼 때</li>
                            <li>스팸이나 광고성 메시지를 보낼 때</li>
                            <li>운영자를 사칭하여 개인정보를 요구할 때</li>
                            <li>게임머니/아이디 거래를 요청할 때</li>
                        </ul>
                    </dd>
                </dl>
                <!--//position 영역-->
            </div>
            <!--//when_report 영역-->
            <!--precautions 영역-->
            <div class="precautions">
                <strong>주의사항</strong>
                <p>
                    신고하신 내용은 증거자료를 참고하여 약관에 따라 제한됩니다.<br>
                    신고 내용에 따라 이용이 제한될 수 있으며 사실과 다르게 꾸미거나 장난으로 신고할 경우 경고를 받을 수도 있습니다.
                </p>
            </div>
            <!--//precautions 영역-->
        </div>
        <!--//report_guide 영역-->
    </div>
    <!--//content_wrapper 영역-->
    <!--footer 영역-->
    <footer>
        <p class="copyrihgt">© NEXON Korea Coporationi All Right Reserved.</p>
    </footer>
    <!--//footer 영역-->
</body>
</html>