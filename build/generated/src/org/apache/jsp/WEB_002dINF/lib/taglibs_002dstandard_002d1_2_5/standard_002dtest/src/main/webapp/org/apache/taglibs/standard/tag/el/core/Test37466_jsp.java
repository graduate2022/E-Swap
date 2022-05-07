package org.apache.jsp.WEB_002dINF.lib.taglibs_002dstandard_002d1_2_5.standard_002dtest.src.main.webapp.org.apache.taglibs.standard.tag.el.core;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Test37466_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_import_varReader_url;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_x_parse_xml_var_nobody;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _jspx_tagPool_c_import_varReader_url = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_x_parse_xml_var_nobody = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _jspx_tagPool_c_import_varReader_url.release();
    _jspx_tagPool_x_parse_xml_var_nobody.release();
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
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      //  c:import
      org.apache.taglibs.standard.tag.rt.core.ImportTag _jspx_th_c_import_0 = (org.apache.taglibs.standard.tag.rt.core.ImportTag) _jspx_tagPool_c_import_varReader_url.get(org.apache.taglibs.standard.tag.rt.core.ImportTag.class);
      _jspx_th_c_import_0.setPageContext(_jspx_page_context);
      _jspx_th_c_import_0.setParent(null);
      _jspx_th_c_import_0.setUrl("/org/apache/taglibs/standard/tag/el/core/Test37466.xml");
      _jspx_th_c_import_0.setVarReader("xmlSource");
      int[] _jspx_push_body_count_c_import_0 = new int[] { 0 };
      try {
        int _jspx_eval_c_import_0 = _jspx_th_c_import_0.doStartTag();
        if (_jspx_eval_c_import_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
          if (_jspx_eval_c_import_0 != javax.servlet.jsp.tagext.Tag.EVAL_BODY_INCLUDE) {
            out = _jspx_page_context.pushBody();
            _jspx_push_body_count_c_import_0[0]++;
            _jspx_th_c_import_0.setBodyContent((javax.servlet.jsp.tagext.BodyContent) out);
            _jspx_th_c_import_0.doInitBody();
          }
          do {
            out.write('\n');

	java.io.StringReader o = (java.io.StringReader)pageContext.getAttribute("xmlSource");
	System.out.println("o: " + o);
	char[] buf = new char[1];
	while (o.read(buf) > 0)
	{
		System.out.print(buf);
	}
	System.out.println("");
	System.out.println("------");
	o.reset();

            out.write('\n');
            out.write('	');
            if (_jspx_meth_x_parse_0((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_import_0, _jspx_page_context, _jspx_push_body_count_c_import_0))
              return;
            out.write('\n');
            int evalDoAfterBody = _jspx_th_c_import_0.doAfterBody();
            if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
              break;
          } while (true);
          if (_jspx_eval_c_import_0 != javax.servlet.jsp.tagext.Tag.EVAL_BODY_INCLUDE)
            out = _jspx_page_context.popBody();
            _jspx_push_body_count_c_import_0[0]--;
        }
        if (_jspx_th_c_import_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
          return;
        }
      } catch (Throwable _jspx_exception) {
        while (_jspx_push_body_count_c_import_0[0]-- > 0)
          out = _jspx_page_context.popBody();
        _jspx_th_c_import_0.doCatch(_jspx_exception);
      } finally {
        _jspx_th_c_import_0.doFinally();
        _jspx_tagPool_c_import_varReader_url.reuse(_jspx_th_c_import_0);
      }
      out.write('\n');

	System.out.println("XX parsed ok");

      out.write("\n");
      out.write("\n");
      out.write("worked: ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${xmldoc}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write('\n');
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

  private boolean _jspx_meth_x_parse_0(javax.servlet.jsp.tagext.JspTag _jspx_th_c_import_0, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_import_0)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  x:parse
    org.apache.taglibs.standard.tag.rt.xml.ParseTag _jspx_th_x_parse_0 = (org.apache.taglibs.standard.tag.rt.xml.ParseTag) _jspx_tagPool_x_parse_xml_var_nobody.get(org.apache.taglibs.standard.tag.rt.xml.ParseTag.class);
    _jspx_th_x_parse_0.setPageContext(_jspx_page_context);
    _jspx_th_x_parse_0.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_import_0);
    _jspx_th_x_parse_0.setXml((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${xmlSource}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_x_parse_0.setVar("xmldoc");
    int _jspx_eval_x_parse_0 = _jspx_th_x_parse_0.doStartTag();
    if (_jspx_th_x_parse_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_x_parse_xml_var_nobody.reuse(_jspx_th_x_parse_0);
      return true;
    }
    _jspx_tagPool_x_parse_xml_var_nobody.reuse(_jspx_th_x_parse_0);
    return false;
  }
}
