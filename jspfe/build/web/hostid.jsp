
<%@page import="java.io.BufferedReader,java.io.IOException,java.io.InputStream,java.io.InputStreamReader,java.io.OutputStream,java.net.HttpURLConnection,java.net.URL,java.security.KeyManagementException,java.security.NoSuchAlgorithmException,javax.net.ssl.HostnameVerifier,javax.net.ssl.HttpsURLConnection,javax.net.ssl.SSLContext,javax.net.ssl.SSLSession,javax.net.ssl.TrustManager,javax.net.ssl.X509TrustManager,java.security.cert.X509Certificate,java.util.logging.Level,java.util.logging.Logger,java.util.Scanner,org.json.*"%>
<html>
    <head>
         <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <title>//Apic Em/hostId</title>
        <style>
            h2{
                font-family: Bookman;
                font-style: italic;
            }
            .form-group{
                font-family: Bookman;
                 background-color: #F5F5F5;
                font-size: 18px;
                padding: 360px 280px;
                padding-top: 40px;
            }
        </style>
    </head>
    <body>
       <div class="form-group">
            <h2> Host details </h2><br>
                    <form class="form-inline" action="hostid.jsp" method="POST">
            Host id: <input type="text" name="id" required>
            <input type="submit" name="submit">
        </form>
           
           <% String hid= request.getParameter("id");%>
           <p><b>Host ID: </b><%out.print(hid); %></p>
          
           <%
                String url1 = "https://sandboxapic.cisco.com/api/v1/host";

		URL obj5 = new URL(url1);
		HttpURLConnection con5 = (HttpURLConnection) obj5.openConnection();
		con5.setRequestMethod("GET");
                
                con5.setRequestProperty("Content-Type", "application/json");
                con5.setRequestProperty("Accept", "application/json");
                HttpSession session5;
                session5=request.getSession(true);
                String key=(String) session.getAttribute("serviceTicket");
               con5.setRequestProperty("X-AUTH-TOKEN", key);    
		int responseCode5 = con5.getResponseCode();
		System.out.println("GET Response Code :: " + responseCode5);
                
                if (responseCode5 == HttpURLConnection.HTTP_OK)
                {
		        BufferedReader in = new BufferedReader(new InputStreamReader(
			con5.getInputStream()));
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
                      
                     
             if(hid.matches(id))
            {
            %>
            <% if(true)
            { %>
            <b> Host Details:</b><br>
            Type: <%out.print(t); %><br>
            Mac: <% out.print(o); %><br>
            IP: <% out.print(s);%><br>  
              
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