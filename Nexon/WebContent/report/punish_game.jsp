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
    <title>신고하기(처벌기준) 페이지 - 넥슨/게임웹</title>
    <link rel="stylesheet" href="${contextPath}/css/punish_game.css">
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
                <li><a href="${contextPath}/report/punish_game.jsp" class="on">넥슨/게임웹</a></li>
                <li><a href="${contextPath}/report/punish_guild.jsp">길드</a></li>
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
                            <li>각 게시판의 용도와 무관한 게시물</li>
                            <li>허위신고로 판단되는 경우</li>
                        </ul>
                    </dd>
                </dl>
                <dl>
                    <dt><img src="${contextPath}/images/15point.png" alt="point 15점"></dt>
                    <dd>
                        <ul>
                            <li>도배 형생의 글을 등록하여 다른 회원의 서비스 이용에 방해가 되는 경우</li>
                            <li>상대방을 비방하는 등 타인의 명예를 훼손할 수 있는 게시물</li>
                            <li>회사 또는 게임 운영자를 이유 없이 비방하는 등 게임 운영 업무를 방해하는 게시물</li>
                        </ul>
                    </dd>
                </dl>
                <dl>
                    <dt><img src="${contextPath}/images/20point.png" alt="point 20점"></dt>
                    <dd>
                        <ul>
                            <li>공공질서 및 미풍양속에 위배되는 게시물(예. 욕설,음란표현,혐오 등)</li>
                            <li>사회문화적(정지, 지역감정, 성(性), 종교, 국적) 편견으로 분쟁을 조장하는 게시물</li>
                            <li>개인의 영리를 목적으로 하는 상업적인 게시물을 등록, 홍보하는 게시물</li>
                        </ul>
                    </dd>
                </dl>
                <dl>
                    <dt><img src="${contextPath}/images/30point.png" alt="point 30점"></dt>
                    <dd>
                        <ul>
                            <li>스팸성 글이나 유언비어 등을 유포하는 게시물</li>
                        </ul>
                    </dd>
                </dl>
                <dl>
                    <dt><img src="${contextPath}/images/40point.png" alt="point 40점"></dt>
                    <dd>
                        <ul>
                            <li>어뷰징(승부조작)에 관한 모든 게시물</li>
                            <li>게임 내 컨텐츠를 이용한 사행성 행위를 조장하는 게시물</li>
                        </ul>
                    </dd>
                </dl>
                <dl>
                    <dt><img src="${contextPath}/images/80point.png" alt="point 80점"></dt>
                    <dd>
                        <ul>
                            <li>저작권자의 동의를 구하지 않은 자료를 무단으로 등록, 배포하거나 지적재산권 및 초상권을 침해하는 게시물</li>
                        </ul>
                    </dd>
                </dl>
                <dl>
                    <dt><img src="${contextPath}/images/100point.png" alt="point 100점"></dt>
                    <dd>
                        <ul>
                            <li>불법 프로그램 및 불법 행위를 유도할 수 있는 방법, 자료 등을 유포하는 게시물</li>
                            <li>게임 운영자, 회사, 관계사의 직원임을 사칭하여 등록한 게시물</li>
                            <li>해킹 및 사기를 목적으로 하는 게시물</li>
                            <li>공식화되지 않은 허위 정보를 유포하여 게임에 혼란을 초래하거나 게임운영에 심각한 악영향을 끼칠 수 있는 게시물</li>
                            <li>현금거래를 시도하거나 이에 준하는 행위라 판단되는 경우</li>
                            <li>문화상품권, 넥슨카드(틴캐시) 등을 게임 내 금전 혹은 아이템으로 교환을 시도하는 게시물</li>
                            <li>넥슨아이디 및 캐릭터 등의 매매, 양도, 공유 관련 게시물</li>
                            <li>타인의 개인정보(이름, 주소, 소속, 전화번호, IP 등)를 유출 하거나 도용을 목적으로 하는 게시물</li>
                            <li>음란 이미지 및 동영상, 음란사이트 등을 포함한 게시물</li>
                            <li>기타 범죄행위를 목적으로 하는 게시물</li>
                        </ul>
                    </dd>
                </dl>
            </div>
            <!--//punish_point 영역-->
            <!--common_msg 영역-->
            <div class="common_msg">
                <dl>
                    <dt><strong>누적벌점에 따른 제재 공통사항</strong></dt>
                    <dd>
                        누적벌점은 각 게임 별로 적용됩니다.각 기준 점수 이후부터는 증가하는 벌점에 상관없이 해당 기준에 따른 제재 조치를 받게 됩니다.<br>
                        * 누적벌점이 40점이 되어 15일간 글쓰기 제한 조치를 받은 후 15일이 지나 다시 5점의 벌점을 받게 되면 다시 15일간 글쓰기가 제한됩니다.<br>
                        반복하여 벌점을 받아 누적벌점이 80점에 도달하면 30일간의 글쓰기 제한 조치를 받게 됩니다.
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