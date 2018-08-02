<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file='token.jsp' %>
<html lang="en">
<head>
  <title>//Apic Em.home</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
.container {
    padding: 260px 230px;
}
body {
    font-family: Bookman;
    
    color: #777;
}
#nd{
    
    width: 100%;
    background-color: #F5F5F5;
}
.nd {
    
    
    color: #bdbdbd;
      border: 10px solid transparent;
      margin-bottom: 25px;
      width: 100%;
      height: 100%;
      opacity: 0.7;
  }
  #nd p {
     font-size: 18px;
      font-style: italic;}
  
  .nd:hover {
      border-color: #f1f1f1;
  }
  .bg-1 {
    background: #2d2d30;
    color: #bdbdbd;
}
.bg-1 h3 {color: #fff;}
.bg-1 p {
    font-size: 18px;
    font-style: italic;}
.bg-2 {
   width: 100%;
    background-color: #F5F5F5;
    color: #717171;
}

.bg-2 p {
    font-size: 18px;
    font-style: italic;}
.carousel-inner img {
    -webkit-filter: grayscale(90%);
    filter: grayscale(90%); /* make all photos black and white */ 
    width: 100%; /* Set width to 100% */
    margin: auto;
    
}
.frame {
    position: absolute;
    top: 50%;
   
    left: 50%;
    transform: translate(-50%, -50%);
}
object {background-color: transparent !important;}

.carousel-caption h3 {
    color: #fff !important;
}
.front h3{
    font-family:Bookman;
}
.front p{
    font-size: 20px;
    font-family:Bookman;
}
@media (max-width: 500px) {
    .carousel-caption {
        display: none; /* Hide the carousel text when the screen is less than 600 pixels wide */
    }
}

.navbar {
    margin-bottom: 0;
    font-family: Montserrat, sans-serif;
    background-color: #7e7e7e;
    border: 0;
    font-size: 15px !important;
    letter-spacing: 4px;
    opacity:0.9;
}

.navbar-default .navbar-collapse, .navbar-default .navbar-form
{
    background-color: #7e7e7e;
}

/* Add a gray color to all navbar links */
.navbar li a, .navbar .navbar-brand { 
    color: #d5d5d5 !important;
}

/* On hover, the links will turn white */
.navbar-nav li a:hover {
    color: #fff !important;
}

/* The active link */
.navbar-nav li.active a {
    color: #fff !important;
    background-color:#29292c !important;
}

/* Remove border color from the collapsible button */
.navbar-default .navbar-toggle {
    border-color: transparent;
}

/* Dropdown */
.open .dropdown-toggle {
    color: #fff ;
    background-color: #555 !important;
}

/* Dropdown links */
.dropdown-menu li a {
    color: #000 !important;
}

/* On hover, the dropdown links will turn red */
.dropdown-menu li a:hover {
    background-color: red !important;
}
footer {
    background-color: #2d2d30;
    color: #f5f5f5;
    padding: 32px;
}

footer a {
    color: #f5f5f5;
}

footer a:hover {
    color: #777;
    text-decoration: none;
}
h3, h4 {
    margin: 10px 0 30px 0;
    letter-spacing: 10px; 
    font-size: 30px;
    color: #111;
}

/* Remove rounded borders on input fields */
.form-control {
    border-radius: 0;
}

/* Disable the ability to resize textareas */
textarea {
    resize: none;
}
  </style>
  <script>
$(document).ready(function(){
    // Initialize Tooltip
    $('[data-toggle="tooltip"]').tooltip(); 
});
</script>
</head>
<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="50">
    <nav class="navbar navbar-default navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#">Apic Em</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#mypage">HOME</a></li>
        <li><a href="#nd">Network device</a></li> 
        <li><a href="#int">Tag</a></li>
        <li><a href="#h">Host</a></li>
        <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#"><span class="glyphicon glyphicon-user"></span>
          <span class="caret"></span></a>
          <ul class="dropdown-menu">
              <li><a href="index.html">logout</a></li></ul>
         </li>
         
        <li> &nbsp; &nbsp;  </li>
      </ul>
        
    </div>
  </div>
</nav>

    
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
          
        <img src="images/lines.jpg" alt="page1" width="1200" height="700">
     <div class="carousel-caption">
         <h3> <b>APIC Enterprise Module (APIC-EM)</b></h3>
            <p>  &nbsp  </p><br>
             <p>  &nbsp  </p><br>
             
            <p>APIC-EM is an SDN controller for policy based automation of the network infrastructure, simplifying deployment and network operations. The built in applications IWAN, Path Trace and Plug and Play support enterprise routers, switches and Access Points. All capabilities are exposed via a REST API.
            </p>
<p>  &nbsp  </p><br>
         <p>  &nbsp  </p><br>
           <p>  &nbsp  </p><br>
          <p>  &nbsp  </p><br>
          <p>  &nbsp  </p><br>
          <p>  &nbsp  </p>
     
     </div>
      </div>
      <div class="item">
          <img src="images/lines.jpg" alt="page2" width="1200" height="700">
          <p>  &nbsp  </p><br>
          <br>
          <br>
          <div class="frame"><object data="chart1.jsp" width="700" height="500">
                  <param name="wmode" value="transparent"/>
                          
              </object> </div>
        
        <div class="carousel-caption">
          <h3>Device count </h3>
          <p>The number of devices and there details are shown here..</p>
           <p>  &nbsp  </p><br>
            <p>  &nbsp  </p><br>
             <p>  &nbsp  </p><br>
        </div>      
      </div>
    
      <div class="item">
          <img src="images/lines.jpg" alt="page3" width="1200" height="700">
          <p>  &nbsp  </p><br>
          <br>
          <br>
           <div class="frame"> <embed src="chartcount.html" width="700" height="500"> </div>
        
        <div class="carousel-caption">
          <h3>Host charts</h3>
          <p>The Host details along with type, Ip address and Mac address are shown here..</p>
           <p>  &nbsp  </p><br>
            <p>  &nbsp  </p><br>
             <p>  &nbsp  </p><br>
        </div>      
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
</div>


<div id="nd" class="container text-center">
    <h3>Network-Device API</h3><br> 
  <!--<p>Inventory details are given by<br>
  Get specific details over here</p> -->
  <br>
  <div class="row">
    <div class="col-sm-4">
        <p><strong>Retrives the network device by filters</strong></p><br>
       <a href="#ndi" data-toggle="collapse">
      <p><strong>Get Device Details</strong></p><br>
       </a><br>
      <div id="ndi" class="collapse">
          
          <a href="#" onclick="document.getElementById('contents1').style.cssText = ''">link1</a>

         <div id="contents1" style="display:none;">
        <h2>Contents of link1</h2>
        <embed src="NetworkDevice.jsp">   </div>
          <p>Gets the list of network devices filtered using management IP address, mac address, hostname and location name</p>
      </div>
    </div>
    <div class="col-sm-4">
        <p><strong>Retrives network device count by filters</strong></p><br>
       <a href="#ndcount" data-toggle="collapse">
      <p><strong>Get Device Count</strong></p><br>
       </a><br>
      <div id="ndcount" class="collapse">
          <p><a href="devicecount.jsp">/network-device/count</a></p><br>
        <p>Gets the count of network devices filtered by management IP address, mac address, hostname and location name</p>
      </div>
    </div>
    <div class="col-sm-4">
        <p><strong>Retrives the network device by ID</strong></p><br>
       <a href="#ndid" data-toggle="collapse">
           <p><strong>Get Device ID</strong></p><br>
       </a><br>
      <div id="ndid" class="collapse">
          <p><a href="deviceidh.jsp">/network-device/{id}</a></p><br>
        <p>Gets the network device for the given device ID</p> 
      </div>
    </div>
  </div>
  </div>

    <div id="int" class="bg-1">
  <div class="container text-center">
    <h3 class="text-center">Tag API</h3>
    
    <br>
   <div class="row">
    <div class="col-sm-4">
      <p><strong>Get the tag by filter</strong></p><br>
       <a href="#nd11" data-toggle="collapse">
      <p><strong>Get tag Details</strong></p><br>
       </a><br>
      <div id="nd11" class="collapse">
       <p><a href="tag.jsp">/tag</a></p>
          <p>Gets all the tags that are associated with resources of {resourceType} if resourceType filter is provided. Gets all the tags that are associated with a resource with id {resourceId} and of resource type {resourceType} when resourceId and resourceType filters are provided.</p>
      </div>
    </div>
    <div class="col-sm-4">
      <p><strong>Add a new tag to API</strong></p><br>
       <a href="#ndcount2" data-toggle="collapse">
      <p><strong>Post Tag</strong></p><br>
       </a><br>
      <div id="ndcount2" class="collapse">
        <p><a href="tagpost2.jsp">/tag-post</a></p>
          <p>Adds a new tag to the controller. The {tag} field should contain the value of the tag.</p>
      </div>
    </div>
    <div class="col-sm-4">
      <p><strong>Retrives tag by its Id</strong></p><br>
       <a href="#ndid2" data-toggle="collapse">
     <p><strong>Get Tag Id</strong></p><br>
       </a><br>
      <div id="ndid2" class="collapse">
         <p><a href="tagidh.jsp">/host</a></p>
          <p>Gets the details of the tag by its id.</p>
      </div>
    </div>
  </div>

  </div>
</div>
 <div id="h" class="bg-2">
  <div class="container text-center">
    <h3 class="text-center">Host API</h3>
    
    <br>
   <div class="row">
    <div class="col-sm-4">
      <p><strong>Retrives host</strong></p><br>
       <a href="#nd1" data-toggle="collapse">
      <p><strong>Get Host Details</strong></p><br>
       </a><br>
      <div id="nd1" class="collapse">
       <p><a href="host.jsp">/host</a></p>
          <p>Get Hosts</p>
      </div>
    </div>
    <div class="col-sm-4">
      <p><strong>Total count of host</strong></p><br>
       <a href="#ndcount2" data-toggle="collapse">
      <p><strong>Get Host Count</strong></p><br>
       </a><br>
      <div id="ndcount2" class="collapse">
        <p><a href="HostCount.jsp">/host</a></p>
          <p>Get Host count</p>
      </div>
    </div>
    <div class="col-sm-4">
      <p><strong>Retrives host based on Id</strong></p><br>
       <a href="#ndid2" data-toggle="collapse">
     <p><strong>Get Host Id</strong></p><br>
       </a><br>
      <div id="ndid2" class="collapse">
         <p><a href="hostidh.jsp">/host</a></p>
          <p>Get Host by Id</p>
      </div>
    </div>
  </div>
  </div>
</div>
    <footer class="text-center">
  <a class="up-arrow" href="#myPage" data-toggle="tooltip" title="TO TOP">
    <span class="glyphicon glyphicon-chevron-up"></span>
  </a><br><br>
  
</footer>
   
</body>
</html>
