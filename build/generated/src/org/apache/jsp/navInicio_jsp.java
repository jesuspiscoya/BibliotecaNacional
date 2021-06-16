package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class navInicio_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write('\r');
      out.write('\n');
      out.write(" \r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<!-- navbar -->\r\n");
      out.write("<nav\r\n");
      out.write("    class=\" z-index\r\n");
      out.write("    navbar navbar-light\r\n");
      out.write("    bg-nav-bar\r\n");
      out.write("    rounded-pill\r\n");
      out.write("    fixed-bottom\r\n");
      out.write("    mb-2\r\n");
      out.write("    me-2\r\n");
      out.write("    ms-2\r\n");
      out.write("    shadow\r\n");
      out.write("    d-lg-none\r\n");
      out.write("    \r\n");
      out.write("    \"\r\n");
      out.write("    >\r\n");
      out.write("    <div class=\"container\">\r\n");
      out.write("        <a class=\"navbar-brand d-none d-lg-block\" href=\"index.jsp\"\r\n");
      out.write("           ><img src=\"img/logo.svg\" width=\"266\" alt=\"\"\r\n");
      out.write("              /></a>\r\n");
      out.write("        <ul\r\n");
      out.write("            class=\"\r\n");
      out.write("            navbar-nav\r\n");
      out.write("            d-flex\r\n");
      out.write("            flex-row\r\n");
      out.write("            justify-content-around\r\n");
      out.write("            align-content-center\r\n");
      out.write("            w-100\r\n");
      out.write("            \"\r\n");
      out.write("            >\r\n");
      out.write("            <li class=\"nav-item\">\r\n");
      out.write("                <a class=\"mb-0 nav-link active h5\" aria-current=\"page\" href=\"index.jsp\">\r\n");
      out.write("                    <img src=\"./img/icons/btn-inicio.svg\" alt=\"\" width=\"\" />\r\n");
      out.write("                    <span class=\"d-none d-lg-block\"> Inicio </span>\r\n");
      out.write("                </a>\r\n");
      out.write("            </li>\r\n");
      out.write("            <li class=\"nav-item\">\r\n");
      out.write("                <a\r\n");
      out.write("                    class=\"mb-0 nav-link active h5\"\r\n");
      out.write("                    aria-current=\"page\"\r\n");
      out.write("                    href=\"Libros.jsp\"\r\n");
      out.write("                    >\r\n");
      out.write("                    <img src=\"./img/icons/btn-buscar.svg\" alt=\"\" width=\"\" />\r\n");
      out.write("                    <span class=\"d-none d-lg-block\"> Libros </span>\r\n");
      out.write("                </a>\r\n");
      out.write("            </li>\r\n");
      out.write("            <li class=\"nav-item\">\r\n");
      out.write("                <a class=\"mb-0 nav-link active h5\" aria-current=\"page\" href=\"#\">\r\n");
      out.write("                    <img src=\"./img/icons/btn-biblioteca.svg\" alt=\"\" width=\"\" />\r\n");
      out.write("                    <span class=\"d-none d-lg-block\"> Informacion </span>\r\n");
      out.write("                </a>\r\n");
      out.write("            </li>\r\n");
      out.write("            <li class=\"nav-item\">\r\n");
      out.write("                <a\r\n");
      out.write("                    class=\"mb-0 nav-link active h5\"\r\n");
      out.write("                    aria-current=\"page\"\r\n");
      out.write("                    href=\"#\"\r\n");
      out.write("                    data-bs-toggle=\"collapse\"\r\n");
      out.write("                    data-bs-target=\"#navbarSupportedContent\"\r\n");
      out.write("                    aria-expanded=\"false\"\r\n");
      out.write("                    aria-controls=\"multiCollapseExample2\"\r\n");
      out.write("                    >\r\n");
      out.write("                    <img src=\"./img/icons/btn-perfil.svg\" alt=\"\" width=\"\" />\r\n");
      out.write("                    <span class=\"d-none d-lg-block\"> Contacto </span>\r\n");
      out.write("                </a>\r\n");
      out.write("            </li>\r\n");
      out.write("        </ul>\r\n");
      out.write("        <div class=\"collapse tipo-sesion shadow-sm\" id=\"navbarSupportedContent\">\r\n");
      out.write("            <ul class=\"navbar-nav text-center\">\r\n");
      out.write("                <li class=\"nav-item  hv\">\r\n");
      out.write("                    <a class=\"nav-link px-3 active h5\" aria-current=\"page\" href=\"Login.jsp\"\r\n");
      out.write("                       ><i\r\n");
      out.write("                            class=\"\r\n");
      out.write("                            fas\r\n");
      out.write("                            fa-sign-in-alt\r\n");
      out.write("                            d-flex\r\n");
      out.write("                            align-items-start\r\n");
      out.write("                            justify-content-center\r\n");
      out.write("                            w-100\r\n");
      out.write("                            \"\r\n");
      out.write("                            ></i>\r\n");
      out.write("                        Login</a\r\n");
      out.write("                    >\r\n");
      out.write("                </li>\r\n");
      out.write("                <li class=\"nav-item  hv\">\r\n");
      out.write("                    <a class=\"nav-link px-3 active h5\" aria-current=\"page\" href=\"Intranet.jsp\"\r\n");
      out.write("                       ><i\r\n");
      out.write("                            class=\"\r\n");
      out.write("                            fas\r\n");
      out.write("                            fa-ethernet\r\n");
      out.write("                            d-flex\r\n");
      out.write("                            align-items-start\r\n");
      out.write("                            justify-content-center\r\n");
      out.write("                            w-100\r\n");
      out.write("                            \"\r\n");
      out.write("                            ></i>\r\n");
      out.write("                        Intranet</a\r\n");
      out.write("                    >\r\n");
      out.write("                </li>\r\n");
      out.write("            </ul>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("</nav>\r\n");
      out.write("\r\n");
      out.write("<nav\r\n");
      out.write("    class=\" navbar_desktop\r\n");
      out.write("    flex-column flex-shrink-0\r\n");
      out.write("    navbar-light\r\n");
      out.write("    bg-nav-bar\r\n");
      out.write("    d-none d-lg-block\r\n");
      out.write("    p-3\r\n");
      out.write("    z-index\r\n");
      out.write("    \"\r\n");
      out.write("    style=\"width: 280px;\"\r\n");
      out.write("    >\r\n");
      out.write("    <a class=\"navbar-brand d-none d-lg-block m-0 mb-2\" href=\"index.jsp\"\r\n");
      out.write("       ><img src=\"img/logo.svg\" alt=\"\" class=\"logo-navbar_desktop\"\r\n");
      out.write("          /></a>\r\n");
      out.write("    <hr>\r\n");
      out.write("    <ul\r\n");
      out.write("        class=\"\r\n");
      out.write("        navbar-nav\r\n");
      out.write("        d-flex\r\n");
      out.write("        align-content-center\r\n");
      out.write("        w-100\r\n");
      out.write("        \"\r\n");
      out.write("        >\r\n");
      out.write("        <li class=\"nav-item\">\r\n");
      out.write("            <a class=\"mb-0 d-flex align-items-center nav-link active h5\" aria-current=\"page\" href=\"index.jsp\">\r\n");
      out.write("                <span class=\"icon-navbar_desktop\">\r\n");
      out.write("                    <img src=\"./img/icons/btn-inicio.svg\" alt=\"\" width=\"\" />\r\n");
      out.write("                </span>\r\n");
      out.write("                <span class=\"d-none d-lg-block justify-self-center ms-4\"> Inicio </span>\r\n");
      out.write("            </a>\r\n");
      out.write("        </li>\r\n");
      out.write("        <li class=\"nav-item w-100\">\r\n");
      out.write("            <a\r\n");
      out.write("                class=\"mb-0 d-flex align-items-center nav-link active h5\"\r\n");
      out.write("                aria-current=\"page\"\r\n");
      out.write("                href=\"Libros.jsp\"\r\n");
      out.write("                >\r\n");
      out.write("                <span class=\"icon-navbar_desktop\">\r\n");
      out.write("                    <img src=\"./img/icons/btn-buscar.svg\" alt=\"\" width=\"\" />\r\n");
      out.write("                </span>\r\n");
      out.write("                <span class=\"d-none d-lg-block justify-self-center ms-4\"> Libros </span>\r\n");
      out.write("            </a>\r\n");
      out.write("        </li>\r\n");
      out.write("        <li class=\"nav-item\">\r\n");
      out.write("            <a class=\"mb-0 d-flex align-items-center nav-link active h5\" aria-current=\"page\" href=\"#\">\r\n");
      out.write("                <span class=\"icon-navbar_desktop\">\r\n");
      out.write("                    <img src=\"./img/icons/btn-biblioteca.svg\" alt=\"\" width=\"\" />\r\n");
      out.write("                </span>\r\n");
      out.write("                <span class=\"d-none d-lg-block justify-self-center ms-4\"> Informacion </span>\r\n");
      out.write("            </a>\r\n");
      out.write("        </li>\r\n");
      out.write("        <li class=\"nav-item position-absolute nav-bar_desktop__sesion\">\r\n");
      out.write("            <hr>\r\n");
      out.write("            <a\r\n");
      out.write("                class=\"mb-0 d-flex align-items-center justify-content-center nav-link active h5\"\r\n");
      out.write("                aria-current=\"page\"\r\n");
      out.write("                href=\"#\"\r\n");
      out.write("                data-bs-toggle=\"collapse\"\r\n");
      out.write("                data-bs-target=\"#navbarSupportedContent\"\r\n");
      out.write("                aria-expanded=\"false\"\r\n");
      out.write("                aria-controls=\"multiCollapseExample2\"\r\n");
      out.write("                >\r\n");
      out.write("                <span class=\"icon-navbar_desktop d-none\">\r\n");
      out.write("                    <img src=\"./img/icons/btn-perfil.svg\" alt=\"\" width=\"\" />\r\n");
      out.write("                </span>\r\n");
      out.write("                <span class=\"d-none d-lg-block justify-self-center w-100 mx-2 btn btn-dark\"> \r\n");
      out.write("                    Iniciar Sesión \r\n");
      out.write("                </span>\r\n");
      out.write("            </a>\r\n");
      out.write("            <div class=\"collapse tipo-sesion shadow-sm\" id=\"navbarSupportedContent\">\r\n");
      out.write("                <ul class=\"navbar-nav text-center\">\r\n");
      out.write("                    <li class=\"nav-item  hv\">\r\n");
      out.write("                        <a class=\"nav-link px-3 active h5\" aria-current=\"page\" href=\"Login.jsp\"\r\n");
      out.write("                           ><i\r\n");
      out.write("                                class=\"\r\n");
      out.write("                                fas\r\n");
      out.write("                                fa-sign-in-alt\r\n");
      out.write("                                d-flex\r\n");
      out.write("                                align-items-start\r\n");
      out.write("                                justify-content-center\r\n");
      out.write("                                w-100\r\n");
      out.write("                                \"\r\n");
      out.write("                                ></i>\r\n");
      out.write("                            Login</a\r\n");
      out.write("                        >\r\n");
      out.write("                    </li>\r\n");
      out.write("                    <li class=\"nav-item  hv\">\r\n");
      out.write("                        <a class=\"nav-link px-3 active h5\" aria-current=\"page\" href=\"Intranet.jsp\"\r\n");
      out.write("                           ><i\r\n");
      out.write("                                class=\"\r\n");
      out.write("                                fas\r\n");
      out.write("                                fa-ethernet\r\n");
      out.write("                                d-flex\r\n");
      out.write("                                align-items-start\r\n");
      out.write("                                justify-content-center\r\n");
      out.write("                                w-100\r\n");
      out.write("                                \"\r\n");
      out.write("                                ></i>\r\n");
      out.write("                            Intranet</a\r\n");
      out.write("                        >\r\n");
      out.write("                    </li>\r\n");
      out.write("                </ul>\r\n");
      out.write("            </div>\r\n");
      out.write("        </li>\r\n");
      out.write("    </ul>\r\n");
      out.write("</nav>\r\n");
      out.write("\r\n");
      out.write("<!-- /navbar -->\r\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
