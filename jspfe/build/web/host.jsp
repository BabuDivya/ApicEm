

<%@page import="java.io.BufferedReader,java.io.IOException,java.io.InputStream,java.io.InputStreamReader,java.io.OutputStream,java.net.HttpURLConnection,java.net.URL,java.security.KeyManagementException,java.security.NoSuchAlgorithmException,javax.net.ssl.HostnameVerifier,javax.net.ssl.HttpsURLConnection,javax.net.ssl.SSLContext,javax.net.ssl.SSLSession,javax.net.ssl.TrustManager,javax.net.ssl.X509TrustManager,java.security.cert.X509Certificate,java.util.logging.Level,java.util.logging.Logger,java.util.Scanner,org.json.*"%>
<html>
    <head>
    
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
        <title>//Apic Em/host</title>
        <style> 
            body {
                font-family: Bookman;
                background-color: #F5F5F5;
                }
.nt{
    font-family: Bookman;
    background-color: #F5F5F5;
    width: 100%;
    height: 100%;
    margin: auto;
}

        </style>
    </head>
    <body> <div class="nt">
    <center><br> <br>
         <h1>Host Details</h1>
       </center>
        
                
            
        <table  class="table table-striped" align = "center" >
            <thead>
            <tr>
            <th>Host No.</th>
            <th>hostIp</th>
            <th>hostType</th>
            <th>hostMac</th>
            <th>ID</th>
                    </tr>
            </thead>
                
                <%
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
                      
                      
        
%> 
<tbody>
         <tr>
    <td><%out.print(i);%></td>    
            
    <td> <%out.print(s);%></td> 
    <td> <%out.print(t);%></td>
      
    <td> <%out.print(o);%></td>
    <td> <%out.print(id);%></td>
   
    </tr>
</tbody>
      <% 
                      }
                    
		} else {
			System.out.println("GET request not worked");
                      

	}   
   
           %>
</table>
        </div>
<%@ include file="mainjsp.jsp" %>
    </body>
</html>