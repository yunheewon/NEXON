/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.24
 * Generated at: 2020-08-06 05:44:43 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.notice;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class notice_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(2);
    _jspx_dependants.put("jar:file:/D:/Heewon/NEXON/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/Nexon/WEB-INF/lib/standard.jar!/META-INF/c.tld", Long.valueOf(1098678690000L));
    _jspx_dependants.put("/WEB-INF/lib/standard.jar", Long.valueOf(1595495154000L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private org.apache.jasper.runtime.TagHandlerPool _005fjspx_005ftagPool_005fc_005fset_0026_005fvar_005fvalue_005fnobody;

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
    _005fjspx_005ftagPool_005fc_005fset_0026_005fvar_005fvalue_005fnobody = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _005fjspx_005ftagPool_005fc_005fset_0026_005fvar_005fvalue_005fnobody.release();
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    if (!javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSP들은 오직 GET, POST 또는 HEAD 메소드만을 허용합니다. Jasper는 OPTIONS 메소드 또한 허용합니다.");
        return;
      }
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      //  c:set
      org.apache.taglibs.standard.tag.rt.core.SetTag _jspx_th_c_005fset_005f0 = (org.apache.taglibs.standard.tag.rt.core.SetTag) _005fjspx_005ftagPool_005fc_005fset_0026_005fvar_005fvalue_005fnobody.get(org.apache.taglibs.standard.tag.rt.core.SetTag.class);
      boolean _jspx_th_c_005fset_005f0_reused = false;
      try {
        _jspx_th_c_005fset_005f0.setPageContext(_jspx_page_context);
        _jspx_th_c_005fset_005f0.setParent(null);
        // /notice/notice.jsp(4,0) name = var type = java.lang.String reqTime = false required = false fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
        _jspx_th_c_005fset_005f0.setVar("contextPath");
        // /notice/notice.jsp(4,0) name = value type = null reqTime = true required = false fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
        _jspx_th_c_005fset_005f0.setValue( request.getContextPath());
        int _jspx_eval_c_005fset_005f0 = _jspx_th_c_005fset_005f0.doStartTag();
        if (_jspx_th_c_005fset_005f0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
          return;
        }
        _005fjspx_005ftagPool_005fc_005fset_0026_005fvar_005fvalue_005fnobody.reuse(_jspx_th_c_005fset_005f0);
        _jspx_th_c_005fset_005f0_reused = true;
      } finally {
        org.apache.jasper.runtime.JspRuntimeLibrary.releaseTag(_jspx_th_c_005fset_005f0, _jsp_getInstanceManager(), _jspx_th_c_005fset_005f0_reused);
      }
      out.write(" \r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"en\">\r\n");
      out.write("<head>\r\n");
      out.write("    <meta charset=\"UTF-8\">\r\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n");
      out.write("    <meta name=\"author\" content=\"윤희원\">\r\n");
      out.write("    <title>공지사항</title>\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/css/notice.css\">\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/css/menu.css\">\r\n");
      out.write("    <script type=\"text/javascript\" src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/js/jquery-2.1.1.min.js\"></script>\r\n");
      out.write("    <script type=\"text/javascript\" src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/js/jquery-ui.min.js\"></script>\r\n");
      out.write("    <script type=\"text/javascript\" src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/js/jquery.easing.1.3.js\"></script>\r\n");
      out.write("    <script type=\"text/javascript\" src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/js/prefixfree.min.js\"></script>\r\n");
      out.write("    <script type=\"text/javascript\" src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/js/menu.js\"></script>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("    <!--gnb_wrapper 영역-->\r\n");
      out.write("    <header id=\"gnb_wrapper\">\r\n");
      out.write("        <!--left_gnb 영역-->\r\n");
      out.write("        <div class=\"left_gnb\">\r\n");
      out.write("            <div id=\"all_menu\" class=\"all_menu\">\r\n");
      out.write("                <span class=\"menu_icon\"></span>\r\n");
      out.write("                <span class=\"menu_font\">메뉴</span>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("        <!--//left_gnb 영역-->\r\n");
      out.write("        <!--logo_gnb 영역-->\r\n");
      out.write("        <h1 class=\"logo_gnb\">\r\n");
      out.write("            <a href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/index.jsp\"><img src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/images/main_logo.png\" alt=\"NEXON\"></a>\r\n");
      out.write("        </h1>\r\n");
      out.write("        <!--//logo_gnb 영역-->\r\n");
      out.write("        <!--right_gnb 영역-->\r\n");
      out.write("        <div class=\"right_gnb\">\r\n");
      out.write("            <div class=\"join_gnb\">\r\n");
      out.write("                <a href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/join/join.jsp\">회원가입</a>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"login_gnb\">\r\n");
      out.write("                <a href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/login/login.jsp\">로그인</a>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("        <!--//right_gnb 영역-->\r\n");
      out.write("    </header>\r\n");
      out.write("    <!--//gnb_wrapper 영역-->\r\n");
      out.write("\r\n");
      out.write("    <!--sidebar_menu 영역-->\r\n");
      out.write("    <aside id=\"sidebar_menu\">\r\n");
      out.write("        <!--menu_content 영역-->\r\n");
      out.write("        <div class=\"menu_content\">\r\n");
      out.write("            <!--control 영역-->\r\n");
      out.write("            <div class=\"control\">\r\n");
      out.write("                <button class=\"close\">\r\n");
      out.write("                    <img src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/images/close.png\" alt=\"닫기\">\r\n");
      out.write("                </button>\r\n");
      out.write("            </div>\r\n");
      out.write("            <!--control 영역-->\r\n");
      out.write("            <hr>\r\n");
      out.write("            <!--game_list 영역-->\r\n");
      out.write("            <div class=\"game_list\">\r\n");
      out.write("                <!--game_tab 영역-->\r\n");
      out.write("                <nav class=\"game_tab\">\r\n");
      out.write("                    <ul>\r\n");
      out.write("                        <li><input class=\"pc_btn\" type=\"button\" value=\"PC 게임\"></li>\r\n");
      out.write("                        <li><input class=\"mobile_btn\" type=\"button\" value=\"모바일 게임\"></li>\r\n");
      out.write("                    </ul>\r\n");
      out.write("                    <a href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/qna/qna.jsp\">고객센터</a>\r\n");
      out.write("                </nav>\r\n");
      out.write("                <!--//game_tab 영역-->\r\n");
      out.write("                <!--pc_game 영역-->\r\n");
      out.write("                <div class=\"pc_list\">\r\n");
      out.write("                    <!--pc_cell 영역-->\r\n");
      out.write("                    <nav class=\"pc_cell\">\r\n");
      out.write("                        <h3>A~Z</h3>\r\n");
      out.write("                        <ul>\r\n");
      out.write("                            <li>EA SPORT FIFA ONLINE 4</li>\r\n");
      out.write("                            <li>V4</li>\r\n");
      out.write("                        </ul>\r\n");
      out.write("                        <h3>ㄱ~ㄹ</h3>\r\n");
      out.write("                        <ul>\r\n");
      out.write("                            <li>던전앤파이터</li>\r\n");
      out.write("                            <li>드래곤네스트</li>\r\n");
      out.write("                            <li>로스트사가</li>\r\n");
      out.write("                        </ul>\r\n");
      out.write("                        <h3>ㅁ~ㅅ</h3>\r\n");
      out.write("                        <ul>\r\n");
      out.write("                            <li>마비노기</li>\r\n");
      out.write("                            <li>마비노기영웅전</li>\r\n");
      out.write("                            <li>메이플스토리</li>\r\n");
      out.write("                            <li>메이플스토리2</li>\r\n");
      out.write("                            <li>바람의나라</li>\r\n");
      out.write("                            <li>버블파이터</li>\r\n");
      out.write("                            <li>사이퍼즈</li>\r\n");
      out.write("                            <li>서든어택</li>\r\n");
      out.write("                        </ul>\r\n");
      out.write("                    </nav>\r\n");
      out.write("                    <!--//pc_cell 영역-->\r\n");
      out.write("                    <!--pc_cell 영역-->\r\n");
      out.write("                    <nav class=\"pc_cell\">\r\n");
      out.write("                        <h3>ㅇ~ㅈ</h3>\r\n");
      out.write("                        <ul>\r\n");
      out.write("                            <li>아스가르드</li>\r\n");
      out.write("                            <li>아키에이지</li>\r\n");
      out.write("                            <li>어둠의 전설</li>\r\n");
      out.write("                            <li>엘소드</li>\r\n");
      out.write("                            <li>이카루스</li>\r\n");
      out.write("                            <li>일랜시아</li>\r\n");
      out.write("                        </ul>\r\n");
      out.write("                        <h3>ㅊ~ㅋ</h3>\r\n");
      out.write("                        <ul>\r\n");
      out.write("                            <li>천애명월도</li>\r\n");
      out.write("                            <li>카운터스트라이크온라인</li>\r\n");
      out.write("                            <li>카트라이더</li>\r\n");
      out.write("                            <li>커츠펠</li>\r\n");
      out.write("                            <li>크레이지아케이드</li>\r\n");
      out.write("                            <li>클로저스</li>\r\n");
      out.write("                        </ul>\r\n");
      out.write("                        <h3>ㅌ~ㅎ</h3>\r\n");
      out.write("                        <ul>\r\n");
      out.write("                            <li>테라</li>\r\n");
      out.write("                            <li>테일즈런너</li>\r\n");
      out.write("                            <li>테일즈위버</li>\r\n");
      out.write("                            <li>트리오브세이비어</li>\r\n");
      out.write("                            <li>파이널판타지14</li>\r\n");
      out.write("                            <li>프리스타일2</li>\r\n");
      out.write("                        </ul>\r\n");
      out.write("                    </nav>\r\n");
      out.write("                    <!--//pc_cell 영역-->\r\n");
      out.write("                </div>\r\n");
      out.write("                <!--//pc_game 영역-->\r\n");
      out.write("                <!--mobile_game 영역-->\r\n");
      out.write("                <div class=\"mobile_list\">\r\n");
      out.write("                    <!--mobile_cell 영역-->\r\n");
      out.write("                    <nav class=\"mobile_cell\">\r\n");
      out.write("                        <h3>A~Z</h3>\r\n");
      out.write("                        <ul>\r\n");
      out.write("                            <li>EA SPORT FIFA ONLINE 4 M</li>\r\n");
      out.write("                            <li>V4</li>\r\n");
      out.write("                        </ul>\r\n");
      out.write("                        <h3>ㄱ~ㄹ</h3>\r\n");
      out.write("                        <ul>\r\n");
      out.write("                            <li>고질라 디펜스 포스</li>\r\n");
      out.write("                            <li>다크어벤저3</li>\r\n");
      out.write("                            <li>런웨이 스토리</li>\r\n");
      out.write("                            <li>린: 더 라이트브링어</li>\r\n");
      out.write("                            <li>링토스 세계여행</li>\r\n");
      out.write("                        </ul>\r\n");
      out.write("                        <h3>ㅁ~ㅅ</h3>\r\n");
      out.write("                        <ul>\r\n");
      out.write("                            <li>메이플스토리 M</li>\r\n");
      out.write("                            <li>바람의나라: 연</li>\r\n");
      out.write("                            <li>삼국지조조선 Online</li>\r\n");
      out.write("                            <li>스페셜솔져</li>\r\n");
      out.write("                        </ul>\r\n");
      out.write("                    </nav>\r\n");
      out.write("                    <!--//mobile_cell 영역-->\r\n");
      out.write("                    <!--mobile_cell 영역-->\r\n");
      out.write("                    <nav class=\"mobile_cell\">\r\n");
      out.write("                        <h3>ㅇ~ㅈ</h3>\r\n");
      out.write("                        <ul>\r\n");
      out.write("                            <li>엑스</li>\r\n");
      out.write("                            <li>오버히트</li>\r\n");
      out.write("                        </ul>\r\n");
      out.write("                        <h3>ㅊ~ㅋ</h3>\r\n");
      out.write("                        <ul>\r\n");
      out.write("                            <li>카운터사이드</li>\r\n");
      out.write("                            <li>카이저</li>\r\n");
      out.write("                            <li>카트라이더 러쉬플러스</li>\r\n");
      out.write("                            <li>크레이지아케이트 BnB M</li>\r\n");
      out.write("                        </ul>\r\n");
      out.write("                        <h3>ㅌ~ㅎ</h3>\r\n");
      out.write("                        <ul>\r\n");
      out.write("                            <li>트라하</li>\r\n");
      out.write("                        </ul>\r\n");
      out.write("                    </nav>\r\n");
      out.write("                    <!--//mobile_cell 영역-->\r\n");
      out.write("                </div>\r\n");
      out.write("                <!--//mobile_game 영역-->\r\n");
      out.write("            </div>\r\n");
      out.write("            <!--//game_list 영역-->\r\n");
      out.write("            <!--more_menu 영역-->\r\n");
      out.write("            <div class=\"more_menu\">\r\n");
      out.write("                    <!--left_menu 영역-->\r\n");
      out.write("                    <nav class=\"left_menu\">\r\n");
      out.write("                        <ul>\r\n");
      out.write("                            <li><img src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/images/list_icon.png\" alt=\"내정보\"><a href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/infoset/info_change.jsp\"> 내정보</a></li>\r\n");
      out.write("                            <li><img src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/images/list_icon.png\" alt=\"이벤트\"><a href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/event/event.jsp\"> 이벤트</a></li>\r\n");
      out.write("                        </ul>\r\n");
      out.write("                    </nav>\r\n");
      out.write("                    <!--//left_menu 영역-->\r\n");
      out.write("                    <!--right_menu 영역-->\r\n");
      out.write("                    <nav class=\"right_menu\">\r\n");
      out.write("                        <ul>\r\n");
      out.write("                            <li><img src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/images/list_icon.png\" alt=\"공지사항\"><a href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/notice/notice_list.jsp\"> 공지사항</a></li>\r\n");
      out.write("                            <li><img src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/images/list_icon.png\" alt=\"고객센터\"><a href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/qna/qna.jsp\"> 고객센터</a></li>\r\n");
      out.write("                        </ul>\r\n");
      out.write("                    </nav>\r\n");
      out.write("                    <!--//right_menu 영역-->\r\n");
      out.write("            </div>\r\n");
      out.write("            <!--//more_menu 영역-->\r\n");
      out.write("        </div>\r\n");
      out.write("        <!--//menu_content 영역-->\r\n");
      out.write("    </aside>\r\n");
      out.write("    <!--//sidebar_menu 영역-->\r\n");
      out.write("\r\n");
      out.write("    <!--nav_wrapper 영역-->\r\n");
      out.write("    <nav id=\"nav_wrapper\">\r\n");
      out.write("        <ul>\r\n");
      out.write("            <li><a href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/notice/notice_list.jsp\">공지사항</a></li>\r\n");
      out.write("            <li><a href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/event/event.jsp\">이벤트</a></li>\r\n");
      out.write("            <li><a href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/qna/qna.jsp\">고객센터</a></li>\r\n");
      out.write("        </ul>\r\n");
      out.write("    </nav>\r\n");
      out.write("    <!--//nav_wrapper 영역-->\r\n");
      out.write("    <!--notice_wrapper 영역-->\r\n");
      out.write("    <div id=\"notice_wrapper\">\r\n");
      out.write("        <h1>공지사항</h1>\r\n");
      out.write("        <!--content_wrapper 영역-->\r\n");
      out.write("        <div class=\"content_wrapper\">\r\n");
      out.write("            <h3>Windows Defender 백신 업데이트 안내</h3>\r\n");
      out.write("            <!--notice_info 영역-->\r\n");
      out.write("            <div class=\"notice_info\">\r\n");
      out.write("                <dl class=\"cate\">\r\n");
      out.write("                    <dt class=\"acchidden\">카테고리</dt>\r\n");
      out.write("                    <dd>[공지]</dd>\r\n");
      out.write("                </dl>\r\n");
      out.write("                <dl class=\"date\">\r\n");
      out.write("                    <dt class=\"acchidden\">등록일</dt>\r\n");
      out.write("                    <dd>2020-05-15</dd>\r\n");
      out.write("                </dl>\r\n");
      out.write("                <dl class=\"count\">\r\n");
      out.write("                    <dt class=\"acchidden\">조회수</dt>\r\n");
      out.write("                    <dd>\r\n");
      out.write("                        283047\r\n");
      out.write("                        <span class=\"icon\"></span>\r\n");
      out.write("                    </dd>\r\n");
      out.write("                </dl>\r\n");
      out.write("            </div>\r\n");
      out.write("            <!--//notice_info 영역-->\r\n");
      out.write("            <!--notice_content 영역-->\r\n");
      out.write("            <div class=\"notice_content\">\r\n");
      out.write("                안녕하세요, 넥슨 고객 여러분<br><br>\r\n");
      out.write("                5월 14일 오후 5시경부터 백신 프로그램 Windows Defender와 Microsoft Security Essentials 에 의해<br>\r\n");
      out.write("                게임 실행이 차단되는 현상이 확인되었습니다.<br><br>\r\n");
      out.write("                이는 백신 업데이트를 진행하지 않은 경우 발생하며,<br>\r\n");
      out.write("                Trojan:Win32/Rozena.V!MTB 항목으로 차단 팝업이 발생하거나 백신에 의해 게임 실행이 차단 됩니다.<br><br>\r\n");
      out.write("                원활한 서비스 이용을 위하여 사용중인 백신을 최신 버전으로 업데이트 해주시기 바랍니다.<br><br>\r\n");
      out.write("                안내드리는 내용 참고하셔서 이용에 불편 없으시길 바랍니다.<br>\r\n");
      out.write("                감사합니다.\r\n");
      out.write("            </div>\r\n");
      out.write("            <!--//notice_content 영역-->\r\n");
      out.write("            <!--notice_prev 영역-->\r\n");
      out.write("            <dl class=\"notice_prev\">\r\n");
      out.write("                <dt>\r\n");
      out.write("                    <span class=\"icon\"></span>\r\n");
      out.write("                    <span class=\"acchidden\">이전글</span>\r\n");
      out.write("                </dt>\r\n");
      out.write("                <dd>\r\n");
      out.write("                    <span class=\"cate\">[공지]</span>\r\n");
      out.write("                    <a href=\"#\">5/21(목) 넥슨 정기점검 안내(수정)</a>\r\n");
      out.write("                </dd>\r\n");
      out.write("            </dl>\r\n");
      out.write("            <!--//notice_prev 영역-->\r\n");
      out.write("            <!--notice_next 영역-->\r\n");
      out.write("            <dl class=\"notice_next\">\r\n");
      out.write("                <dt>\r\n");
      out.write("                    <span class=\"icon\"></span>\r\n");
      out.write("                    <span class=\"acchidden\">다음글</span>\r\n");
      out.write("                </dt>\r\n");
      out.write("                <dd>\r\n");
      out.write("                    <span class=\"cate\">[공지]</span>\r\n");
      out.write("                    <a href=\"#\">5/14(목) 넥슨 지정PC 등록 절차 개선 안내</a>\r\n");
      out.write("                </dd>\r\n");
      out.write("            </dl>\r\n");
      out.write("            <!--//notice_next 영역-->\r\n");
      out.write("            <!--notice_btn 영역-->\r\n");
      out.write("            <div class=\"notice_btn\">\r\n");
      out.write("                <a href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/notice/notice_list.jsp\" class=\"go_list_btn\">목록</a>\r\n");
      out.write("            </div>\r\n");
      out.write("            <!--//notice_btn 영역-->\r\n");
      out.write("        </div>\r\n");
      out.write("        <!--//content_wrapper 영역-->\r\n");
      out.write("    </div>\r\n");
      out.write("    <!--//notice_wrapper 영역-->\r\n");
      out.write("    <!--footer 영역-->\r\n");
      out.write("    <footer>\r\n");
      out.write("        <hr>\r\n");
      out.write("        <p class=\"copyrihgt\">© NEXON Korea Coporationi All Right Reserved.</p>\r\n");
      out.write("    </footer>\r\n");
      out.write("    <!--//footer 영역-->\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
