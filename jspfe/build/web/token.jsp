<%-- 
    Document   : token
    Created on : 27 Jul, 2018, 10:15:31 AM
    Author     : Students
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="certificate.certificate"%>
<%@page import="java.io.BufferedReader,java.io.IOException,java.io.InputStream,java.io.InputStreamReader,java.io.OutputStream,java.net.HttpURLConnection,java.net.URL,java.security.KeyManagementException,java.security.NoSuchAlgorithmException,javax.net.ssl.HostnameVerifier,javax.net.ssl.HttpsURLConnection,javax.net.ssl.SSLContext,javax.net.ssl.SSLSession,javax.net.ssl.TrustManager,javax.net.ssl.X509TrustManager,java.security.cert.X509Certificate,java.util.logging.Level,java.util.logging.Logger,java.util.Scanner,org.json.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>//Apic Em/home/</title>
        <style>
            body {
    background-color:#2d2d30;
    
}
        </style>
    </head>
    <body>
        <%
           
         String url = "https://sandboxapic.cisco.com/api/v1/ticket";
         String str = "{\n" +
                      "\"password\":\"Cisco123!\",\n" +
                      "\"username\":\"devnetuser\"\n" +
                      "}";   %>
        <%   certificate.POST(); %>           
        <%
           
                
 
		URL objx = new URL(url);
		HttpURLConnection conx = (HttpURLConnection) objx.openConnection();
		conx.setRequestMethod("POST");
                conx.setRequestProperty("Content-Type", "application/json");
                conx.setRequestProperty("Accept", "application/json");
 
		conx.setDoOutput(true);
		OutputStream os = conx.getOutputStream();
                os.write(str.getBytes());

		int responseCodex = conx.getResponseCode();
		System.out.println("POST Response Code :: " + responseCodex);

		if (responseCodex == HttpURLConnection.HTTP_OK) { 
                   Scanner sc1=new Scanner(conx.getInputStream());  
                   String scan;
                   scan=sc1.next();	
              
                    JSONObject jobj;
                    jobj = new JSONObject(scan);
                                        
                     
                     String s = jobj.getJSONObject("response").getString("serviceTicket");
                     HttpSession session1 = request.getSession(true);
                     session1.setAttribute("serviceTicket",s);%>
                     <% //out.print("serviceTicket = "+s); %> 
                   <%  //return String.format(s);
		} else {
		     System.out.println("POST request not worked");
                }     //return String.format("post request not worked");
           
            %>
    </body>
</html>
