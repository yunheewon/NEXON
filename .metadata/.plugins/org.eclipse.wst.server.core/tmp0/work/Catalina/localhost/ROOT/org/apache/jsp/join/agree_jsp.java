/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.24
 * Generated at: 2020-07-28 07:41:30 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.join;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class agree_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(3);
    _jspx_dependants.put("jar:file:/D:/Heewon/NEXON/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/Nexon/WEB-INF/lib/standard.jar!/META-INF/c.tld", Long.valueOf(1098678690000L));
    _jspx_dependants.put("/WEB-INF/lib/standard.jar", Long.valueOf(1595495154000L));
    _jspx_dependants.put("jar:file:/D:/Heewon/NEXON/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/Nexon/WEB-INF/lib/standard.jar!/META-INF/fmt.tld", Long.valueOf(1098678690000L));
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

  private org.apache.jasper.runtime.TagHandlerPool _005fjspx_005ftagPool_005fc_005furl_0026_005fvalue_005fnobody;

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
    _005fjspx_005ftagPool_005fc_005furl_0026_005fvalue_005fnobody = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _005fjspx_005ftagPool_005fc_005furl_0026_005fvalue_005fnobody.release();
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
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"ko\">\r\n");
      out.write("<head>\r\n");
      out.write("    <meta charset=\"UTF-8\">\r\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n");
      out.write("    <meta name=\"author\" content=\"윤희원\">\r\n");
      out.write("    <title>약관동의</title>\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"../css/agree.css\">\r\n");
      out.write("    <script src=\"");
      if (_jspx_meth_c_005furl_005f0(_jspx_page_context))
        return;
      out.write("\"></script>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("    <!--gnb_wrapper 영역-->\r\n");
      out.write("    <header id=\"gnb_wrapper\">\r\n");
      out.write("        <!--logo 영역-->\r\n");
      out.write("        <div class=\"logo\">\r\n");
      out.write("            <h1><img src=\"../images/join_logo.PNG\" alt=\"로고\"></h1>\r\n");
      out.write("        </div>\r\n");
      out.write("        <!--//logo 영역-->\r\n");
      out.write("        <!--side_menu 영역-->\r\n");
      out.write("        <ul class=\"side_menu\">\r\n");
      out.write("            <li><a href=\"../main.jsp\">넥슨닷컴</a></li>\r\n");
      out.write("            <li><a href=\"./join.jsp\">회원가입</a></li>\r\n");
      out.write("            <li><a href=\"../login/login.jsp\">로그인</a></li>\r\n");
      out.write("        </ul>\r\n");
      out.write("        <!--//side_menu 영역-->\r\n");
      out.write("    </header>\r\n");
      out.write("    <!--//gnb_wrapper 영역-->\r\n");
      out.write("    <hr>\r\n");
      out.write("    <!--user_agreement 영역-->\r\n");
      out.write("    <form id=\"user_agreement\" method=\"post\" action=\"nexon.gd?type=joinForm\"> \r\n");
      out.write("        <h1>약관동의</h1>\r\n");
      out.write("        <!--check_all 영역-->\r\n");
      out.write("        <div class=\"check_all\" >\r\n");
      out.write("            <input type=\"checkbox\" name=\"chk_all\" id=\"chk_all\"  onclick=\"useTerm_check();\">\r\n");
      out.write("            <label for=\"check_all\">\r\n");
      out.write("                넥슨 서비스 이용약관, 개인정보 수집 및 이용, 유효기간 5년(선택),<br>\r\n");
      out.write("                이벤트 등 프로모션 안내 메일 수신(선택)에 <strong>모두 동의</strong> 합니다.\r\n");
      out.write("            </label>\r\n");
      out.write("        </div>\r\n");
      out.write("        <!--//check_all 영역-->\r\n");
      out.write("        <!--service_ag 영역-->\r\n");
      out.write("        <div class=\"service_ag\">\r\n");
      out.write("            <!--chk_square 영역-->\r\n");
      out.write("            <div class=\"chk_square\">\r\n");
      out.write("                <input type=\"checkbox\" name=\"chk_ser\" id=\"chk_ser\" onclick=\"unLockBox();\">\r\n");
      out.write("                <label for=\"chk_ser\">넥슨 서비스 이용약관 동의</label>\r\n");
      out.write("            </div>\r\n");
      out.write("            <!--//chk_square 영역-->\r\n");
      out.write("            <!--ser_content 영역-->\r\n");
      out.write("            <div class=\"ser_content\">\r\n");
      out.write("                <strong><제1장 총칙></strong><br><br>\r\n");
      out.write("               \t제1조(목적)<br>\r\n");
      out.write("               \t이 약관은 (주)넥슨코리아(이하 \"회사\"라고 함)가 제공하는 게임 및 제반 서비스의 이용과 관련하여 회원과 회사 간의 조건 및 절차에 관한 기본적인 사항을 정함을 목적으로 합니다.<br>\r\n");
      out.write("               \t제2조(용어의 정의)<br>\r\n");
      out.write("                ① 이 약관에서 사용하는 용어의 정의는 다음과 같습니다.<br>\r\n");
      out.write("                1. 이용 계약: 회사가 제공하는 서비스 이용과 관련하여 회사와 이용 고객 간에 체결하는 계약을 말합니다.<br>\r\n");
      out.write("                2. 회원: 회사가 제공하는 절차에 따른 가입 신청 및 이용 계약 체결을 완료한 뒤, ID를 발급받아 회사의 서비스를 이용할 수 있는 자를 말합니다.<br>\r\n");
      out.write("                3. ID: 회원 식별과 서비스 이용을 위하여 회원이 선정하고 회사가 승인하는 문자, 특수문자, 숫자 등의 조합을 말합니다.<br>\r\n");
      out.write("                4. 체험 ID: 회원 식별과 회사가 제공하는 특정 서비스를 이용하기 위하여 회원이 선정하고 회사가 승인하는 문자, 특수문자, 숫자 등을 말합니다.<br>\r\n");
      out.write("                5. PASSWORD(이하 \"비밀번호\"라고 함): 회원이 자신의 ID 또는 체험 ID와 일치하는 이용 고객임을 확인하기 위해 선정한 문자, 특수문자, 숫자 등의 조합을 말합니다.<br>\r\n");
      out.write("                6. 회원 탈퇴: 회원이 이용 계약을 해지함을 의미합니다.<br>\r\n");
      out.write("                7. 계정 : ID에 수반하여 게임 이용을 위해 회원이 별도로 생성하는 캐릭터, 게임 ID 등을 의미합니다.<br>\r\n");
      out.write("                ② 이 약관에서 사용하는 용어의 정의는 제1항에서 정하는 것을 제외하고는 관계 법령 및 각 서비스 별 안내에서 정하는 바에 의합니다. 관계 법령과 각 서비스 별 안내에서 정하지 않는 것은 일반적인 상관례에 의합니다.\r\n");
      out.write("            </div>\r\n");
      out.write("            <!--//ser_content 영역-->\r\n");
      out.write("        </div>\r\n");
      out.write("        <!--//service_ag 영역-->\r\n");
      out.write("        <!--privacy_ag 영역-->\r\n");
      out.write("        <div class=\"privacy_ag\">\r\n");
      out.write("            <!--chk_square 영역-->\r\n");
      out.write("            <div class=\"chk_square\">\r\n");
      out.write("                <input type=\"checkbox\" name=\"chk_pri\" id=\"chk_pri\" onclick=\"unLockBox();\">\r\n");
      out.write("                <label for=\"chk_pri\">개인정보 수집 및 이용 동의</label>\r\n");
      out.write("            </div>\r\n");
      out.write("            <!--//chk_square 영역-->\r\n");
      out.write("            <!--pri_content 영역-->\r\n");
      out.write("            <div class=\"pri_content\">\r\n");
      out.write("                <strong>[개인정보 수집 및 이용 동의]</strong><br><br>\r\n");
      out.write("                (주)넥슨코리아는 다음과 같이 개인정보를 수집 및 이용하고 있습니다.<br>\r\n");
      out.write("                - 수집 및 이용 목적: 회원 가입, 게임서비스 제공, 이용자 식별, 공지사항 전달<br>\r\n");
      out.write("                - 항목: ID, 닉네임, 비밀번호, 이메일주소<br>\r\n");
      out.write("                - 수집 및 이용 목적: 본인확인, 이용자 식별, 부정이용 방지, 중복가입 방지, 공지사항 전달<br>\r\n");
      out.write("                - 항목: 이름, 생년월일, 성별, 내외국인정보, 이동통신사정보, 휴대폰번호, 연계정보(CI), 중복가입정보(DI)<br>\r\n");
      out.write("                - 보유 및 이용기간: 회원탈퇴일로부터 30일 (법령에 특별한 규정이 있을 경우 관련 법령에 따라 보관)<br>\r\n");
      out.write("               \t동의를 거부할 경우 회원가입이 불가능 합니다.<br>\r\n");
      out.write("               \t외부 계정을 이용하는 경우 이용자가 동의한 범위 내에서만 개인정보를 제공받고 처리합니다.<br>\r\n");
      out.write("               \t이벤트 등 프로모션 알림 전송을 위해 선택적으로 개인정보를 이용할 수 있습니다.<br><br>\r\n");
      out.write("               \t※ 그 외의 사항 및 자동 수집 정보와 관련된 사항은 개인정보처리방침을 따릅니다.\r\n");
      out.write("            </div>\r\n");
      out.write("            <!--//pri_content 영역-->\r\n");
      out.write("        </div>\r\n");
      out.write("        <!--//privacy_ag 영역-->\r\n");
      out.write("        <!--priterm_ag 영역-->\r\n");
      out.write("        <div class=\"priterm_ag\">\r\n");
      out.write("            <input type=\"checkbox\" name=\"chk_priterm\" id=\"chk_priterm\" onclick=\"unLockBox();\">\r\n");
      out.write("            <label for=\"chk_priterm\">\r\n");
      out.write("                <strong>(선택)</strong> 개인정보 유효기간을 5년으로 선택합니다.\r\n");
      out.write("                <p>선택하지 않으시면 1년으로 설정됩니다.</p>\r\n");
      out.write("            </label>\r\n");
      out.write("        </div>\r\n");
      out.write("        <!--//priterm_ag 영역-->\r\n");
      out.write("        <!--event_ag 영역-->\r\n");
      out.write("        <div class=\"event_ag\">\r\n");
      out.write("            <input type=\"checkbox\" name=\"chk_eve\" id=\"chk_eve\" onclick=\"unLockBox();\">\r\n");
      out.write("            <label for=\"chk_eve\">\r\n");
      out.write("                <strong>(선택)</strong> 이벤트 등 프로모션 안내 메일을 수신합니다.\r\n");
      out.write("            </label>\r\n");
      out.write("        </div>\r\n");
      out.write("        <!--//event_ag 영역-->\r\n");
      out.write("        <!--next_btn_wrap 영역-->\r\n");
      out.write("        <div id=\"next_btn_wrap\">\r\n");
      out.write("            <!--<a href=\"#\" class=\"next_btn\" onclick=\"this.href=need_field();\">다음</a> -->\r\n");
      out.write("            <input type=\"submit\" class=\"next_btn\" onclick=\"need_field(this.form);\" value=\"다음\">\r\n");
      out.write("        </div>\r\n");
      out.write("        <!--//next_btn_wrap 영역-->\r\n");
      out.write("    </form>\r\n");
      out.write("    <!--//user_agreement 영역-->\r\n");
      out.write("    <!--footer 영역-->\r\n");
      out.write("    <footer>\r\n");
      out.write("        <hr>\r\n");
      out.write("        <p class=\"copyrihgt\">© NEXON Korea Coporationi All Right Reserved.</p>\r\n");
      out.write("    </footer>\r\n");
      out.write("    <!--//footer 영역-->\r\n");
      out.write("    <script src=\"../js/agree.js\"></script>\r\n");
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

  private boolean _jspx_meth_c_005furl_005f0(javax.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  c:url
    org.apache.taglibs.standard.tag.rt.core.UrlTag _jspx_th_c_005furl_005f0 = (org.apache.taglibs.standard.tag.rt.core.UrlTag) _005fjspx_005ftagPool_005fc_005furl_0026_005fvalue_005fnobody.get(org.apache.taglibs.standard.tag.rt.core.UrlTag.class);
    boolean _jspx_th_c_005furl_005f0_reused = false;
    try {
      _jspx_th_c_005furl_005f0.setPageContext(_jspx_page_context);
      _jspx_th_c_005furl_005f0.setParent(null);
      // /join/agree.jsp(13,17) name = value type = null reqTime = true required = false fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
      _jspx_th_c_005furl_005f0.setValue("/js/jquery.js");
      int _jspx_eval_c_005furl_005f0 = _jspx_th_c_005furl_005f0.doStartTag();
      if (_jspx_th_c_005furl_005f0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
      _005fjspx_005ftagPool_005fc_005furl_0026_005fvalue_005fnobody.reuse(_jspx_th_c_005furl_005f0);
      _jspx_th_c_005furl_005f0_reused = true;
    } finally {
      org.apache.jasper.runtime.JspRuntimeLibrary.releaseTag(_jspx_th_c_005furl_005f0, _jsp_getInstanceManager(), _jspx_th_c_005furl_005f0_reused);
    }
    return false;
  }
}
