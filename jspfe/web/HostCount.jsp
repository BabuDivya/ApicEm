<%@page import="certificate.certificate" %>
<%@page import="java.io.BufferedReader,java.io.IOException,java.io.InputStream,java.io.InputStreamReader,java.io.OutputStream,java.net.HttpURLConnection,java.net.URL,java.security.KeyManagementException,java.security.NoSuchAlgorithmException,javax.net.ssl.HostnameVerifier,javax.net.ssl.HttpsURLConnection,javax.net.ssl.SSLContext,javax.net.ssl.SSLSession,javax.net.ssl.TrustManager,javax.net.ssl.X509TrustManager,java.security.cert.X509Certificate,java.util.logging.Level,java.util.logging.Logger,java.util.Scanner,org.json.*"%>
<html>
    <head>
         <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <title>//Apic Em/</title>
        <style>
            
            #nt{
                 background-color: #F5F5F5;
                font-size: 20px;
                padding: 280px 210px;
                font-family: Bookman;
            }
        </style>
    </head>
    <body>
                <%
                String url1 = "https://sandboxapic.cisco.com/api/v1/host/count";

		URL obj5 = new URL(url1);
		HttpURLConnection con5 = (HttpURLConnection) obj5.openConnection();
		con5.setRequestMethod("GET");
                
                con5.setRequestProperty("Content-Type", "application/json");
                con5.setRequestProperty("Accept", "application/json");
                HttpSession session5;
                session5=request.getSession(true);
                String key=(String)session5.getAttribute("serviceTicket");
                   con5.setRequestProperty("X-AUTH-TOKEN", key); 
		int responseCode5 = con5.getResponseCode();
                 if (responseCode5 == HttpURLConnection.HTTP_OK)
               {
		       Scanner sc1=new Scanner(con5.getInputStream());  
                   String scan;
                   scan=sc1.next();	
                    JSONObject jobj;
                    jobj = new JSONObject(scan);
                     String s = jobj.getString("response");
                     String v = jobj.getString("version");
                %>
               <div id="nt">
    <center>        <h3> Host Count and Version</h3>
    <p align="center"><% out.print("Host count "+s);%><br>
                <%out.print("version "+v);%>
    </p></center></div>
                <% } %>
<%@ include file="mainjsp.jsp" %>
    </body>
</html>