package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
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

public final class NetworkDevice_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>NetworkDevicejsp</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <center>\n");
      out.write("         <h1>Network Device Details</h1>\n");
      out.write("       </center>\n");
      out.write("      \n");
      out.write("      <table border = \"1\" align = \"center\" bgcolor = \"#CD5C5C\" > \n");
      out.write("         <tr bgcolor = \"#696969\">\n");
      out.write("            <th>Device No.</th>\n");
      out.write("            <th>Serial Number</th>\n");
      out.write("            <th>Type</th>\n");
      out.write("            <th>Mac Address</th>\n");
      out.write("            <th>Family</th>\n");
      out.write("            <th>Host Name</th>\n");
      out.write("         </tr>\n");
      out.write("              \n");
      out.write("      \n");
      out.write("                ");

                String url1 = "https://sandboxapic.cisco.com/api/v1/network-device";

		URL obj = new URL(url1);
		HttpURLConnection con = (HttpURLConnection) obj.openConnection();
		con.setRequestMethod("GET");
                //con.setRequestProperty("X-AUTH-TOKEN", );
                con.setRequestProperty("Content-Type", "application/json");
                con.setRequestProperty("Accept", "application/json");
                HttpSession session1;
                session1=request.getSession(true);
                String key =(String) session1.getAttribute("serviceTicket");
                con.setRequestProperty("X-AUTH-TOKEN", key);
                int responseCode = con.getResponseCode();
                //out.print("GET Response Code :: " + responseCode);
	       if (responseCode == HttpURLConnection.HTTP_OK)
               {
		        BufferedReader in = new BufferedReader(new InputStreamReader(
			con.getInputStream()));
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
                      
                      String s = jobj2.getString("serialNumber"); 
                      String t = jobj2.getString("type"); 
                      String o = jobj2.getString("macAddress"); 
                      String f = jobj2.getString("family"); 
                      String h = jobj2.getString("hostname"); 
                      
                
      out.write("\n");
      out.write("    <tr>\n");
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
      out.write("     \n");
      out.write("    <td> ");
out.print(f);
      out.write("</td>\n");
      out.write("      \n");
      out.write("    <td> ");
out.print(h);
      out.write("</td>\n");
      out.write("    </tr>\n");
      out.write("                     ");
 
                      }
                    
		} else {
			System.out.println("GET request not worked");
                      

	}   
   
           
      out.write("\n");
      out.write("      </table>\n");
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
