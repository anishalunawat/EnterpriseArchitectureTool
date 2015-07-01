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
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
</head>
<body>	
	<div class = "container" style = "text-align:center; margin-top:30px; font-size: 25px;background:#337ab7;height:100px;">
	
		<span class="label label-primary" style="font-size:25px;margin-top:25px;float: left;">	ZACHMANN FRAMEWORK	</span>
		
		<div class = "dropdown" style = "text-align:right;margin-right:20px;margin-top:0px;">
			<button class="btn btn-default dropdown-toggle" type="button" data-toggle="dropdown"><b>Welcome,</b> <%= session.getAttribute("userID") %>
			<span class="caret"></span></button>
			<ul class="dropdown-menu dropdown-menu-right">
			  <li><a href="#">LogOut</a></li>
			</ul>	
		</div>
	</div>
	
	 <div id="sidebar-wrapper">
                
             <ul class="sidebar-nav">
					<li class = "sidebar-brand">
						<ul class="btn btn-primary btn-block">
						<li>
							<a href="#" style = "margin-left:-150px;font-size:20px;">HOME</a>
						</li>
						</ul>
					</li>
					
					<li class = "sidebar-brand">
						<ul class="btn btn-primary btn-block">
							<li class="dropdown">
							  <a href="#" data-toggle="dropdown" data-placement="right" class="dropdown-toggle" style = "margin-left:-150px;font-size:20px;">
							  	<%= session.getAttribute("roleName") %>
							  </a>
							  <ul class="dropdown-menu" id="nav" style = "margin-left:150px;">
							    <li><a href="#">WHAT</a></li>
							    <li class="divider"></li>
							    <li><a href="#">HOW</a></li>
							    <li class="divider"></li>
							    <li><a href="#">WHERE</a></li>
							    <li class="divider"></li>
							    <li><a href="#">WHO</a></li>
							    <li class="divider"></li>
							    <li><a href="#">WHEN</a></li>
							    <li class="divider"></li>
							    <li><a href="#">WHY</a></li>
							  </ul>
							</li>
						</ul>
					</li>
          		</ul>
       </div>
	<div class = "rightpane">
		<form action = "SubmitFrameworkData" method = "post">
		<table class="table table-hover" style = "margin-top:30px;width:300px">	
			    <thead>
					<tr>
				      	<th></th>
				        <th>WHAT</th>
				        <th>HOW</th>
				        <th>WHERE</th>
				        <th>WHO</th>
				        <th>WHEN</th>
				        <th>WHY</th>
					</tr>
			    </thead>
			    <tbody>
					<tr>
				        <th>SCOPE</th>
				        <td>
				        	PROJECT GLOSSARY:<br/>
						</td>
				        <td>
				        	LIST OF METHODS:<br/>
							
						</td>
						<td>
				        	LOCATION IDENTIFICATION: Tree Structure<br/>
						</td>
						<td>
			        		LIST OF PERSONS:<br/>
						</td>
						<td>
			        		LIST OF EVENTS:<br/>
						</td>
						<td>
			        		PROJECT GLOSSARY:<br/>
						</td>
					</tr> 
					<tr>
						<th>BUISENESS MODEL</th>
						<td>
							REQUIREMENTS:<br/>
							
						</td>
						<td>
							BUSINESS DECISION:<br/>
						</td>
						<td>
							DISTRIBUTED SYSTEM ARCHITECTURE:<br/>
						</td>
						<td>
							WORK FLOW MODEL:<br/>
						</td>
						<td>
							MASTER SCHEDULE:<br/>
						</td>
						<td>
							REQUIREMENTS:<br/>
						</td>
						
					</tr>
			      
					<tr>
						<th>SYSTEM MODEL</th>
						<td>
							DESIGN ANALYSIS:<br/>
						</td>
						<td>
							APPLICATION ARCHITECTURE:<br/>
						</td>
						<td>
							TECHNOLOGY ARCHITECTURE:<br/>
						</td>
						<td>
							HUMAN INTERFACE ARCHITECTURE:<br/>
						</td>
						<td>
							PROCESSING STRUCTURE:<br/>
						</td>
						<td>
							DESIGN ANALYSIS:<br/>
						</td>
					  
					</tr>
			      
					<tr>
						<th>TECHNOLOGY MODEL</th>
						<td>
							IMPLEMENTATION:<br/>
						</td>
						<td>
							PROGRAM STRUCTURE:<br/>
						</td>
						<td>
							NETWORK ARCHITECTURE:<br/>
						</td>
						<td>
							INTERFACE AND SECURITY DESIGN:<br/>
						</td>
						<td>
							CONTROL STRUCTURE:<br/>
						</td>
						<td>
							IMPLEMENTATION:<br/>
						</td>
					</tr>
					      
					<tr>
						<th>DETAILED REPRESENTATION</th>
						<td>
							DEPLOYMENT FILES:<br/>
						</td>
						<td>
							PROGAM DESIGN:<br/>
						</td>
						<td>
							COMMUNICATION FACILITIES:<br/>
						</td>
						<td>
							SECURITY CODE:<br/>
						</td>
						<td>
							TIMING DEFINITION:<br/>
						</td>
						<td>
							DEPLOYMENT FILES:<br/>
						</td>
					</tr>
					
					<tr>
						<th>FUNCTIONING SYSTEM</th>
						<td>
							POST DEPLOYMENT:<br/>
						</td>
						<td>
							POST DEPLOYMENT:<br/>
						</td>
						<td>
							POST DEPLOYMENT:<br/>
						</td>
						<td>
							POST DEPLOYMENT:<br/>
						</td>
						<td>
							POST DEPLOYMENT:<br/>
						</td>
						<td>
							POST DEPLOYMENT:<br/>
						</td>
					</tr>
			
			    </tbody>
			  </table>
		</form>
	</div>
</div>
</body>
</html>