<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="./error.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="author" content="윤희원">
    <title>메인 페이지</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/main.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/menu.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/mobile_main.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-2.1.1.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-ui.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.easing.1.3.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/prefixfree.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/menu.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/main.js"></script>

    <!--배너-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/banner.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/banner.js"></script>

    <!-- slick 불러오기 -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick-theme.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick.min.css">
    <!--//배너-->

    <script>
        function warn_msg(){
            alert("로그인 후 이용 가능합니다.");
            return "#";
        }
    </script>
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
            <a href="nexon.gd?type=index"><img src="${pageContext.request.contextPath}/images/main_logo.png" alt="NEXON"></a>
        </h1>
        <!--//logo_gnb 영역-->
        <!--right_gnb 영역-->
        <div class="right_gnb">
            <div class="join_gnb">
                <a href="${pageContext.request.contextPath}/join/join.jsp">회원가입</a>
            </div>
            <c:choose>
	            <c:when test="${empty sessionScope.loginUserInfo}">
		            <div class="login_gnb">
		                <a href="nexon.gd?type=loginForm">로그인</a>
		            </div>
	            </c:when>
	            <c:otherwise>
		            <div class="logout_gnb">
		                <a href="nexon.gd?type=logout">로그아웃</a>
		            </div>
	            </c:otherwise>
            </c:choose>
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
                    <img src="${pageContext.request.contextPath}/images/close.png" alt="닫기">
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
                    <a href="${pageContext.request.contextPath}/qna/qna.jsp">고객센터</a>
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
                            <li><img src="${pageContext.request.contextPath}/images/list_icon.png" alt="내정보"><a href="#" onclick="warn_msg()"> 내정보</a></li>
                            <li><img src="${pageContext.request.contextPath}/images/list_icon.png" alt="이벤트"><a href="${pageContext.request.contextPath}/event/event.jsp"> 이벤트</a></li>
                        </ul>
                    </nav>
                    <!--//left_menu 영역-->
                    <!--right_menu 영역-->
                    <nav class="right_menu">
                        <ul>
                            <li><img src="${pageContext.request.contextPath}/images/list_icon.png" alt="공지사항"><a href="${pageContext.request.contextPath}/notice/notice_list.jsp"> 공지사항</a></li>
                            <li><img src="${pageContext.request.contextPath}/images/list_icon.png" alt="고객센터"><a href="${pageContext.request.contextPath}/qna/qna.jsp"> 고객센터</a></li>
                        </ul>
                    </nav>
                    <!--//right_menu 영역-->
            </div>
            <!--//more_menu 영역-->
        </div>
        <!--//menu_content 영역-->
    </aside>
    <!--//sidebar_menu 영역-->

    <!--promotion_banner 영역-->
    <!--slider-wrap, con 클래스 영역-->
    <!--data-slick-autoplay-status의 뜻?
         커스텀 데이터 속성이라고 불리우는 "data-" 속성의 역할은, 웹페이지를 작성하는 사람이, HTML에 지정되어 있지 않는
         새로운 속성을 만들어서 태그에 추가할 수 있게 해준다.
    [주의사항]
    - "data-"로 시작해야하며 그 뒤에는 적어도 하나 이상의 문자가 와야한다.
    - 소문자를 사용한다. -> HTML 문서 자체가 로딩될 때, 속성 이름들을 모두 소문자로 바꿔버리기 때문
    - 속성이름에는 공백문자, Null, /, 따옴표, 등호, 제어문자, 부등호를 사용할 수 없다. 
    - 속성에 값을 넣을 때는 따옴표를 사용한다. 
    - 사용할 용도에 알맞은 속성이 아무리 찾아도 없을 때, 반드시 꼭 필요할 때에만 사용하는 것이 좋다. 
    -->
    <!--따라서 여기서는 slick의 autoplay status를 체크하기 위한 속성을 새로 만든 것이다.-->
    <div class="slider-wrap con" data-slick-autoplay-status="Y">
        <!--slider, main-slider, con 클래스 영역-->
        <div class="slider main-slider con">
            <!--slide-item, slide-item-1 클래스 영역--><!--"data-"속성을 사용하여 dot(페이지네이션) 타이틀 속성 생성-->
            <div class="slide-item slide-item-1" data-dot-title="던전앤파이터">
                <!--slide-con 클래스 영역-->
                <div class="slide-con">
                    <!--slide-dummy 클래스 영역-->
                    <div class="slide-dummy"></div>
                    <!--img-box 클래스 영역-->
                    <!--picture 태그
                    viewport의 너비에 따라 커지거나 작아지는 하나의 이미지를 사용하는 대신 서로 다른 디스플레이나
                   	기기에서 해당 viewport에 알맞게 채워질 수 있도록 여러 개의 이미지 중에서 적절한 이미지를 사용할 수 있도록 해줌.
                                             이미지의 리소스를 보다 유연하게 지정할 수 있도록 해주므로 반응형 디자인에서 주로 사용.
                    img 요소는 picture 요소를 지원하지 않는 브라우저를 위한 하위 호환성을 위해 사용되거나 명시된 <source> 요소가 모두
                                             조건을 만족하지 못 할 경우 사용.
                    -->
                    <picture class="img-box">
                        <source srcset="https://rs.nxfs.nexon.com/bannerusr/20/6/p3rz10165721640.png" media="(max-width: 770px)">
                        <img src="https://rs.nxfs.nexon.com/bannerusr/20/6/p3rz10165721640.png" alt="던전앤파이터">
                    </picture>
                </div>
            </div>
            <!--//slide-item, slide-item-1 클래스 영역-->
            <!--slide-item, slide-item-2 클래스 영역-->
            <div class="slide-item slide-item-2" data-dot-title="마비노기영웅전">
                <div class="slide-con">
                    <div class="slide-dummy"></div>
                    <picture class="img-box">
                        <source srcset="https://rs.nxfs.nexon.com/bannerusr/20/6/kbdH11124827917.png" media="(max-width: 770px)">
                        <img src="https://rs.nxfs.nexon.com/bannerusr/20/6/kbdH11124827917.png" alt="마비노기영웅전">
                    </picture>
                </div>
            </div>
            <!--//slide-item, slide-item-2 클래스 영역-->
            <!--slide-item, slide-item-3 클래스 영역-->
            <div class="slide-item slide-item-3" data-dot-title="네코장">
                <div class="slide-con">
                    <div class="slide-dummy"></div>
                    <picture class="img-box">
                        <source srcset="https://rs.nxfs.nexon.com/bannerusr/20/6/p6v410181943226.jpg" media="(max-width: 770px)">
                        <img src="https://rs.nxfs.nexon.com/bannerusr/20/6/p6v410181943226.jpg" alt="네코장">
                    </picture>
                </div>
            </div>
            <!--//slide-item, slide-item-3 클래스 영역-->
            <!--slide-item, slide-item-4 클래스 영역-->
            <div class="slide-item slide-item-4" data-dot-title="마비노기">
                <div class="slide-con">
                    <div class="slide-dummy"></div>
                    <picture class="img-box">
                        <source srcset="https://rs.nxfs.nexon.com/bannerusr/20/6/8rsk11182233043.jpg" media="(max-width: 770px)">
                        <img src="https://rs.nxfs.nexon.com/bannerusr/20/6/8rsk11182233043.jpg" alt="마비노기">
                    </picture>
                </div>
            </div>
            <!--//slide-item, slide-item-4 클래스 영역-->
            <!--slide-item, slide-item-5 클래스 영역-->
            <div class="slide-item slide-item-5" data-dot-title="사이퍼즈">
                <div class="slide-con">
                    <div class="slide-dummy"></div>
                    <picture class="img-box">
                        <source srcset="https://rs.nxfs.nexon.com/bannerusr/20/6/8JVI17103534943.png" media="(max-width: 770px)">
                        <img src="https://rs.nxfs.nexon.com/bannerusr/20/6/8JVI17103534943.png" alt="사이퍼즈">
                    </picture>
                </div>
            </div>
            <!--//slide-item, slide-item-5 클래스 영역-->
        </div>
        <!--//slider, main-slider, con 클래스 영역-->
        <!--s-autoplay-btn 클래스 영역-->
        <button class="s-autoplay-btn"></button>
        <!--//s-autoplay-btn 클래스 영역-->
    </div>
    <!--//promotion_banner 영역-->

    <div id="middle_wrapper">
        <!--game_wrapper 영역-->
        <div id="game_wrapper">
            <!--pc_game 영역-->
            <nav class="pc_game">
                <h2>PC 게임</h2>
                <ul>
                    <li>
                        <a href="https://maplestory.nexon.com/Home/Main">
                            <div class="img_wrap">
                                <img src="${pageContext.request.contextPath}/images/game_1.png" alt="메이플스토리">
                            </div>
                            <strong>메이플스토리</strong>
                            <p>모험과 재미가 가득한 2D 횡스크롤 MMORPG</p>
                            <p>RPG</p>
                        </a>
                    </li>
                    <li>
                        <a href="https://v4.nexon.com/kr-brand">
                            <div class="img_wrap">
                                <img src="${pageContext.request.contextPath}/images/game_2.png" alt="V4">
                            </div>
                            <strong>V4</strong>
                            <p>대장, PC에서 기다릴게요!</p>
                            <p>MMORPG</p>
                        </a>
                    </li>
                    <li>
                        <a href="http://fifaonline4.nexon.com/main/index">
                            <div class="img_wrap">
                                <img src="${pageContext.request.contextPath}/images/game_3.png" alt="FIFA ONLINE 4">
                            </div>
                            <strong>EA SPORTS FIFA ONLINE 4</strong>
                            <p>축구, 그 이상을 경험할 수 있는 최고의 방법</p>
                            <p>스포츠</p>
                        </a>
                    </li>
                </ul>
            </nav>
            <!--//pc_game 영역-->
            <!--mobile_game 영역-->
            <nav class="mobile_game">
                <h2>모바일 게임</h2>
                <ul>
                    <li>
                        <a href="https://kartrush.nexon.com/">
                            <img src="${pageContext.request.contextPath}/images/mobile_game_1.png" alt="카트라이더">
                            <strong>카트라이더 러쉬플러스</strong>
                            <p>크레이지레이싱 카트라이더</p>
                            <p>레이싱</p>
                        </a>
                    </li>
                    <li>
                        <a href="https://bnbm.nexon.com/?channel=18101#section0">
                            <img src="${pageContext.request.contextPath}/images/mobile_game_2.png" alt="크레이지아케이드">
                            <strong>크레이지아케이드</strong>
                            <p>#누구나#쉽게#캐주얼#인싸게임</p>
                            <p>캐주얼</p>
                        </a>
                    </li>
                    <li>
                        <a href="https://baramy.nexon.com/">
                            <img src="${pageContext.request.contextPath}/images/mobile_game_3.png" alt="바람의나라">
                            <strong>바람의나라: 연</strong>
                            <p>당신의 플레이가 역사가 되는 MMORPG</p>
                            <p>RPG</p>
                        </a>
                    </li>
                </ul>
            </nav>
            <!--//mobile_game 영역-->
        </div>
        <!--//game_wrapper 영역-->

        <!--info_wrapper 영역-->
        <div id="info_wrapper">
            <!--login_btn 영역-->
            <div class="login_btn">
                <input type="button" value="아이디 로그인" onclick="location.href='${pageContext.request.contextPath}/login/login.jsp'">
                <input type="button" value="일회용 로그인" onclick="location.href='${pageContext.request.contextPath}/login/login.jsp'">
            </div>
            <!--//login_btn 영역-->
            <!--easy_login 영역-->
            <nav class="easy_login">
                <p>다른 계정 간편 로그인</p>
                <ul>
                    <li>
                        <a href="./error.jsp">
                            <img src="${pageContext.request.contextPath}/images/other_login_btn_1.png" alt="구글">
                        </a>
                    </li>
                    <li>
                        <a href="./error.jsp">
                            <img src="${pageContext.request.contextPath}/images/other_login_btn_2.png" alt="페이스북">
                        </a>
                    </li>
                    <li>
                        <a href="./error.jsp">
                            <img src="${pageContext.request.contextPath}/images/other_login_btn_3.png" alt="네이버">
                        </a>
                    </li>
                    <li>
                        <a href="./error.jsp">
                            <img src="${pageContext.request.contextPath}/images/other_login_btn_4.png" alt="애플">
                        </a>
                    </li>
                </ul>
            </nav>
            <!--//easy_login 영역-->
            <!--sub_menu 영역-->
            <nav class="sub_menu">
                <ul>
                    <li><a href="${pageContext.request.contextPath}/login/id_find.jsp">아이디 찾기</a></li>
                    <li><a href="${pageContext.request.contextPath}/login/pwd_find.jsp">비밀번호 찾기</a></li>
                    <li><a href="${pageContext.request.contextPath}/join/join.jsp">회원가입</a></li>
                </ul>
            </nav>
            <!--sub_menu 영역-->
        </div>
        <!--//info_wrapper 영역-->
    </div>

    <!--main_footer 영역-->
    <footer id="main_footer">
        <!--left 영역-->
        <nav class="left">
            <!--footer 메뉴 영역-->
            <ul>
                <li>
                    <a href="http://company.nexon.com/">
                    	 회사소개
                    </a>
                </li>
                <li>
                    <a href="https://career.nexon.com/">
                      	채용안내
                    </a>
                </li>
                <li>
                    <a href="http://company.nexon.com/Company/Ethics/about/about.aspx">
                       	윤리경영
                    </a>
                </li>
                <li>
                    <a href="https://member.nexon.com/policy/stipulation.aspx">
                       	이용약관
                    </a>
                </li>
                <li>
                    <a href="https://member.nexon.com/policy/privacy.aspx">
                       	개인정보처리방침
                    </a>
                </li>
                <li>
                    <a href="https://member.nexon.com/policy/youthprotection.aspx">
                       	청소년보호정책
                    </a>
                </li>
                <li>
                    <a href="https://pcbang.nexon.com/">
                       	넥슨PC방
                    </a>
                </li>
                <li>
                    <a href="https://schoolzone.nexon.com/page/nx.aspx?url=timekeeper/intro">
                  		 게임시간선택제
                    </a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath}/qna/qna.jsp">
                       	고객센터
                    </a>
                </li>
            </ul>
             <!--//footer 메뉴 영역-->
            <!--address 영역-->
            <p>(주)넥슨코리아 대표이사 이정현 경기도 성남시 분당구 판교로 256번지 7<br>전화 : 1577-7705 팩스 : 0502-258-8322</p>
            <p>Email : contact-us@nexon.co.kr 사업자 등록번호 220-87-14783호<br>통신판매업 신고번호 : 제2013-경기성남-1659</p>
            <p>@copyright</p>
            <!--//address 영역-->
        </nav>
        <!--//left 영역-->
        <!--right 영역-->
        <div class="right">
            <!--sns 영역-->
            <nav class="sns">
                <ul>
                    <li><a class="sns_icon" href="https://www.youtube.com/user/NEXONKR"></a></li>
                    <li><a class="sns_icon" href="https://twitter.com/NEXON_KR"></a></li>
                    <li><a class="sns_icon" href="https://www.facebook.com/NEXON.KR"></a></li>
                </ul>
            </nav>
            <!--//sns 영역-->
            <!--logo 영역-->
            <img src="${pageContext.request.contextPath}/images/footer_logo.PNG" alt="로고">
            <!--//logo 영역-->
        </div>
        <!--//right 영역-->
    </footer>
    <!--//main_footer 영역-->
</body>
</html>