/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.47
 * Generated at: 2022-05-01 10:56:21 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.Admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.io.*;
import java.util.*;
import javax.servlet.*;
import java.util.Date;
import java.text.*;
import java.sql.*;
import java.util.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(1);
    _jspx_dependants.put("/Admin/./controller/connection.jsp", Long.valueOf(1644588502507L));
  }

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
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;


    if(session.getAttribute("adminEmail")==null){
       response.sendRedirect("../index.jsp");
    }

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");

    Connection connection = null;
    try {

        Class.forName("com.mysql.jdbc.Driver");
        connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/secondhand_book", "root", "");
        String sql = "";

    } catch (Exception e) {
        System.out.println(e);
    }

      out.write('\r');
      out.write('\n');
      out.write("\r\n");
      out.write("\r\n");

    String userEmail = (String)session.getAttribute("email");

    String sql1 = "Select * from users";
    Statement st1 = connection.createStatement();
    ResultSet rs1 = st1.executeQuery(sql1);
    int usercount = 0;
    while(rs1.next()){
        usercount++;
    }

    String sql2 = "Select count(*) from books";
    Statement st2 = connection.createStatement();
    ResultSet rs2 = st2.executeQuery(sql2);
    int bookcount = 0;
    if(rs2.next()){
        bookcount = Integer.parseInt(rs2.getString(1));
    }

    int bookSoldCount=0;
    
    String sql3 = "select count(*) from books where status='Sold'";
    Statement st3 = connection.createStatement();
    ResultSet rs3 = st3.executeQuery(sql3);
    if(rs3.next()){
     bookSoldCount = Integer.parseInt(rs3.getString(1));
    }
    int totalEarn=bookSoldCount*40;

    String sql4 = "select * from orders";
    Statement st4 = connection.createStatement();
    ResultSet rs4 = st3.executeQuery(sql4);
    int countOrders = 0;
    while(rs4.next()){
        countOrders++;
    }
   
    Date date = new Date();
    SimpleDateFormat uft = new SimpleDateFormat ("dd-MM-YYYY");
    String sellingDate = uft.format(date);
    int month = date.getMonth();


      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"en\">\r\n");
      out.write("\r\n");
      out.write("<head>\r\n");
      out.write("\r\n");
      out.write("    <title>Admin</title>\r\n");
      out.write("    <link rel=\"icon\" href=\"../images/icon.png\">\r\n");
      out.write("    <meta charset=\"UTF-8\">\r\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=Edge\">\r\n");
      out.write("    <meta name=\"description\" content=\"\">\r\n");
      out.write("    <meta name=\"keywords\" content=\"\">\r\n");
      out.write("    <meta name=\"author\" content=\"\">\r\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, maximum-scale=1\">\r\n");
      out.write("\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"../css/bootstrap.min.css\">\r\n");
      out.write("\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"../css/font-awesome.min.css\">\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"../css/aos.css\">\r\n");
      out.write("\r\n");
      out.write("    <!-- MAIN CSS -->\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"../css/style.css\">\r\n");
      out.write("</head>\r\n");
      out.write("<style>\r\n");
      out.write("    .cart-basket {\r\n");
      out.write("        font-size: 12px;\r\n");
      out.write("        position: absolute;\r\n");
      out.write("        top: -6px;\r\n");
      out.write("        right: -5px;\r\n");
      out.write("        width: 18px;\r\n");
      out.write("        height: 22px;\r\n");
      out.write("        color: #fff;\r\n");
      out.write("        background-color: red;\r\n");
      out.write("        border-radius: 40%;\r\n");
      out.write("    }\r\n");
      out.write("    .text-shadow {\r\n");
      out.write("    color: white;\r\n");
      out.write("    text-shadow: 1px 1px 2px black, 0 0 25px blue, 0 0 5px darkblue;\r\n");
      out.write("    }\r\n");
      out.write("\r\n");
      out.write("    @media screen and (max-width:481px) {\r\n");
      out.write("        table {\r\n");
      out.write("            font-size: 4.5px;\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        .table td,\r\n");
      out.write("        .table th {\r\n");
      out.write("            padding: .1rem;\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        .navbar-brand {\r\n");
      out.write("            font-size: large;\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        img {\r\n");
      out.write("            width: 20px;\r\n");
      out.write("            height: 20px;\r\n");
      out.write("        }\r\n");
      out.write("        .container-sm{\r\n");
      out.write("            display:inline;\r\n");
      out.write("        }\r\n");
      out.write("    }\r\n");
      out.write("</style>\r\n");
      out.write("\r\n");
      out.write("<body>\r\n");
 
   if (request.getParameter("loginMsg") !=null) {
       
      out.write("\r\n");
      out.write("        <script>\r\n");
      out.write("            alert('Login Successfull...!');\r\n");
      out.write("        </script>\r\n");
      out.write("        ");

    }
    if(request.getParameter("accountmsg")!=null){
       
      out.write("\r\n");
      out.write("        <script>\r\n");
      out.write("         alert(\"Bank Account added successfully!\");\r\n");
      out.write("        </script>\r\n");
      out.write("       ");

    }
    if(request.getParameter("bookmsg")!=null){
       
      out.write("\r\n");
      out.write("        <script>\r\n");
      out.write("         alert(\"Book uploaded successfully!\");\r\n");
      out.write("        </script>\r\n");
      out.write("       ");

    }
    if(request.getParameter("passMsg")!=null){
        
      out.write("\r\n");
      out.write("            <script>\r\n");
      out.write("                alert(\"Password change successfully!\");\r\n");
      out.write("            </script>\r\n");
      out.write("        ");

    }

      out.write("\r\n");
      out.write("    <section>\r\n");
      out.write("        <nav class=\"navbar navbar-expand-sm navbar-light bg-light position-relative p-1 m-2 rounded shadow-lg\">\r\n");
      out.write("            <a class=\"navbar-brand p-1 head-shadow text-danger\" href=\"index.jsp\">SECONDHAND-BOOK STORE</a>\r\n");
      out.write("            <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarSupportedContent\"\r\n");
      out.write("                aria-controls=\"navbarSupportedContent\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\r\n");
      out.write("                <span class=\"navbar-toggler-icon\"></span>\r\n");
      out.write("            </button>\r\n");
      out.write("            <div class=\"navbar-collapse \" id=\"navbarSupportedContent\">\r\n");
      out.write("                <div class=\"navbar-nav ml-auto mr-lg-5\">\r\n");
      out.write("                    <ul class=\"navbar-nav\">\r\n");
      out.write("                        <li class=\"nav-link nav-item mr-lg-2 dropdown\" id=\"navbarSupportedContent\">\r\n");
      out.write("                            <a class=\"dropdown-toggle text-dark\" href=\"#\" role=\"button\" id=\"dropdownMenuLink\"\r\n");
      out.write("                                data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">\r\n");
      out.write("                                <i class=\"fa fa-user-circle fa-2x\" style=\"font-size:x-large;\"> Hi, ");

                                        out.print(session.getAttribute("adminEmail"));
      out.write("</i>\r\n");
      out.write("                            </a>\r\n");
      out.write("                            <div class=\"dropdown-menu\" aria-labelledby=\"dropdownMenuLink\">\r\n");
      out.write("                                <a class=\"dropdown-item\" href=\"./changePassword.jsp\"><i class=\"fas fa fa-key\"></i>\r\n");
      out.write("                                    Change\r\n");
      out.write("                                    Password</a>\r\n");
      out.write("                                <div class=\"dropdown-divider\"></div>\r\n");
      out.write("                                <a class=\"dropdown-item\" href=\"\"><i class=\"fas fa fa-gear\"></i> Setting</a>\r\n");
      out.write("                                <div class=\"dropdown-divider\"></div>\r\n");
      out.write("                                <a class=\"dropdown-item text-center\" href=\"./controller/logout.jsp\"><button\r\n");
      out.write("                                        class=\" btn btn-danger\"><i class=\"fas fa fa-sign-out\"></i> Logout</button></a>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </li>\r\n");
      out.write("                    </ul>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </nav>\r\n");
      out.write("\r\n");
      out.write("        <nav class=\"nav nav-justified bg-dark p-2 m-2 rounded shadow \">\r\n");
      out.write("            \r\n");
      out.write("              <a class=\"nav-item nav-link text-white active\" href=\"viewBooks.jsp\">View Books</a>\r\n");
      out.write("        <a class=\"nav-item nav-link rounded text-white\" href=\"viewOrders.jsp\">View Orders</a>\r\n");
      out.write("        <a class=\"nav-item nav-link rounded text-white\" href=\"viewUsers.jsp\">View Users</a>\r\n");
      out.write("        </nav>\r\n");
      out.write("    </section>\r\n");
      out.write("\r\n");
      out.write("    <!-- CONTACT -->\r\n");
      out.write("    <section>\r\n");
      out.write("        <div class=\"container-sm text-capitalize \">\r\n");
      out.write("            <h2 class=\"text-center m-3 text-dark head-shadow\"><strong>Welcome !!</strong></h2>\r\n");
      out.write("            <hr>\r\n");
      out.write("\r\n");
      out.write("            <div class=\"container\">\r\n");
      out.write("                <div class=\"row m-2\">\r\n");
      out.write("                    <div class=\"col-sm-6 mt-2\">\r\n");
      out.write("                        <div class=\"card bg-warning shadow-lg\" >\r\n");
      out.write("                            <div class=\"card-body text-center text-white text-shadow\">\r\n");
      out.write("                              <h5 class=\"card-title\"><i class=\"fa fa-users fa-3x\"></i></h5>\r\n");
      out.write("                              <hr>\r\n");
      out.write("                              <h2 class=\"card-subtitle mb-2\">");
 out.println(usercount);
      out.write("</h2>\r\n");
      out.write("                              <hr>\r\n");
      out.write("                              <h3 class=\"card-text\">Users</h3>\r\n");
      out.write("                            </div>\r\n");
      out.write("                          </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"col-sm-6 mt-2\">\r\n");
      out.write("                        <div class=\"card bg-secondary shadow-lg\">\r\n");
      out.write("                            <div class=\"card-body text-center text-white text-shadow\">\r\n");
      out.write("                              <h5 class=\"card-title\"><i class=\"fa fa-book fa-3x\"></i></h5>\r\n");
      out.write("                              <hr>\r\n");
      out.write("                              <h2 class=\"card-subtitle mb-2\">");
 out.println(bookcount);
      out.write("</h2>\r\n");
      out.write("                              <hr>\r\n");
      out.write("                              <h3 class=\"card-text\">Books Uploaded</h3>\r\n");
      out.write("                            </div>\r\n");
      out.write("                          </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"col-sm-6 mt-2\">\r\n");
      out.write("                        <div class=\"card bg-success shadow-lg\">\r\n");
      out.write("                            <div class=\"card-body text-center text-white text-shadow\">\r\n");
      out.write("                              <h5 class=\"card-title\"><i class=\"fa fa-bank fa-3x\"></i></h5>\r\n");
      out.write("                              <hr>\r\n");
      out.write("                              <h2 class=\"card-subtitle mb-2\"><i class=\"fa fa-rupee\"></i> ");
 out.println(totalEarn);
      out.write("</h2>\r\n");
      out.write("                              <hr>\r\n");
      out.write("                              <h3 class=\"card-text text-shadow\">Earning's</h3>\r\n");
      out.write("                            </div>\r\n");
      out.write("                          </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"col-sm-6 mt-2\">\r\n");
      out.write("                        <div class=\"card bg-danger shadow-lg\">\r\n");
      out.write("                            <div class=\"card-body text-center text-white text-shadow\">\r\n");
      out.write("                              <h5 class=\"card-title\"> <i class=\"fa fa-shopping-bag fa-3x\"></i></h5>\r\n");
      out.write("                              <hr>\r\n");
      out.write("                              <h2 class=\"card-subtitle mb-2\">");
 out.println(bookSoldCount);
      out.write("</h2>\r\n");
      out.write("                              <hr>\r\n");
      out.write("                              <h3 class=\"card-text\">Book Sold</h3>\r\n");
      out.write("                            </div>\r\n");
      out.write("                          </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </section>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("    <!-- FOOTER -->\r\n");
      out.write("    <footer class=\"site-footer\">\r\n");
      out.write("        <div class=\"container\">\r\n");
      out.write("            <div class=\"row\">\r\n");
      out.write("\r\n");
      out.write("                <div class=\"ml-auto col-lg-4 col-md-5\">\r\n");
      out.write("                    <p class=\"copyright-text\">Copyright &copy; 2022 SecondHand Book-Store\r\n");
      out.write("\r\n");
      out.write("                        <br>Design By: <a href=\"#\">Shubham Lagad</a>\r\n");
      out.write("                    </p>\r\n");
      out.write("                </div>\r\n");
      out.write("\r\n");
      out.write("                <div class=\"d-flex justify-content-center mx-auto col-lg-5 col-md-7 col-12\">\r\n");
      out.write("                    <p class=\"mr-4\">\r\n");
      out.write("                        <i class=\"fa fa-envelope-o mr-1\"></i>\r\n");
      out.write("                        <a href=\"#\">shubhamlagad2000@gmail.com</a>\r\n");
      out.write("                    </p>\r\n");
      out.write("                    <p><i class=\"fa fa-phone mr-1\"></i> +91 8007878524</p>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </footer>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("    <!-- SCRIPTS -->\r\n");
      out.write("    <script src=\"../js/jquery.min.js\"></script>\r\n");
      out.write("    <script src=\"../js/bootstrap.min.js\"></script>\r\n");
      out.write("    <script src=\"../js/aos.js\"></script>\r\n");
      out.write("    <script src=\"../js/smoothscroll.js\"></script>\r\n");
      out.write("    <script src=\"../js/custom.js\"></script>\r\n");
      out.write("    <script type=\"module\" src=\"./js/index.js\"></script>\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("\r\n");
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
