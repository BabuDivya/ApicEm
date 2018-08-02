<%-- 
    Document   : NetworkDevice
    Created on : 27 Jul, 2018, 10:44:31 AM
    Author     : Students
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="certificate.certificate"%>
<%@page import="java.io.BufferedReader,java.io.IOException,java.io.InputStream,java.io.InputStreamReader,java.io.OutputStream,java.net.HttpURLConnection,java.net.URL,java.security.KeyManagementException,java.security.NoSuchAlgorithmException,javax.net.ssl.HostnameVerifier,javax.net.ssl.HttpsURLConnection,javax.net.ssl.SSLContext,javax.net.ssl.SSLSession,javax.net.ssl.TrustManager,javax.net.ssl.X509TrustManager,java.security.cert.X509Certificate,java.util.logging.Level,java.util.logging.Logger,java.util.Scanner,org.json.*"%>

<html>
    <head>
         <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <title>//Apic Em/networkDevice</title>
        <style> body {
            background-color: #F5F5F5;
            font-family: Bookman;
}
.nt{
    width: 80%;
    height: 100%;
    margin: auto;
}

        </style>
    </head>
    <body>
        <div class="nt">
    <center><br> <br>
         <h1>Network Device Details</h1>
       </center>
      
      <table class="table table-striped" align = "center" bgcolor = "#CD5C5C"> 
         <tr bgcolor>
            <th>Device No.</th>
            <th>Serial Number</th>
            <th>Type</th>
            <th>Mac Address</th>
            <th>Family</th>
            <th>Host Name</th>
         </tr>
              
      
                <%
                String url1 = "https://sandboxapic.cisco.com/api/v1/network-device";

		 URL obj3 = new URL(url1);
		HttpURLConnection con3 = (HttpURLConnection) obj3.openConnection();
		con3.setRequestMethod("GET");
                //con.setRequestProperty("X-AUTH-TOKEN", );
                con3.setRequestProperty("Content-Type", "application/json");
                con3.setRequestProperty("Accept", "application/json");
                HttpSession session3;
                session3=request.getSession(true);
                String key =(String) session3.getAttribute("serviceTicket");
                con3.setRequestProperty("X-AUTH-TOKEN", key);
                int responseCode3 = con3.getResponseCode();
                //out.print("GET Response Code :: " + responseCode);
	       if (responseCode3 == HttpURLConnection.HTTP_OK)
               {
		        BufferedReader in = new BufferedReader(new InputStreamReader(
			con3.getInputStream()));
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
                      
                %>
    <tr>
    <td><%out.print(i);%></td>    
            
    <td> <%out.print(s);%></td> 
    <td> <%out.print(t);%></td>
      
    <td> <%out.print(o);%></td>
     
    <td> <%out.print(f);%></td>
      
    <td> <%out.print(h);%></td>
    </tr>
                     <% 
                      }
                    
		} else {
			System.out.println("GET request not worked");
                      

	}   
   
           %>
      </table></div>
        <%@ include file="mainjsp.jsp" %>   
    </body>
</html>
