<%@page import="certificate.certificate" %>
<%@page import="java.io.BufferedReader,java.io.IOException,java.io.InputStream,java.io.InputStreamReader,java.io.OutputStream,java.net.HttpURLConnection,java.net.URL,java.security.KeyManagementException,java.security.NoSuchAlgorithmException,javax.net.ssl.HostnameVerifier,javax.net.ssl.HttpsURLConnection,javax.net.ssl.SSLContext,javax.net.ssl.SSLSession,javax.net.ssl.TrustManager,javax.net.ssl.X509TrustManager,java.security.cert.X509Certificate,java.util.logging.Level,java.util.logging.Logger,java.util.Scanner,org.json.*"%>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <title>//Apic Em/networkDeviceCount</title>
        <style>
            
            #nt{
                font-family: Bookman;
                 background-color: #F5F5F5;
                font-size: 20px;
                padding: 280px 210px;
            }
        </style>
    </head>
    <body >
                <%
                String url1 = "https://sandboxapic.cisco.com/api/v1/network-device/count";

		URL obj3 = new URL(url1);
		HttpURLConnection con3 = (HttpURLConnection) obj3.openConnection();
		con3.setRequestMethod("GET");
                
                con3.setRequestProperty("Content-Type", "application/json");
                con3.setRequestProperty("Accept", "application/json");
                HttpSession session3;
                session3=request.getSession(true);
                String key=(String)session3.getAttribute("serviceTicket");
                   con3.setRequestProperty("X-AUTH-TOKEN", key); 
		int responseCode3 = con3.getResponseCode();
                 if (responseCode3 == HttpURLConnection.HTTP_OK)
               {
		       Scanner sc1=new Scanner(con3.getInputStream());  
                   String scan;
                   scan=sc1.next();	
                    JSONObject jobj;
                    jobj = new JSONObject(scan);
                     String s = jobj.getString("response");
                     String v = jobj.getString("version");
                %>
                <br>
                <div id="nt">
    <center>        <h3> Network Device Count and Version</h3>
    <p align="center"><% out.print("Device count "+s);%><br>
                <%out.print("version "+v);%>
    </p></center></div>
                <% } %>
<%@ include file="mainjsp.jsp" %>
    </body>
</html>