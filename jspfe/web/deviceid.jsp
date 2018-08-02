
<%@page import="java.io.BufferedReader,java.io.IOException,java.io.InputStream,java.io.InputStreamReader,java.io.OutputStream,java.net.HttpURLConnection,java.net.URL,java.security.KeyManagementException,java.security.NoSuchAlgorithmException,javax.net.ssl.HostnameVerifier,javax.net.ssl.HttpsURLConnection,javax.net.ssl.SSLContext,javax.net.ssl.SSLSession,javax.net.ssl.TrustManager,javax.net.ssl.X509TrustManager,java.security.cert.X509Certificate,java.util.logging.Level,java.util.logging.Logger,java.util.Scanner,org.json.*"%>
<html>
    <head>
         <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <title>//Apic Em/networkDeviceId</title>
        <style>
            h2{
                font-family: Bookman;
                font-style: italic;
            }
            .form-group{
                font-family: Bookman;
                 background-color: #F5F5F5;
                font-size: 18px;
                padding: 360px 200px;
                padding-top: 40px;
            }
        </style>
    </head>
    <body>
       
        <div class="form-group">
            <h2> Network device details </h2><br>
                    <form class="form-inline" action="deviceid.jsp" method="POST">
            Network Device Id: <input type="text" name="id"  class="form-control" required>
            <button type="submit" class="btn btn-default">Submit</button>
        </form>
           <b></b>
           <% String hid= request.getParameter("id");%>
           <p><b>Device ID: </b><%out.print(hid); %></p>
          
           <%
                String url1 = "https://sandboxapic.cisco.com/api/v1/network-device";

		URL obj3 = new URL(url1);
		HttpURLConnection con3 = (HttpURLConnection) obj3.openConnection();
		con3.setRequestMethod("GET");
                
                con3.setRequestProperty("Content-Type", "application/json");
                con3.setRequestProperty("Accept", "application/json");
                HttpSession session3;
                session3=request.getSession(true);
                String key=(String) session.getAttribute("serviceTicket");
               con3.setRequestProperty("X-AUTH-TOKEN", key);    
		int responseCode3 = con3.getResponseCode();
		System.out.println("GET Response Code :: " + responseCode3);
                
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
                      
                      String s = jobj2.getString("family"); 
                      String t = jobj2.getString("type"); 
                      String o = jobj2.getString("serialNumber"); 
                      String r = jobj2.getString("role"); 
                      String id = jobj2.getString("id");
                      
                     
             if(hid.matches(id))
            {
            %>
            <% if(true)
            { %>
            <b> Network Device Details:</b><br>
            
            Family: <% out.print(s); %><br>
                Type: <% out.print(t); %><br>
                Serial Number: <% out.print(o); %><br>
                 Role: <% out.print(r);%>  <br>
              
            <% 
             break;     
          }  }else {
                     if(i==jArray.length()-1)
             
                    out.print("Enter valid id");
                  } 
              }
            

             }else { %>
             <% out.print("GET request not worked"); }%></div>
 
                 <%@ include file="mainjsp.jsp" %>     
    </body>
</html>