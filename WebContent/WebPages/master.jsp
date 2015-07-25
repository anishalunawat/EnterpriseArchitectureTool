<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Home</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
  <link rel="stylesheet" href="css/bootstrap.css">
  <link rel="stylesheet" href="css/sidebar-wrapper.css">
  <link rel="stylesheet" href="../css/artifacts.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
</head>
<body>
<nav class="navbar navbar-default navbar-fixed-top">
  <div class="container">
    <div id="top-pane" style = "overflow:hidden">
		<span class="label label-primary" style="font-size:25px;margin-left:10px;margin-top:40px;float: left;">	ZACHMANN FRAMEWORK	</span>
			<nav class="navbar navbar-default navbar-fixed-top" id="top_fixed_hover">
 			   		<ul class="nav nav-tabs" id = "hover_tabs">	 
 			   		<li class = "dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown"
					 data-delay="1000" data-close-others="false">
       					 Welcome,<%= session.getAttribute("userID") %></a>
					<ul class="dropdown-menu dropdown-menu-right">
			  			<li><a href="#">LogOut</a></li>
					</ul>
					</li>
					</ul>			
			</nav>	 	
	</div>	
 </div>    
</nav>
 <div id="sidebar-wrapper">
		 <div id = "left-content">
            <ul class="sidebar-nav">
                <li class="sidebar-brand">
                </li>
                <li class="sidebar-brand" style="margin-left:12px;">
                    <a href="displayPrivileges.jsp">Home</a>
                </li>
                <li class="sidebar-brand" style="margin-left:15px;">
                 	<a href="#"><%= session.getAttribute("roleName") %></a>
                </li>
			 </ul>
		 </div>
	 </div>
</body>
</html>