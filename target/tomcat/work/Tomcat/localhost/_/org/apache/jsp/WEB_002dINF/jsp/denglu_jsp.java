/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.47
 * Generated at: 2021-05-28 10:15:56 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class denglu_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

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

      out.write('\r');
      out.write('\n');

    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
            + path + "/";

      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("    <meta http-equiv=\"content-type\" content=\"text/html; charset=UTF-8\"/>\r\n");
      out.write("\r\n");
      out.write("    <link href=\"");
      out.print(basePath);
      out.write("css/login-style.css\" rel=\"stylesheet\" type=\"text/css\"/>\r\n");
      out.write("    <title>Login</title>\r\n");
      out.write("    <style type=\"text/css\">\r\n");
      out.write("\r\n");
      out.write("        .dlk {\r\n");
      out.write("            width: 350px;\r\n");
      out.write("            height: 300px;\r\n");
      out.write("            padding: 13px;\r\n");
      out.write("            position: absolute;\r\n");
      out.write("            left: 70%;\r\n");
      out.write("            /*\tright: 50%;*/\r\n");
      out.write("            top: 30%;\r\n");
      out.write("            /*margin-top: 50%;\r\n");
      out.write("        margin-right: 20%;\r\n");
      out.write("         */\r\n");
      out.write("            background-color: rgba(240, 255, 255, 0.8);\r\n");
      out.write("            font-family: 宋体;\r\n");
      out.write("            border-radius: 10px;\r\n");
      out.write("            text-align: center;\r\n");
      out.write("\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("    </style>\r\n");
      out.write("    <script type=\"text/javascript\">\r\n");
      out.write("        // var isCommitted = false;//表单是否已经提交标识，默认为false\r\n");
      out.write("        // function dosubmit(){\r\n");
      out.write("        //     if(isCommitted==false){\r\n");
      out.write("        //         isCommitted = true;//提交表单后，将表单是否已经提交标识设置为true\r\n");
      out.write("        //         return true;//返回true让表单正常提交\r\n");
      out.write("        //     }else{\r\n");
      out.write("        //         return false;//返回false那么表单将不提交\r\n");
      out.write("        //     }\r\n");
      out.write("        // }\r\n");
      out.write("        // function check(){\r\n");
      out.write("        //     var telnumber = $(\"#telnumber\").val();\r\n");
      out.write("        //     var password = $(\"#password\").val();\r\n");
      out.write("        //     if (telnumber == \"\" || password == \"\" ) {\r\n");
      out.write("        //         $(\"#message\").text(\"账号密码不能为空！\");\r\n");
      out.write("        //         alert(telnumber);\r\n");
      out.write("        //            return false;\r\n");
      out.write("        //     }\r\n");
      out.write("        //\r\n");
      out.write("        //     return true;\r\n");
      out.write("        //\r\n");
      out.write("        //\r\n");
      out.write("        // }\r\n");
      out.write("\r\n");
      out.write("    </script>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("<div id=\"background\" style=\"width:100%;height:100%;top:0px;left:0px;\">\r\n");
      out.write("    ");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("    <div class=\"dlk\" align=\"right\">\r\n");
      out.write("        <form action=\"/login1\" method=\"post\">\r\n");
      out.write("            <table width=\"292\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n");
      out.write("                <tr>\r\n");
      out.write("                    <td height=\"50\" colspan=\"3\"\r\n");
      out.write("                        style=\"font-size:24px;text-align:center;color:black ;padding-top: 10px; font-weight: 800;\">\r\n");
      out.write("                        &nbsp;&nbsp;用户登陆\r\n");
      out.write("                    </td>\r\n");
      out.write("                </tr>\r\n");
      out.write("\r\n");
      out.write("                <tr>\r\n");
      out.write("                    <td colspan=\"3\" height=\"22\">\r\n");
      out.write("\r\n");
      out.write("                        ");
      out.write("\r\n");
      out.write("                        <h3 style=\"color: #96080d;\"><span id=\"message\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${msg}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("</span></h3>\r\n");
      out.write("                        ");
      out.write("\r\n");
      out.write("                    </td>\r\n");
      out.write("                </tr>\r\n");
      out.write("\r\n");
      out.write("                <tr>\r\n");
      out.write("                    <td width=\"65\" style=\"font-size:18px;color:black\">用户名:</td>\r\n");
      out.write("                    <td colspan=\"2\"><input id=\"telnumber\" name=\"telnumber\" type=\"text\" class=\"dlinput\"\r\n");
      out.write("                                           placeholder=\"用户/管理员\" style=\"border-radius:5px;\"/></td>\r\n");
      out.write("                </tr>\r\n");
      out.write("                <tr>\r\n");
      out.write("                    <td height=\"16\" colspan=\"3\"></td>\r\n");
      out.write("                </tr>\r\n");
      out.write("                <tr>\r\n");
      out.write("                    <td style=\"font-size:18px;color:black\">密&nbsp;码:</td>\r\n");
      out.write("                    <td colspan=\"2\"><input id=\"password\" name=\"password\" type=\"password\" class=\"dlinput\"\r\n");
      out.write("                                           style=\"border-radius:5px;\"/></td>\r\n");
      out.write("                </tr>\r\n");
      out.write("                <tr>\r\n");
      out.write("                    <td height=\"16\" colspan=\"3\"></td>\r\n");
      out.write("                </tr>\r\n");
      out.write("\r\n");
      out.write("                <tr>\r\n");
      out.write("                    <td height=\"16\" colspan=\"3\"></td>\r\n");
      out.write("                </tr>\r\n");
      out.write("                <tr>\r\n");
      out.write("                    <td>&nbsp;</td>\r\n");
      out.write("                    <td colspan=\"2\"><input type=\"submit\" style=\"border-radius:10px;\" value=\"登 录\" class=\"loginbtn\"\r\n");
      out.write("                                           onclick=\"return check()\"/></td>\r\n");
      out.write("                </tr>\r\n");
      out.write("                <tr>\r\n");
      out.write("                    <td>&nbsp;</td>\r\n");
      out.write("                    <td colspan=\"2\">\r\n");
      out.write("                        <table width=\"224\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n");
      out.write("                            <tr>\r\n");
      out.write("                                <td height=\"16\" colspan=\"3\"></td>\r\n");
      out.write("                            </tr>\r\n");
      out.write("                            <tr>\r\n");
      out.write("\r\n");
      out.write("                                <td height=\"24\"><a href=\"#none\" class=\"mm\" style=\"color: #8B864E\">忘记密码？</a></td>\r\n");
      out.write("                                <td height=\"24\"><a href=\"/fangwenregister\" style=\"color: #8B864E\">立即注册</a></td>\r\n");
      out.write("                            </tr>\r\n");
      out.write("\r\n");
      out.write("                        </table>\r\n");
      out.write("                    </td>\r\n");
      out.write("                </tr>\r\n");
      out.write("            </table>\r\n");
      out.write("        </form>\r\n");
      out.write("    </div>\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
