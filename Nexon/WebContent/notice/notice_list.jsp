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
    <title>공지사항 목록</title>
    <link rel="stylesheet" href="${contextPath}/css/notice_list.css">
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
    <!--list_wrapper 영역-->
    <div id="list_wrapper">
        <h1>공지사항</h1>
        <!--notice_list 영역-->
        <div class="notice_list">
            <!--table 영역-->
            <table sumarry="넥슨공통공지 목록">
                <caption>넥슨공통공지</caption>
                <!--colgroup 영역-->
                <colgroup>
                    <col class="cate">
                    <col class="tit">
                    <col class="date">
                    <col class="count">
                </colgroup>
                <!--//colgroup 영역-->
                <!--thead 영역-->
                <thead>
                    <tr>
                        <th class="cate">카테고리</th>
                        <th class="tit">제목</th>
                        <th class="date">등록일</th>
                        <th class="count">조회수</th>
                    </tr>
                </thead>
                <!--//thead 영역-->
                <!--tbody 영역-->
                <tbody>
                    <!--tr-1 영역-->
                    <tr>
                        <td class="cate">[공지]</td>
                        <td class="tit">
                            <a href="#">5/21(목) 넥슨 정기점검 안내(수정)</a>
                        </td>
                        <td class="date">2020-05-19</td>
                        <td class="count">
                            36511
                            <span class="icon"></span>
                        </td>
                    </tr>
                    <!--//tr-1 영역-->
                    <!--tr-2 영역-->
                    <tr>
                        <td class="cate">[공지]</td>
                        <td class="tit">
                            <a href="${contextPath}/notice/notice.jsp">Windows Defender 백신 업데이트 안내</a>
                        </td>
                        <td class="date">2020-05-15</td>
                        <td class="count">
                            282728
                            <span class="icon"></span>
                        </td>
                    </tr>
                    <!--//tr-2 영역-->
                    <!--tr-3 영역-->
                    <tr>
                        <td class="cate">[공지]</td>
                        <td class="tit">
                            <a href="#">5/14(목) 넥슨 지정PC 등록 절차 개선 안내</a>
                        </td>
                        <td class="date">2020-05-14</td>
                        <td class="count">
                            36817
                            <span class="icon"></span>
                        </td>
                    </tr>
                    <!--//tr-3 영역-->
                    <!--tr-4 영역-->
                    <tr>
                        <td class="cate">[공지]</td>
                        <td class="tit">
                            <a href="#">스미싱 문자로 인한 결제 도용 피해 주의 안내</a>
                        </td>
                        <td class="date">2020-05-13</td>
                        <td class="count">
                            85826
                            <span class="icon"></span>
                        </td>
                    </tr>
                    <!--//tr-4 영역-->
                    <!--tr-5 영역-->
                    <tr>
                        <td class="cate">[공지]</td>
                        <td class="tit">
                            <a href="#">5/14(목) 넥슨 정기점검 안내(수정)</a>
                        </td>
                        <td class="date">2020-05-12</td>
                        <td class="count">
                            38901
                            <span class="icon"></span>
                        </td>
                    </tr>
                    <!--//tr-5 영역-->
                    <!--tr-6 영역-->
                    <tr>
                        <td class="cate">[공지]</td>
                        <td class="tit">
                            <a href="#">5/7(목) 넥슨 정기점검 안내(수정)</a>
                        </td>
                        <td class="date">2020-05-06</td>
                        <td class="count">
                            126988
                            <span class="icon"></span>
                        </td>
                    </tr>
                    <!--//tr-6 영역-->
                </tbody>
                <!--//tbody 영역-->
            </table>
            <!--//table 영역-->
        </div>
        <!--//notice_list 영역-->
        <!--page_list 영역-->
        <div class="page_list">
            <!--first_btn 영역-->
            <a href="#" class="first_btn">
                <span class="icon"></span>
                <span class="achidden">첫 페이지</span>
            </a>
            <!--//first_btn 영역-->
            <!--prev_btn 영역-->
            <a href="#" class="prev_btn">
                <span class="icon"></span>
                <span class="achidden">이전 페이지</span>
            </a>
            <!--//prev_btn 영역-->
            <!--page_num 영역-->
            <span class="page_num">
                <strong>
                    <span>1</span>
                </strong>
                <a href="#">2</a>
                <a href="#">3</a>
                <a href="#">4</a>
                <a href="#">5</a>
            </span>
            <!--//page_num 영역-->
            <!--next_btn 영역-->
            <a href="#" class="next_btn">
                <span class="icon"></span>
                <span class="achidden">다음 페이지</span>
            </a>
            <!--//next_btn 영역-->
            <!--last_btn 영역-->
            <a href="#" class="last_btn">
                <span class="icon"></span>
                <span class="achidden">마지막 페이지</span>
            </a>
            <!--//last_btn 영역-->
        </div>
        <!--//page_list 영역-->
    </div>
    <!--//list_wrapper 영역-->
    <!--footer 영역-->
    <footer>
        <hr>
        <p class="copyrihgt">© NEXON Korea Coporationi All Right Reserved.</p>
    </footer>
    <!--//footer 영역-->
</body>
</html>