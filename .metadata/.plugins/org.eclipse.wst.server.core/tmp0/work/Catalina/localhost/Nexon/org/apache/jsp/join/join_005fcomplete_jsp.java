/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.24
 * Generated at: 2020-08-11 07:47:00 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.join;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class join_005fcomplete_jsp extends org.apache.jasper.runtime.HttpJspBase
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
        // /join/join_complete.jsp(4,0) name = var type = java.lang.String reqTime = false required = false fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
        _jspx_th_c_005fset_005f0.setVar("contextPath");
        // /join/join_complete.jsp(4,0) name = value type = null reqTime = true required = false fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
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
      out.write("<html lang=\"ko\">\r\n");
      out.write("<head>\r\n");
      out.write("    <meta charset=\"UTF-8\">\r\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n");
      out.write("    <meta name=\"author\" content=\"윤희원\">\r\n");
      out.write("    <title>가입완료</title>\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/css/join_complete.css\">\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("    <!--gnb_wrapper 영역-->\r\n");
      out.write("    <header id=\"gnb_wrapper\">\r\n");
      out.write("        <!--logo 영역-->\r\n");
      out.write("        <div class=\"logo\">\r\n");
      out.write("            <h1><img src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/images/join_logo.PNG\" alt=\"로고\"></h1>\r\n");
      out.write("        </div>\r\n");
      out.write("        <!--//logo 영역-->\r\n");
      out.write("        <!--side_menu 영역-->\r\n");
      out.write("        <ul class=\"side_menu\">\r\n");
      out.write("            <li><a href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/index.jsp\">넥슨닷컴</a></li>\r\n");
      out.write("            <li><a href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/join/join.jsp\">회원가입</a></li>\r\n");
      out.write("            <li><a href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/login/login.jsp\">로그인</a></li>\r\n");
      out.write("        </ul>\r\n");
      out.write("        <!--//side_menu 영역-->\r\n");
      out.write("    </header>\r\n");
      out.write("    <!--//gnb_wrapper 영역-->\r\n");
      out.write("    <hr>\r\n");
      out.write("\r\n");
      out.write("    <!--complete_wrap 영역-->\r\n");
      out.write("    <div id=\"complete_wrap\">\r\n");
      out.write("        <h1>가입 완료</h1>\r\n");
      out.write("        <!--top_content 영역-->\r\n");
      out.write("        <div class=\"top_content\">\r\n");
      out.write("            <!--left_img 영역-->\r\n");
      out.write("            <div class=\"left_img\">\r\n");
      out.write("                <img src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/images/welcome.PNG\" alt=\"환영합니다\">\r\n");
      out.write("            </div>\r\n");
      out.write("            <!--//left_img 영역-->\r\n");
      out.write("            <!--right_msg 영역-->\r\n");
      out.write("            <div class=\"right_msg\">\r\n");
      out.write("                <h2>환영합니다!</h2>\r\n");
      out.write("                <strong>넥슨 회원가입이 완료 되었습니다.</strong>\r\n");
      out.write("                <br>\r\n");
      out.write("                <p>\r\n");
      out.write("                    넥슨ID는 <strong class=\"join_id\">user@gmail.com</strong> 입니다.\r\n");
      out.write("                </p>\r\n");
      out.write("                <input type=\"button\" value=\"넥슨 홈 가기\" class=\"go_main_btn\" onclick=\"location.href='");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/index.jsp'\">\r\n");
      out.write("            </div>\r\n");
      out.write("            <!--//right_msg 영역-->\r\n");
      out.write("        </div>\r\n");
      out.write("        <!--//top_content 영역-->\r\n");
      out.write("        <!--bottom_content 영역-->\r\n");
      out.write("        <div class=\"bottom_content\">\r\n");
      out.write("            <div class=\"title_msg\">\r\n");
      out.write("                <p><strong>넥슨 게임</strong>을 이용하기 위해서는 <strong>로그인 및 본인확인</strong>이 필요합니다.</p>\r\n");
      out.write("                <p>고객님께서 <strong>해당하시는 회원의 유형을 선택</strong>해주세요.</p>\r\n");
      out.write("            </div>\r\n");
      out.write("            <!--identifi 영역-->\r\n");
      out.write("            <div class=\"identifi\">\r\n");
      out.write("                <p>만 14세 미만</p>\r\n");
      out.write("                <strong>어린이회원</strong>\r\n");
      out.write("                <br>\r\n");
      out.write("                <a href=\"#\">본인확인</a>\r\n");
      out.write("            </div>\r\n");
      out.write("            <!--//identifi 영역-->\r\n");
      out.write("            <!--identifi 영역-->\r\n");
      out.write("            <div class=\"identifi\">\r\n");
      out.write("                <p>만 14세~18세 미만</p>\r\n");
      out.write("                <strong>청소년회원</strong>\r\n");
      out.write("                <br>\r\n");
      out.write("                <a href=\"#\">본인확인</a>\r\n");
      out.write("            </div>\r\n");
      out.write("            <!--//identifi 영역-->\r\n");
      out.write("            <!--identifi 영역-->\r\n");
      out.write("            <div class=\"identifi\">\r\n");
      out.write("                <p>만 18세 이상</p>\r\n");
      out.write("                <strong>일반회원</strong>\r\n");
      out.write("                <br>\r\n");
      out.write("                <a href=\"#\">본인확인</a>\r\n");
      out.write("            </div>\r\n");
      out.write("            <!--//identifi 영역-->\r\n");
      out.write("        </div>\r\n");
      out.write("        <!--//bottom_content 영역-->\r\n");
      out.write("        <!--add_explain 영역-->\r\n");
      out.write("        <div class=\"add_explain\">\r\n");
      out.write("            <p><strong>본인확인을 하지 않아도 가입하신 넥슨ID로 로그인이 가능</strong>합니다.</p>\r\n");
      out.write("        </div>\r\n");
      out.write("        <!--//add_explain 영역-->\r\n");
      out.write("    </div>\r\n");
      out.write("    <!--//complete_wrap 영역-->\r\n");
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