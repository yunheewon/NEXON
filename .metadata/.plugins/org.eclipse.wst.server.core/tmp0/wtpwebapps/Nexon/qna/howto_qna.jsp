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
    <title>문의방법</title>
    <link rel="stylesheet" href="${contextPath}/css/howto_qna.css">
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
        <nav class="side_menu">
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
        </nav>
        <!--//side_menu 영역-->
        <!--way_expain_wrap 영역-->
        <div class="way_expain_wrap">
            <h1>문의방법</h1>
            <!--qna_step 영역-->
            <div class="qna_step">
                <ul>
                    <li>
                        <p class="step_tit">01 게임을 선택해주세요.</p>
                        <p class="step_content">
                            게임별 전문상담사를 통해<br>
                            보다 정확한 상담을 제공합니다.<br>
                            넥슨닷컴 및 각 게임의 고객센터를<br>
                            이용해주세요.
                        </p>
                    </li>
                    <li>
                        <p class="step_tit">02 도움말을 선택해주세요.</p>
                        <p class="step_content">
                            고객님의 문제를 빠르게 해결할<br>
                            수 있도록 실제 문의를 바탕으로<br>
                            도움말을 제공하고 있습니다.<br>
                            도움이 필요하신 분류를 선택<br>
                            하시거나 문제를 검색하시면<br> 
                            필요한 안내를 해드립니다.
                        </p>
                    </li>
                    <li>
                        <p class="step_tit">03 문의를 접수해주세요.</p>
                        <p class="step_content">
                            도움말을 통해서도 문제를 해결<br>
                            할 수 없었다면 제공되는 양식에<br>
                            따라 저희에게 문의해주세요.<br>
                            최대한 빠르게 답변해드리겠습니다
                        </p>
                    </li>
                </ul>
            </div>
            <!--//qna_step 영역-->
           <!--user_consult 영역-->
            <div class="user_consult">
                <!--location 영역-->
                <div class="location">
                    <span>위치 및 운영시간</span>
                    <dl class="address">
                        <dt>주소</dt>
                        <dd>
                            경기도 성남시 분당구 판교역로 240(삼평동)<br>
                            삼환하이펙스 A동 4층 고객상담실
                        </dd>
                    </dl>
                    <dl class="open_time">    
                        <dt>운영시간</dt>
                        <dd>
                            평일(월~금) 오전 09:00 ~ 오후 06:00<br>
                            점심시간 오후 12:30 ~ 오후 01:30<br>
                            평일 문의접수는 오후 5시에 마감됩니다.<br>
                            공휴일, 주말 및 야간에는 운영하지 않습니다.
                        </dd>
                    </dl>
                </div>
                <!--//location 영역-->
                <!--please_msg 영역-->
                <div class="please_msg">
                    <span>고객상담실에 오시기 전에 확인해주세요!</span>
                    <dl>
                        <dd>
                            <p>
                                1. 고객상담실에서는 넥슨ID 관련 문의, 보안서비스 설정 해제 등의<br>
                                문의를 신속히 도움드릴 수 있습니다.
                            </p>
                            <br>
                            <p class="warn_txt">
                                ※ 본인 이름으로 생성된 아이디에 대해서만 상담이 가능합니다.<br>
                                (가족이나 친구 이름으로 생성된 아이디는 상담하실 수 없습니다.)<br>
                                본인 확인을 위한 신분증을 지참해 주시기 바랍니다.
                            </p>
                            <br>
                            <p>
                                2. 그 외 게임 관련 문의는 이용하시는 게임의 고객센터 1:1문의를<br>
                                이용해주세요. 게임별 전문상담사에게 정확한 상담을 받으실 수<br>
                                있습니다.
                            </p>
                        </dd>
                    </dl>
                </div>
                <!--//please_msg 영역-->
            </div>
            <!--//user_consult 영역-->
        </div>
        <!--//way_expain_wrap 영역-->
    </div>
    <!--//content_wrapper 영역-->
    <!--footer 영역-->
    <footer>
        <p class="copyrihgt">© NEXON Korea Coporationi All Right Reserved.</p>
    </footer>
    <!--//footer 영역-->
</body>
</html>