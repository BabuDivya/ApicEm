package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.security.KeyManagementException;
import java.security.NoSuchAlgorithmException;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSession;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;
import java.security.cert.X509Certificate;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.Scanner;
import org.json.*;
import certificate.certificate;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.security.KeyManagementException;
import java.security.NoSuchAlgorithmException;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSession;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;
import java.security.cert.X509Certificate;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.Scanner;
import org.json.*;

public final class host_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
    _jspx_dependants.add("/mainjsp.jsp");
    _jspx_dependants.add("/token.jsp");
  }

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
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("    \n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css\">\n");
      out.write("        <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js\"></script>\n");
      out.write("        <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js\"></script>\n");
      out.write("        <title>hostjsp</title>\n");
      out.write("        \n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        \n");
      out.write("                <div class=\"container\">\n");
      out.write("            <h2> Host Details </h2>\n");
      out.write("        <table  class=\"table table-striped\" border = \"1\" align = \"center\" >\n");
      out.write("            <thead>\n");
      out.write("            <tr>\n");
      out.write("            <th>Host No.</th>\n");
      out.write("            <th>hostIp</th>\n");
      out.write("            <th>hostType</th>\n");
      out.write("            <th>hostMac</th>\n");
      out.write("            <th>ID</th>\n");
      out.write("                    </tr>\n");
      out.write("            </thead>\n");
      out.write("                \n");
      out.write("                ");

                String url1 = "https://sandboxapic.cisco.com/api/v1/host";

		URL obj2 = new URL(url1);
		HttpURLConnection con2 = (HttpURLConnection) obj2.openConnection();
		con2.setRequestMethod("GET");
                
                con2.setRequestProperty("Content-Type", "application/json");
                con2.setRequestProperty("Accept", "application/json");
                HttpSession session2;
                session2=request.getSession(true);
                String key = (String) session2.getAttribute("serviceTicket");
                  con2.setRequestProperty("X-AUTH-TOKEN", key);  
		int responseCode2 = con2.getResponseCode();
		System.out.println("GET Response Code :: " + responseCode2);
	       if (responseCode2 == HttpURLConnection.HTTP_OK)
               {
		        BufferedReader in = new BufferedReader(new InputStreamReader(
			con2.getInputStream()));
			String inputLine;
			StringBuffer response1 = new StringBuffer();

			while ((inputLine = in.readLine()) != null) {
                            
				response1.append(inputLine);
			}
                         JSONObject jsonResponse = null;
                         jsonResponse = new JSONObject(response1.toString());
                         in.close();
                         
                      JSONArray jArray = jsonResponse.getJSONArray("response");
                      for(int i=0;i<=jArray.length()-1;i++)
                      {
                         
                      JSONObject jobj2=jArray.getJSONObject(i);
                      
                      String s = jobj2.getString("hostIp"); 
                      String t = jobj2.getString("hostType"); 
                      String o = jobj2.getString("hostMac"); 
                      String id = jobj2.getString("id"); 
                      
                      
        

      out.write(" \n");
      out.write("<tbody>\n");
      out.write("         <tr>\n");
      out.write("    <td>");
out.print(i);
      out.write("</td>    \n");
      out.write("            \n");
      out.write("    <td> ");
out.print(s);
      out.write("</td> \n");
      out.write("    <td> ");
out.print(t);
      out.write("</td>\n");
      out.write("      \n");
      out.write("    <td> ");
out.print(o);
      out.write("</td>\n");
      out.write("    <td> ");
out.print(id);
      out.write("</td>\n");
      out.write("   \n");
      out.write("    </tr>\n");
      out.write("</tbody>\n");
      out.write("      ");
 
                      }
                    
		} else {
			System.out.println("GET request not worked");
                      

	}   
   
           
      out.write("\n");
      out.write("</table>\n");
      out.write("        </div>\n");
      out.write('\n');
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>tokenjsp</title>\n");
      out.write("        <style>\n");
      out.write("            body {\n");
      out.write("    background:#2d2d30;\n");
      out.write("    color: #777;\n");
      out.write("}\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");

           
         String url = "https://sandboxapic.cisco.com/api/v1/ticket";
         String str = "{\n" +
                      "\"password\":\"Cisco123!\",\n" +
                      "\"username\":\"devnetuser\"\n" +
                      "}";   
      out.write("\n");
      out.write("        ");
   certificate.POST(); 
      out.write("           \n");
      out.write("        ");

           
                
 
		URL obj1 = new URL(url);
		HttpURLConnection con1 = (HttpURLConnection) obj1.openConnection();
		con1.setRequestMethod("POST");
                con1.setRequestProperty("Content-Type", "application/json");
                con1.setRequestProperty("Accept", "application/json");
 
		con1.setDoOutput(true);
		OutputStream os = con1.getOutputStream();
                os.write(str.getBytes());

		int responseCode = con1.getResponseCode();
		System.out.println("POST Response Code :: " + responseCode);

		if (responseCode == HttpURLConnection.HTTP_OK) { 
                   Scanner sc1=new Scanner(con1.getInputStream());  
                   String scan;
                   scan=sc1.next();	
              
                    JSONObject jobj;
                    jobj = new JSONObject(scan);
                                        
                     
                     String s = jobj.getJSONObject("response").getString("serviceTicket");
                     HttpSession session1 = request.getSession(true);
                     session1.setAttribute("serviceTicket",s);
      out.write("\n");
      out.write("                     ");
 //out.print("serviceTicket = "+s); 
      out.write(" \n");
      out.write("                   ");
  //return String.format(s);
		} else {
		     System.out.println("POST request not worked");
                }     //return String.format("post request not worked");
           
            
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("<html lang=\"en\">\n");
      out.write("<head>\n");
      out.write("  <title>mainjsp</title>\n");
      out.write("  <meta charset=\"utf-8\">\n");
      out.write("  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("  <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css\">\n");
      out.write("  <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js\"></script>\n");
      out.write("  <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js\"></script>\n");
      out.write("  <style>\n");
      out.write("      .container {\n");
      out.write("    padding: 80px 120px;\n");
      out.write("}\n");
      out.write("body {\n");
      out.write("    font: 400 15px/1.8 Lato, sans-serif;\n");
      out.write("    color: #777;\n");
      out.write("}\n");
      out.write(".nd {\n");
      out.write("    background: #B6B17C;\n");
      out.write("    color: #bdbdbd;\n");
      out.write("      border: 10px solid transparent;\n");
      out.write("      margin-bottom: 25px;\n");
      out.write("      width: 80%;\n");
      out.write("      height: 80%;\n");
      out.write("      opacity: 0.7;\n");
      out.write("  }\n");
      out.write("  #nd p {font-style: italic;}\n");
      out.write("  \n");
      out.write("  .nd:hover {\n");
      out.write("      border-color: #f1f1f1;\n");
      out.write("  }\n");
      out.write("  .bg-1 {\n");
      out.write("    background: #2d2d30;\n");
      out.write("    color: #bdbdbd;\n");
      out.write("}\n");
      out.write(".bg-1 h3 {color: #fff;}\n");
      out.write(".bg-1 p {font-style: italic;}\n");
      out.write(".bg-2 {\n");
      out.write("    background: #fcfcfa;\n");
      out.write("    color: #717171;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".bg-2 p {font-style: italic;}\n");
      out.write(".carousel-inner img {\n");
      out.write("    -webkit-filter: grayscale(90%);\n");
      out.write("    filter: grayscale(90%); /* make all photos black and white */ \n");
      out.write("    width: 100%; /* Set width to 100% */\n");
      out.write("    margin: auto;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".carousel-caption h3 {\n");
      out.write("    color: #fff !important;\n");
      out.write("}\n");
      out.write("\n");
      out.write("@media (max-width: 500px) {\n");
      out.write("    .carousel-caption {\n");
      out.write("        display: none; /* Hide the carousel text when the screen is less than 600 pixels wide */\n");
      out.write("    }\n");
      out.write("}\n");
      out.write("\n");
      out.write(".navbar {\n");
      out.write("    margin-bottom: 0;\n");
      out.write("    font-family: Montserrat, sans-serif;\n");
      out.write("    background-color: #7e7e7e;\n");
      out.write("    border: 0;\n");
      out.write("    font-size: 15px !important;\n");
      out.write("    letter-spacing: 4px;\n");
      out.write("    opacity:0.9;\n");
      out.write("}\n");
      out.write("\n");
      out.write("/* Add a gray color to all navbar links */\n");
      out.write(".navbar li a, .navbar .navbar-brand { \n");
      out.write("    color: #d5d5d5 !important;\n");
      out.write("}\n");
      out.write("\n");
      out.write("/* On hover, the links will turn white */\n");
      out.write(".navbar-nav li a:hover {\n");
      out.write("    color: #fff !important;\n");
      out.write("}\n");
      out.write("\n");
      out.write("/* The active link */\n");
      out.write(".navbar-nav li.active a {\n");
      out.write("    color: #fff !important;\n");
      out.write("    background-color:#29292c !important;\n");
      out.write("}\n");
      out.write("\n");
      out.write("/* Remove border color from the collapsible button */\n");
      out.write(".navbar-default .navbar-toggle {\n");
      out.write("    border-color: transparent;\n");
      out.write("}\n");
      out.write("\n");
      out.write("/* Dropdown */\n");
      out.write(".open .dropdown-toggle {\n");
      out.write("    color: #fff ;\n");
      out.write("    background-color: #555 !important;\n");
      out.write("}\n");
      out.write("\n");
      out.write("/* Dropdown links */\n");
      out.write(".dropdown-menu li a {\n");
      out.write("    color: #000 !important;\n");
      out.write("}\n");
      out.write("\n");
      out.write("/* On hover, the dropdown links will turn red */\n");
      out.write(".dropdown-menu li a:hover {\n");
      out.write("    background-color: red !important;\n");
      out.write("}\n");
      out.write("footer {\n");
      out.write("    background-color: #2d2d30;\n");
      out.write("    color: #f5f5f5;\n");
      out.write("    padding: 32px;\n");
      out.write("}\n");
      out.write("\n");
      out.write("footer a {\n");
      out.write("    color: #f5f5f5;\n");
      out.write("}\n");
      out.write("\n");
      out.write("footer a:hover {\n");
      out.write("    color: #777;\n");
      out.write("    text-decoration: none;\n");
      out.write("}\n");
      out.write("h3, h4 {\n");
      out.write("    margin: 10px 0 30px 0;\n");
      out.write("    letter-spacing: 10px; \n");
      out.write("    font-size: 20px;\n");
      out.write("    color: #111;\n");
      out.write("}\n");
      out.write("\n");
      out.write("/* Remove rounded borders on input fields */\n");
      out.write(".form-control {\n");
      out.write("    border-radius: 0;\n");
      out.write("}\n");
      out.write("\n");
      out.write("/* Disable the ability to resize textareas */\n");
      out.write("textarea {\n");
      out.write("    resize: none;\n");
      out.write("}\n");
      out.write("  </style>\n");
      out.write("  <script>\n");
      out.write("$(document).ready(function(){\n");
      out.write("    // Initialize Tooltip\n");
      out.write("    $('[data-toggle=\"tooltip\"]').tooltip(); \n");
      out.write("});\n");
      out.write("</script>\n");
      out.write("</head>\n");
      out.write("<body  id=\"myPage\" data-spy=\"scroll\" data-target=\".navbar\" data-offset=\"50\">\n");
      out.write("    \n");
      out.write("    <nav class=\"navbar navbar-default navbar-fixed-top\">\n");
      out.write("  <div class=\"container-fluid\">\n");
      out.write("    <div class=\"navbar-header\">\n");
      out.write("      <button type=\"button\" class=\"navbar-toggle\" data-toggle=\"collapse\" data-target=\"#myNavbar\">\n");
      out.write("        <span class=\"icon-bar\"></span>\n");
      out.write("        <span class=\"icon-bar\"></span>\n");
      out.write("        <span class=\"icon-bar\"></span>                        \n");
      out.write("      </button>\n");
      out.write("      <a class=\"navbar-brand\" href=\"#\">Apic Em</a>\n");
      out.write("    </div>\n");
      out.write("    <div class=\"collapse navbar-collapse\" id=\"myNavbar\">\n");
      out.write("      <ul class=\"nav navbar-nav navbar-right\">\n");
      out.write("        <li><a href=\"#myPage\">HOME</a></li>\n");
      out.write("        <li><a href=\"#nd\">Network device</a></li> \n");
      out.write("        <li><a href=\"#int\">interface</a></li>\n");
      out.write("        <li><a href=\"#h\">Host</a></li>\n");
      out.write("        <li class=\"dropdown\">\n");
      out.write("          <a class=\"dropdown-toggle\" data-toggle=\"dropdown\" href=\"#\"><span class=\"glyphicon glyphicon-user\"></span>\n");
      out.write("          <span class=\"caret\"></span></a>\n");
      out.write("          <ul class=\"dropdown-menu\">\n");
      out.write("            <li><a href=\"#\">logout</a></li>\n");
      out.write("            <li><a href=\"#\">view</a></li>\n");
      out.write("            <li><a href=\"#\">edit</a></li> \n");
      out.write("          </ul>\n");
      out.write("        </li>\n");
      out.write("        <li> &nbsp; &nbsp;  </li>\n");
      out.write("      </ul>\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("</nav>\n");
      out.write("\n");
      out.write("    \n");
      out.write("    <div id=\"myCarousel\" class=\"carousel slide\" data-ride=\"carousel\">\n");
      out.write("    <!-- Indicators -->\n");
      out.write("    <ol class=\"carousel-indicators\">\n");
      out.write("      <li data-target=\"#myCarousel\" data-slide-to=\"0\" class=\"active\"></li>\n");
      out.write("      <li data-target=\"#myCarousel\" data-slide-to=\"1\"></li>\n");
      out.write("      <li data-target=\"#myCarousel\" data-slide-to=\"2\"></li>\n");
      out.write("    </ol>\n");
      out.write("\n");
      out.write("    <!-- Wrapper for slides -->\n");
      out.write("    <div class=\"carousel-inner\" role=\"listbox\">\n");
      out.write("      <div class=\"item active\">\n");
      out.write("        <img src=\"images/page1.jpg\" alt=\"page1\" width=\"1200\" height=\"700\">\n");
      out.write("        <div class=\"carousel-caption\">\n");
      out.write("          <h3>Network charts</h3>\n");
      out.write("          <p>The network device details are shown here.</p>\n");
      out.write("        </div>      \n");
      out.write("      </div>\n");
      out.write("\n");
      out.write("      <div class=\"item\">\n");
      out.write("        <img src=\"images/page44.jpg\" alt=\"page2\" width=\"1200\" height=\"700\">\n");
      out.write("        <div class=\"carousel-caption\">\n");
      out.write("          <h3>device charts</h3>\n");
      out.write("          <p>The device charts details are shown here.</p>\n");
      out.write("        </div>      \n");
      out.write("      </div>\n");
      out.write("    \n");
      out.write("      <div class=\"item\">\n");
      out.write("        <img src=\"images/page2.jpg\" alt=\"page3\" width=\"1200\" height=\"700\">\n");
      out.write("        <div class=\"carousel-caption\">\n");
      out.write("          <h3>charts</h3>\n");
      out.write("          <p>The overall charts details are shown here...</p>\n");
      out.write("        </div>      \n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("    <!-- Left and right controls -->\n");
      out.write("    <a class=\"left carousel-control\" href=\"#myCarousel\" role=\"button\" data-slide=\"prev\">\n");
      out.write("      <span class=\"glyphicon glyphicon-chevron-left\" aria-hidden=\"true\"></span>\n");
      out.write("      <span class=\"sr-only\">Previous</span>\n");
      out.write("    </a>\n");
      out.write("    <a class=\"right carousel-control\" href=\"#myCarousel\" role=\"button\" data-slide=\"next\">\n");
      out.write("      <span class=\"glyphicon glyphicon-chevron-right\" aria-hidden=\"true\"></span>\n");
      out.write("      <span class=\"sr-only\">Next</span>\n");
      out.write("    </a>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("\n");
      out.write("<div id=\"nd\" class=\"container text-center\">\n");
      out.write("  <h3>Network devices</h3>\n");
      out.write("  <p>Inventory details are given by<br>\n");
      out.write("  Get specific details over here</p>\n");
      out.write("  <br>\n");
      out.write("  <div class=\"row\">\n");
      out.write("    <div class=\"col-sm-4\">\n");
      out.write("      <p><strong>GET</strong></p><br>\n");
      out.write("       <a href=\"#ndi\" data-toggle=\"collapse\">\n");
      out.write("       do\n");
      out.write("      </a>\n");
      out.write("      <div id=\"ndi\" class=\"collapse\">\n");
      out.write("          <p><a href=\"NetworkDevice.jsp\">Device details</a></p>\n");
      out.write("          <p><a href=\"\">Device cound</a></p>\n");
      out.write("          <p><a href=\"\">By ID</a></p>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("    <div class=\"col-sm-4\">\n");
      out.write("      <p><strong>POST</strong></p><br>\n");
      out.write("       <a href=\"#ndcount\" data-toggle=\"collapse\">\n");
      out.write("      do\n");
      out.write("      </a>\n");
      out.write("      <div id=\"ndcount\" class=\"collapse\">\n");
      out.write("        <p><a href=\"\">Device details</a></p>\n");
      out.write("          <p><a href=\"\">Device cound</a></p>\n");
      out.write("          <p><a href=\"\">By ID</a></p>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("    <div class=\"col-sm-4\">\n");
      out.write("      <p><strong>PUT</strong></p><br>\n");
      out.write("       <a href=\"#ndid\" data-toggle=\"collapse\">\n");
      out.write("      do\n");
      out.write("      </a>\n");
      out.write("      <div id=\"ndid\" class=\"collapse\">\n");
      out.write("        <p><a href=\"\">Device details</a></p>\n");
      out.write("          <p><a href=\"\">Device cound</a></p>\n");
      out.write("          <p><a href=\"\">By ID</a></p>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("  </div>\n");
      out.write("\n");
      out.write("    <div id=\"int\" class=\"bg-1\">\n");
      out.write("  <div class=\"container text-center\">\n");
      out.write("    <h3 class=\"text-center\">interface details</h3>\n");
      out.write("    <p class=\"text-center\">Lorem ipsum we'll play you some music.<br> Remember to book your tickets!</p>\n");
      out.write("\n");
      out.write("   <div class=\"row\">\n");
      out.write("    <div class=\"col-sm-4\">\n");
      out.write("      <p><strong>GET</strong></p><br>\n");
      out.write("       <a href=\"#nd22\" data-toggle=\"collapse\">\n");
      out.write("      do\n");
      out.write("      </a>\n");
      out.write("      <div id=\"nd22\" class=\"collapse\">\n");
      out.write("        <p>total device</p>\n");
      out.write("        <p>...</p>\n");
      out.write("        <p>....</p>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("    <div class=\"col-sm-4\">\n");
      out.write("      <p><strong>POST</strong></p><br>\n");
      out.write("       <a href=\"#ndcount1\" data-toggle=\"collapse\">\n");
      out.write("      do\n");
      out.write("      </a>\n");
      out.write("      <div id=\"ndcount1\" class=\"collapse\">\n");
      out.write("        <p>    network count</p>\n");
      out.write("        <p>....</p>\n");
      out.write("        <p>....</p>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("    <div class=\"col-sm-4\">\n");
      out.write("      <p><strong>PUT</strong></p><br>\n");
      out.write("       <a href=\"#ndid1\" data-toggle=\"collapse\">\n");
      out.write("      do\n");
      out.write("      </a>\n");
      out.write("      <div id=\"ndid1\" class=\"collapse\">\n");
      out.write("        <p>   network id</p>\n");
      out.write("        <p>....</p>\n");
      out.write("        <p>......</p>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("  </div>\n");
      out.write("</div>\n");
      out.write(" <div id=\"h\" class=\"bg-2\">\n");
      out.write("  <div class=\"container text-center\">\n");
      out.write("    <h3 class=\"text-center\">Host details</h3>\n");
      out.write("    <p class=\"text-center\">Lorem ipsum we'll play you some music.<br> Remember to book your tickets!</p>\n");
      out.write("\n");
      out.write("   <div class=\"row\">\n");
      out.write("    <div class=\"col-sm-4\">\n");
      out.write("      <p><strong>GET</strong></p><br>\n");
      out.write("       <a href=\"#nd1\" data-toggle=\"collapse\">\n");
      out.write("      do\n");
      out.write("      </a>\n");
      out.write("      <div id=\"nd1\" class=\"collapse\">\n");
      out.write("       <p><a href=\"host.jsp\">/host</a></p>\n");
      out.write("          <p><a href=\"HostCount.jsp\">/host/count</a></p>\n");
      out.write("          <p><a href=\"hostid.html\">/host/{id}</a></p>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("    <div class=\"col-sm-4\">\n");
      out.write("      <p><strong>POST</strong></p><br>\n");
      out.write("       <a href=\"#ndcount2\" data-toggle=\"collapse\">\n");
      out.write("      do\n");
      out.write("      </a>\n");
      out.write("      <div id=\"ndcount2\" class=\"collapse\">\n");
      out.write("        <p>    network count</p>\n");
      out.write("        <p>....</p>\n");
      out.write("        <p>....</p>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("    <div class=\"col-sm-4\">\n");
      out.write("      <p><strong>PUT</strong></p><br>\n");
      out.write("       <a href=\"#ndid2\" data-toggle=\"collapse\">\n");
      out.write("      do\n");
      out.write("      </a>\n");
      out.write("      <div id=\"ndid2\" class=\"collapse\">\n");
      out.write("        <p>   network id</p>\n");
      out.write("        <p>....</p>\n");
      out.write("        <p>......</p>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("  </div>\n");
      out.write("</div>\n");
      out.write("    <footer class=\"text-center\">\n");
      out.write("  <a class=\"up-arrow\" href=\"#myPage\" data-toggle=\"tooltip\" title=\"TO TOP\">\n");
      out.write("    <span class=\"glyphicon glyphicon-chevron-up\"></span>\n");
      out.write("  </a><br><br>\n");
      out.write("  \n");
      out.write("</footer>\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>");
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
