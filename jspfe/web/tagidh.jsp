<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
         <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <title>//Apic Em/tagId</title>
        <style>
            h2{
                font-style: italic;
                font-family: Bookman;
            }
            .form-group{
                
                 background-color: #F5F5F5;
                font-size: 18px;
                padding: 360px 200px;
                font-family: Bookman;
                
            }
        </style>
    </head>
    <body>
        <div class="form-group">
            <h2> Tag details </h2><br>
        <form class="form-inline" action="deviceid.jsp" method="POST">
            Tag Id: <input type="text" name="id"  class="form-control" required>
            <button type="submit" class="btn btn-default">Submit</button>
        </form></div>
        <%@ include file="mainjsp.jsp" %>
    </body>
</html>
