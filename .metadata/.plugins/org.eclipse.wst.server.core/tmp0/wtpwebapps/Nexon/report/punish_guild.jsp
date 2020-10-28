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
    <title>신고하기(처벌기준) 페이지 - 길드</title>
    <link rel="stylesheet" href="${contextPath}/css/punish_guild.css">
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

    <!--nav_wrapper 영역-->
    <nav id="nav_wrapper">
        <ul>
            <li><a href="${contextPath}/notice/notice_list.jsp">공지사항</a></li>
            <li><a href="${contextPath}/event/event.jsp">이벤트</a></li>
            <li><a href="${contextPath}/qna/qna.jsp">고객센터</a></li>
        </ul>
    </nav>
    <!--//nav_wrapper 영역-->
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
            <strong>처벌기준</strong>
            <!--rep_mini_tab 영역-->
            <ul class="rep_mini_tab">
                <li><a href="${contextPath}/report/punish_game.jsp">넥슨/게임웹</a></li>
                <li><a href="${contextPath}/report/punish_guild.jsp" class="on">길드</a></li>
                <li><a href="${contextPath}/report/punish_message.jsp">쪽지</a></li>
            </ul>
            <!--//rep_mini_tab 영역-->
            <!--punish_point 영역-->
            <div class="punish_point">
                <strong>항목별 벌점</strong>
                <dl>
                    <dt><img src="${contextPath}/images/5point.png" alt="point 5점"></dt>
                    <dd>
                        <ul>
                            <li>미풍양속 저해 행위 (예. 욕설, 음란물 등)</li>
                            <li>타인의 명예를 훼손할 수 있는 행위 (사실 여부는 중요치 않음)</li>
                        </ul>
                    </dd>
                </dl>
                <dl>
                    <dt><img src="${contextPath}/images/15point.png" alt="point 15점"></dt>
                    <dd>
                        <ul>
                            <li>아이디 공유와 관련 행위( 아이디 공유 게시물, 길드 생성 등)</li>
                            <li>불법 자료 등을 개별 길드 내 등록할 경우</li>
                        </ul>
                    </dd>
                </dl>
                <dl>
                    <dt><img src="${contextPath}/images/30point.png" alt="point 30점"></dt>
                    <dd>
                        <ul>
                            <li>아이디의 매매/ 양도 관련 길드 개설, 게시물 등록의 경우</li>
                            <li>현금거래 관련 길드 개설 , 게시물 등록의 경우</li>
                            <li>불법 목적, 음란성, 상업적 목적의 길드를 개설한 경우</li>
                        </ul>
                    </dd>
                </dl>
                <dl>
                    <dt><img src="${contextPath}/images/50point.png" alt="point 50점"></dt>
                    <dd>
                        <ul>
                            <li>서비스에 심각한 악영향을 끼칠 수 있는 행위 (불법복제 등의 버그 악용, 어뷰징 등)</li>
                        </ul>
                    </dd>
                </dl>
                <dl>
                    <dt><img src="${contextPath}/images/100point.png" alt="point 100점"></dt>
                    <dd>
                        <ul>
                            <li>운영진을 사칭하는 행위</li>
                            <li>해킹/사기의 의도가 보이는 게시물, 길드 개설</li>
                            <li>게시판을 통해 타인의 개인정보를 유출하는 경우</li>
                            <li>기타 범죄 행위를 목적으로 하는 행위</li>
                            <li>기타 게임 이용 약관에 의거, 아이디 압류 사유에 해당되는 경우</li>
                        </ul>
                    </dd>
                </dl>
                <dl>
                    <dt><img src="${contextPath}/images/block_point.png" alt="point block"></dt>
                    <dd>
                        <ul>
                            <li>이용자 약관에 의거하여 아이디 압류 사유에 해당되는 경우 누적벌점을 거치지 않고 넥슨ID BLOCK 조치될 수 있습니다.</li>
                        </ul>
                    </dd>
                </dl>
            </div>
            <!--//punish_point 영역-->
            <!--common_msg 영역-->
            <div class="common_msg">
                <dl>
                    <dt><strong>누적벌점에 따른 제재 공통사항(길드원/마스터/길드)</strong></dt>
                    <dd>
                        <strong>길드원과 마스터의 경우 벌점부여는 위반항목에 따라 다르게 부여되며, 누적벌점에는 합산되어 적용됩니다.</strong><br>
                        * 예) 길드원으로 벌점 30점, 마스터로 10점을 각각 받은 경우 누적벌점 40점이 되어 10일간 글쓰기 제한의 조치를 받게 됩니다.
                    </dd>
                </dl>
            </div>
            <!--//common_msg 영역-->
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