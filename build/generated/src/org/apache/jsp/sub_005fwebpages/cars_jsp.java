package org.apache.jsp.sub_005fwebpages;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.io.FileOutputStream;
import java.sql.ResultSet;
import java.sql.Blob;
import java.io.OutputStream;
import java.sql.PreparedStatement;
import java.sql.DriverManager;
import java.util.Scanner;
import java.sql.Connection;

public final class cars_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <title>cars</title>\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("        <style>\n");
      out.write("            div{\n");
      out.write("               background-color: lightgrey;\n");
      out.write("            }\n");
      out.write("            ul {\n");
      out.write("    list-style-type: none;\n");
      out.write("    margin: 0;\n");
      out.write("    padding: 0;\n");
      out.write("    overflow: hidden;\n");
      out.write("    background-color: #333;\n");
      out.write("}\n");
      out.write("\n");
      out.write("li {\n");
      out.write("    float: left;\n");
      out.write("}\n");
      out.write("\n");
      out.write("li a {\n");
      out.write("    display: block;\n");
      out.write("    color: white;\n");
      out.write("    text-align: center;\n");
      out.write("    padding: 14px 16px;\n");
      out.write("    text-decoration: none;\n");
      out.write("}\n");
      out.write("\n");
      out.write("li a:hover:not(.active) {\n");
      out.write("    background-color: #111;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".active {\n");
      out.write("    background-color: #4CAF50;\n");
      out.write("}\n");
      out.write(".c{\n");
      out.write("    float: left;\n");
      out.write("    padding: 20px 30px;\n");
      out.write("    border: 1px solid black;\n");
      out.write("}\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <button style=\"float: right;display: block;\"><a href=\"C:\\Users\\Abhinav Thakur\\Documents\\NetBeansProjects\\WebApp_Project\\web\\home1.jsp\">Home</a></button>\n");
      out.write("        <div>\n");
      out.write("            <ul>\n");
      out.write("                <li class=\"active\"><a href=\"cars.jsp\">Used Cars</a></li>\n");
      out.write("                <li><a href=\"new_cars.jsp\">New Cars</a></li>\n");
      out.write("                <li><a href=\"bikes.jsp\">Bikes</a></li>\n");
      out.write("                <li><a href=\"vehicles.jsp\">Commercial Vehicles</a></li>\n");
      out.write("                </ul>\n");
      out.write("        </div>\n");
      out.write("        <div>\n");
      out.write("      \n");
      out.write("        ");
 
             String url="jdbc:mysql://localhost:3306/java_project?useSSL=false&verifyServerCertificate=false&allowMultiQueries=true";
            try{
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection conn = DriverManager.getConnection(url,"root","Abhi123@");
        String q = "Select * from addata where category = ?";
        PreparedStatement ps = conn.prepareStatement(q);
        ps.setString(1,"Cars");
        ResultSet rs = ps.executeQuery();
        //OutputStream os =response.getOutputStream();
        FileOutputStream fout = null;
        int i=1;
        int j=22;
        while(rs.next()){
               Blob blob = rs.getBlob(3);
               byte byteArray[] = blob.getBytes(1,(int)blob.length());
             fout=new FileOutputStream("C:/Users/Abhinav Thakur/Documents/NetBeansProjects/WebApp_Project/web/sub_webpages/outimg/its"+i+".jpg"); 
             fout.write(byteArray); 
              String ref = rs.getString(2);
              
      out.write("\n");
      out.write("              <form action=\"billing.jsp\">\n");
      out.write("        <div class=\"c\">\n");
      out.write("            <table>\n");
      out.write("                <tr>\n");
      out.write("                    <td><img src=");
      out.print("outimg/its"+i+".jpg" );
      out.write("  style=\"width:200px;height:200px;\" >&nbsp;&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td><h4>");
out.print(ref);
      out.write("</h4></td>\n");
      out.write("                    <td><button type=\"submit\" name=\"check\" value=");
      out.print(j);
      out.write(">Buy</button></td>\n");
      out.write("                </tr>\n");
      out.write("            </table>\n");
      out.write("        </div>\n");
      out.write("              </form>\n");
      out.write("        ");

            //session.setAttribute("userId"+i+"", ref);
            System.out.print(ref);
            System.out.print(request.getParameter("product"));
            //String s = rs.getString(2);
            //session.setAttribute("product",s);
              i++;
              j++;
            }
        fout.close();
          }
         catch(Exception e){
            System.out.print(e);
         }
        
      out.write("\n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("    </body>\n");
      out.write("</html>\n");
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
