<%@ include file="master.jsp" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
		<form action = "SubmitFrameworkData" method = "post">
 			<div class="container">
 				<nav class="navbar navbar-default navbar-fixed-top" id="top_fixed">
 			   		<ul class="nav nav-tabs" id = "tabs">
		    			<li><a href="#">WHAT</a></li>
					    <li><a href="#">HOW</a></li>
					    <li><a href="#">WHERE</a></li>
					    <li><a href="#">WHO</a></li>
					    <li><a href="#">WHEN</a></li>
					    <li><a href="#">WHY</a></li>
					</ul>
				</nav>	 
 			</div>
 <div id = "rightpane" style = "background:#F0F0F0; overflow:none;">
	<div class="bodycontainer scrollable">
		<table class="table table-hover" style = "margin-top:230px;width:150px; overflow:scroll;">	
			    <tbody>
					<tr>
				        <th>SCOPE</th>
				        <td>
				        	PROJECT GLOSSARY:<br/>
				        	<div id = "forward_arrow" style = "margin-left: 10px;margin-top:20px;">
				        		<% 
									String c11 = session.getAttribute("roleName").toString();
									
									if(c11.equalsIgnoreCase("Planner")) {
									
								%>	
						        		<a href = "SubmitFrameworkData?&userID=<%=session.getAttribute("userID").toString()%>">
					        				<span class="glyphicon glyphicon-circle-arrow-right"></span>
					        			</a>
						        	<% } 
						        	
						        	else{ %>
						        		<div style="cursor: default;background-image: none;opacity: 0.65;filter: alpha(opacity=65);-webkit-box-shadow: none;-moz-box-shadow: none;color: #333;">
							        		<a href = "#">
							        			<span class="glyphicon glyphicon-circle-arrow-right"></span>
							        		</a>
					        			</div>
						        	<%} %>
        					</div>
						</td>
				        <td>
				        	LIST OF METHODS:<br/>
				        	<div id = "forward_arrow" style = "margin-left: 10px;margin-top:20px;">
				        		<% 
									String c12 = session.getAttribute("roleName").toString();
									
									if(c12.equalsIgnoreCase("Planner")) {
									
								%>	
						        		<a href = "SubmitFrameworkData?&userID=<%=session.getAttribute("userID").toString()%>">
					        				<span class="glyphicon glyphicon-circle-arrow-right"></span>
					        			</a>
						        	<% } 
						        	
						        	else{ %>
						        		<div style="cursor: default;background-image: none;opacity: 0.65;filter: alpha(opacity=65);-webkit-box-shadow: none;-moz-box-shadow: none;color: #333;">
							        		<a href = "#">
							        			<span class="glyphicon glyphicon-circle-arrow-right"></span>
							        		</a>
					        			</div>
						        	<%} %>
        					</div>
							
						</td>
						<td>
				        	LOCATION IDENTIFICATION: Tree Structure<br/>
				        	<div id = "forward_arrow" style = "margin-left: 10px;margin-top:0px;">
				        		<% 
									String c13 = session.getAttribute("roleName").toString();
									
									if(c13.equalsIgnoreCase("Planner")) {%>
									
						        		<a href = "../EnterpriseArchTool/WebPages/cell11.jsp">
					        				<span class="glyphicon glyphicon-circle-arrow-right"></span>
					        			</a>
						        		
						        	<% } 
						        	
						        	else{ %>
						        		<div style="cursor: default;background-image: none;opacity: 0.65;filter: alpha(opacity=65);-webkit-box-shadow: none;-moz-box-shadow: none;color: #333;">
							        		<a href = "../EnterpriseArchTool/WebPages/cell11.jsp">
							        			<span class="glyphicon glyphicon-circle-arrow-right"></span>
							        		</a>
					        			</div>
						        	<%} %>
        					</div>
						</td>
						<td>
			        		LIST OF PERSONS:<br/>
			        		<div id = "forward_arrow" style = "margin-left: 10px;margin-top:20px;">
				        		<% 
									String c14 = session.getAttribute("roleName").toString();
									
									if(c14.equalsIgnoreCase("Planner")) {%>
									
						        		<a href = "../EnterpriseArchTool/WebPages/cell11.jsp">
					        				<span class="glyphicon glyphicon-circle-arrow-right"></span>
					        			</a>
						        		
						        	<% } 
						        	
						        	else{ %>
						        		<div style="cursor: default;background-image: none;opacity: 0.65;filter: alpha(opacity=65);-webkit-box-shadow: none;-moz-box-shadow: none;color: #333;">
							        		<a href = "../EnterpriseArchTool/WebPages/cell11.jsp">
							        			<span class="glyphicon glyphicon-circle-arrow-right"></span>
							        		</a>
					        			</div>
						        	<%} %>
        					</div>
						</td>
						<td>
			        		LIST OF EVENTS:<br/>
			        		<div id = "forward_arrow" style = "margin-left: 10px;margin-top:20px;">
				        		<% 
									String c15 = session.getAttribute("roleName").toString();
									
									if(c15.equalsIgnoreCase("Planner")) {%>
									
						        		<a href = "../EnterpriseArchTool/WebPages/cell11.jsp">
					        				<span class="glyphicon glyphicon-circle-arrow-right"></span>
					        			</a>
						        		
						        	<% } 
						        	
						        	else{ %>
						        		<div style="cursor: default;background-image: none;opacity: 0.65;filter: alpha(opacity=65);-webkit-box-shadow: none;-moz-box-shadow: none;color: #333;">
							        		<a href = "../EnterpriseArchTool/WebPages/cell11.jsp">
							        			<span class="glyphicon glyphicon-circle-arrow-right"></span>
							        		</a>
					        			</div>
						        	<%} %>
        					</div>
						</td>
						<td>
			        		PROJECT GLOSSARY:<br/>
			        		<div id = "forward_arrow" style = "margin-left: 10px;margin-top:20px;">
				        		<% 
									String c16 = session.getAttribute("roleName").toString();
									
									if(c16.equalsIgnoreCase("Planner")) {%>
									
						        		<a href = "../EnterpriseArchTool/WebPages/cell11.jsp">
					        				<span class="glyphicon glyphicon-circle-arrow-right"></span>
					        			</a>	
						        		
						        	<% } 
						        	
						        	else{ %>
						        		<div style="cursor: default;background-image: none;opacity: 0.65;filter: alpha(opacity=65);-webkit-box-shadow: none;-moz-box-shadow: none;color: #333;">
							        		<a href = "../EnterpriseArchTool/WebPages/cell11.jsp">
							        			<span class="glyphicon glyphicon-circle-arrow-right"></span>
							        		</a>
					        			</div>
						        	<%} %>
        					</div>
						</td>
					</tr> 
					<tr>
						<th>OWNER</th>
						<td>
							REQUIREMENTS:<br/>
							<div id = "forward_arrow" style = "margin-left: 10px;margin-top:40px;">
				        		<% 
									String c21 = session.getAttribute("roleName").toString();
									
									if(c21.equalsIgnoreCase("Owner")) {%>
									
						        		<a href = "../EnterpriseArchTool/WebPages/cell11.jsp">
					        				<span class="glyphicon glyphicon-circle-arrow-right"></span>
					        			</a>
						        		
						        	<% } 
						        	
						        	else{ %>
						        		<div style="cursor: default;background-image: none;opacity: 0.65;filter: alpha(opacity=65);-webkit-box-shadow: none;-moz-box-shadow: none;color: #333;">
							        		<a href = "../EnterpriseArchTool/WebPages/cell11.jsp">
							        			<span class="glyphicon glyphicon-circle-arrow-right"></span>
							        		</a>
					        			</div>
						        	<%} %>
        					</div>
							
						</td>
						<td>
							BUSINESS DECISION:<br/>
							<div id = "forward_arrow" style = "margin-left: 10px;margin-top:20px;">
				        		<% 
									String c22 = session.getAttribute("roleName").toString();
									
									if(c22.equalsIgnoreCase("Owner")) {%>
									
						        		<a href = "../EnterpriseArchTool/WebPages/cell11.jsp">
					        				<span class="glyphicon glyphicon-circle-arrow-right"></span>
					        			</a>
						        		
						        	<% } 
						        	
						        	else{ %>
						        		<div style="cursor: default;background-image: none;opacity: 0.65;filter: alpha(opacity=65);-webkit-box-shadow: none;-moz-box-shadow: none;color: #333;">
							        		<a href = "../EnterpriseArchTool/WebPages/cell11.jsp">
							        			<span class="glyphicon glyphicon-circle-arrow-right"></span>
							        		</a>
					        			</div>
						        	<%} %>
        					</div>
						</td>
						<td>
							DISTRIBUTED SYSTEM ARCHITECTURE:<br/>
							<div id = "forward_arrow" style = "margin-left: 10px;margin-top:0px;">
				        		<% 
									String c23 = session.getAttribute("roleName").toString();
									
									if(c23.equalsIgnoreCase("Owner")) {%>
									
						        		<a href = "../EnterpriseArchTool/WebPages/cell11.jsp">
					        				<span class="glyphicon glyphicon-circle-arrow-right"></span>
					        			</a>
						        		
						        	<% } 
						        	
						        	else{ %>
						        		<div style="cursor: default;background-image: none;opacity: 0.65;filter: alpha(opacity=65);-webkit-box-shadow: none;-moz-box-shadow: none;color: #333;">
					
							        		<a href = "../EnterpriseArchTool/WebPages/cell11.jsp">
							        			<span class="glyphicon glyphicon-circle-arrow-right"></span>
							        		</a>
					        			</div>
						        	<%} %>
        					</div>
						</td>
						<td>
							WORK FLOW MODEL:<br/>
							<div id = "forward_arrow" style = "margin-left: 10px;margin-top:20px;">
				        		<% 
									String c24 = session.getAttribute("roleName").toString();
									
									if(c24.equalsIgnoreCase("Owner")) {%>
									
						        		<a href = "../EnterpriseArchTool/WebPages/cell11.jsp">
					        				<span class="glyphicon glyphicon-circle-arrow-right"></span>
					        			</a>
						        		
						        	<% } 
						        	
						        	else{ %>
						        		<div style="cursor: default;background-image: none;opacity: 0.65;filter: alpha(opacity=65);-webkit-box-shadow: none;-moz-box-shadow: none;color: #333;">
							        		<a href = "../EnterpriseArchTool/WebPages/cell11.jsp">
							        			<span class="glyphicon glyphicon-circle-arrow-right"></span>
							        		</a>
					        			</div>
						        	<%} %>
        					</div>
						</td>
						<td>
							MASTER SCHEDULE:<br/>
							<div id = "forward_arrow" style = "margin-left: 10px;margin-top:20px;">
				        		<% 
									String c25 = session.getAttribute("roleName").toString();
									
									if(c25.equalsIgnoreCase("Owner")) {%>
									
						        		<a href = "../EnterpriseArchTool/WebPages/cell11.jsp">
					        				<span class="glyphicon glyphicon-circle-arrow-right"></span>
					        			</a>
						        		
						        	<% } 
						        	
						        	else{ %>
						        		<div style="cursor: default;background-image: none;opacity: 0.65;filter: alpha(opacity=65);-webkit-box-shadow: none;-moz-box-shadow: none;color: #333;">
							        		<a href = "../EnterpriseArchTool/WebPages/cell11.jsp">
							        			<span class="glyphicon glyphicon-circle-arrow-right"></span>
							        		</a>
					        			</div>
						        	<%} %>
        					</div>
						</td>
						<td>
							REQUIREMENTS:<br/>
							<div id = "forward_arrow" style = "margin-left: 10px;margin-top:40px;">
				        		<% 
									String c26 = session.getAttribute("roleName").toString();
									
									if(c26.equalsIgnoreCase("Owner")) {%>
									
						        		<a href = "../EnterpriseArchTool/WebPages/cell11.jsp">
					        				<span class="glyphicon glyphicon-circle-arrow-right"></span>
					        			</a>
						        		
						        	<% } 
						        	
						        	else{ %>
						        		<div style="cursor: default;background-image: none;opacity: 0.65;filter: alpha(opacity=65);-webkit-box-shadow: none;-moz-box-shadow: none;color: #333;">
							        		<a href = "../EnterpriseArchTool/WebPages/cell11.jsp">
							        			<span class="glyphicon glyphicon-circle-arrow-right"></span>
							        		</a>
					        			</div>
						        	<%} %>
        					</div>
						</td>
						
					</tr>
			      
					<tr>
						<th>DESIGNER</th>
						<td>
							DESIGN ANALYSIS:<br/>
							<div id = "forward_arrow" style = "margin-left: 10px;margin-top:40px;">
				        		<% 
									String c31 = session.getAttribute("roleName").toString();
									
									if(c31.equalsIgnoreCase("Designer")) {%>
									
						        		<a href = "../EnterpriseArchTool/WebPages/cell11.jsp">
					        				<span class="glyphicon glyphicon-circle-arrow-right"></span>
					        			</a>
						        		
						        	<% } 
						        	
						        	else{ %>
						        		<div style="cursor: default;background-image: none;opacity: 0.65;filter: alpha(opacity=65);-webkit-box-shadow: none;-moz-box-shadow: none;color: #333;">
							        		<a href = "../EnterpriseArchTool/WebPages/cell11.jsp">
							        			<span class="glyphicon glyphicon-circle-arrow-right"></span>
							        		</a>
					        			</div>
						        	<%} %>
        					</div>
						</td>
						<td>
							APPLICATION ARCHITECTURE:<br/>
							<div id = "forward_arrow" style = "margin-left: 10px;margin-top:20px;">
				        		<% 
									String c32 = session.getAttribute("roleName").toString();
									
									if(c32.equalsIgnoreCase("Designer")) {%>
									
						        		<a href = "../EnterpriseArchTool/WebPages/cell11.jsp">
					        				<span class="glyphicon glyphicon-circle-arrow-right"></span>
					        			</a>
						        		
						        	<% } 
						        	
						        	else{ %>
						        		<div style="cursor: default;background-image: none;opacity: 0.65;filter: alpha(opacity=65);-webkit-box-shadow: none;-moz-box-shadow: none;color: #333;">
							        		<a href = "../EnterpriseArchTool/WebPages/cell11.jsp">
							        			<span class="glyphicon glyphicon-circle-arrow-right"></span>
							        		</a>
					        			</div>
						        	<%} %>
        					</div>
						</td>
						<td>
							TECHNOLOGY ARCHITECTURE:<br/>
							<div id = "forward_arrow" style = "margin-left: 10px;margin-top:20px;">
				        		<% 
									String c33 = session.getAttribute("roleName").toString();
									
									if(c33.equalsIgnoreCase("Designer")) {%>
									
						        		<a href = "../EnterpriseArchTool/WebPages/cell11.jsp">
					        				<span class="glyphicon glyphicon-circle-arrow-right"></span>
					        			</a>
						        		
						        	<% } 
						        	
						        	else{ %>
						        		<div style="cursor: default;background-image: none;opacity: 0.65;filter: alpha(opacity=65);-webkit-box-shadow: none;-moz-box-shadow: none;color: #333;">
							        		<a href = "../EnterpriseArchTool/WebPages/cell11.jsp">
							        			<span class="glyphicon glyphicon-circle-arrow-right"></span>
							        		</a>
					        			</div>
						        	<%} %>
        					</div>
						</td>
						<td>
							HUMAN INTERFACE ARCHITECTURE:<br/>
							<div id = "forward_arrow" style = "margin-left: 10px;margin-top:0px;">
				        		<% 
									String c34 = session.getAttribute("roleName").toString();
									
									if(c34.equalsIgnoreCase("Designer")) {%>
									
						        		<a href = "../EnterpriseArchTool/WebPages/cell11.jsp">
					        				<span class="glyphicon glyphicon-circle-arrow-right"></span>
					        			</a>
						        		
						        	<% } 
						        	
						        	else{ %>
						        		<div style="cursor: default;background-image: none;opacity: 0.65;filter: alpha(opacity=65);-webkit-box-shadow: none;-moz-box-shadow: none;color: #333;">
							        		<a href = "../EnterpriseArchTool/WebPages/cell11.jsp">
							        			<span class="glyphicon glyphicon-circle-arrow-right"></span>
							        		</a>
					        			</div>
						        	<%} %>
        					</div>
						</td>
						<td>
							PROCESSING STRUCTURE:<br/>
							<div id = "forward_arrow" style = "margin-left: 10px;margin-top:20px;">
				        		<% 
									String c35 = session.getAttribute("roleName").toString();
									
									if(c35.equalsIgnoreCase("Designer")) {%>
									
						        		<a href = "../EnterpriseArchTool/WebPages/cell11.jsp">
					        				<span class="glyphicon glyphicon-circle-arrow-right"></span>
					        			</a>
						        		
						        	<% } 
						        	
						        	else{ %>
						        		<div style="cursor: default;background-image: none;opacity: 0.65;filter: alpha(opacity=65);-webkit-box-shadow: none;-moz-box-shadow: none;color: #333;">
							        		<a href = "../EnterpriseArchTool/WebPages/cell11.jsp">
							        			<span class="glyphicon glyphicon-circle-arrow-right"></span>
							        		</a>
					        			</div>
						        	<%} %>
        					</div>
						</td>
						<td>
							DESIGN ANALYSIS:<br/>
							<div id = "forward_arrow" style = "margin-left: 10px;margin-top:40px;">
				        		<% 
									String c36 = session.getAttribute("roleName").toString();
									
									if(c36.equalsIgnoreCase("Designer")) {%>
									
						        		<a href = "../EnterpriseArchTool/WebPages/cell11.jsp">
					        				<span class="glyphicon glyphicon-circle-arrow-right"></span>
					        			</a>
						        		
						        	<% } 
						        	
						        	else{ %>
						        		<div style="cursor: default;background-image: none;opacity: 0.65;filter: alpha(opacity=65);-webkit-box-shadow: none;-moz-box-shadow: none;color: #333;">
							        		<a href = "../EnterpriseArchTool/WebPages/cell11.jsp">
							        			<span class="glyphicon glyphicon-circle-arrow-right"></span>
							        		</a>
					        			</div>
						        	<%} %>
        					</div>
						</td>
					  
					</tr>
			      
					<tr>
						<th>BUILDER</th>
						<td>
							IMPLEMENTATION:<br/>
							<div id = "forward_arrow" style = "margin-left: 10px;margin-top:40px;">
				        		<% 
									String c41 = session.getAttribute("roleName").toString();
									
									if(c41.equalsIgnoreCase("Builder")) {%>
									
						        		<a href = "../EnterpriseArchTool/WebPages/cell11.jsp">
					        				<span class="glyphicon glyphicon-circle-arrow-right"></span>
					        			</a>
						        		
						        	<% } 
						        	
						        	else{ %>
						        		<div style="cursor: default;background-image: none;opacity: 0.65;filter: alpha(opacity=65);-webkit-box-shadow: none;-moz-box-shadow: none;color: #333;">
							        		<a href = "../EnterpriseArchTool/WebPages/cell11.jsp">
							        			<span class="glyphicon glyphicon-circle-arrow-right"></span>
							        		</a>
					        			</div>
						        	<%} %>
        					</div>
						</td>
						<td>
							PROGRAM STRUCTURE:<br/>
							<div id = "forward_arrow" style = "margin-left: 10px;margin-top:20px;">
				        		<% 
									String c42 = session.getAttribute("roleName").toString();
									
									if(c42.equalsIgnoreCase("Builder")) {%>
									
						        		<a href = "../EnterpriseArchTool/WebPages/cell11.jsp">
					        				<span class="glyphicon glyphicon-circle-arrow-right"></span>
					        			</a>
						        		
						        	<% } 
						        	
						        	else{ %>
						        		<div style="cursor: default;background-image: none;opacity: 0.65;filter: alpha(opacity=65);-webkit-box-shadow: none;-moz-box-shadow: none;color: #333;">
							        		<a href = "../EnterpriseArchTool/WebPages/cell11.jsp">
							        			<span class="glyphicon glyphicon-circle-arrow-right"></span>
							        		</a>
					        			</div>
						        	<%} %>
        					</div>
						</td>
						<td>
							NETWORK ARCHITECTURE:<br/>
							<div id = "forward_arrow" style = "margin-left: 10px;margin-top:20px;">
				        		<% 
									String c43 = session.getAttribute("roleName").toString();
									
									if(c43.equalsIgnoreCase("Builder")) {%>
									
						        		<a href = "../EnterpriseArchTool/WebPages/cell11.jsp">
					        				<span class="glyphicon glyphicon-circle-arrow-right"></span>
					        			</a>
						        		
						        	<% } 
						        	
						        	else{ %>
						        		<div style="cursor: default;background-image: none;opacity: 0.65;filter: alpha(opacity=65);-webkit-box-shadow: none;-moz-box-shadow: none;color: #333;">
							        		<a href = "../EnterpriseArchTool/WebPages/cell11.jsp">
							        			<span class="glyphicon glyphicon-circle-arrow-right"></span>
							        		</a>
					        			</div>
						        	<%} %>
        					</div>
						</td>
						<td>
							INTERFACE AND SECURITY DESIGN:<br/>
							<div id = "forward_arrow" style = "margin-left: 10px;margin-top:0px;">
				        		<% 
									String c44 = session.getAttribute("roleName").toString();
									
									if(c44.equalsIgnoreCase("Builder")) {%>
									
						        		<a href = "../EnterpriseArchTool/WebPages/cell11.jsp">
					        				<span class="glyphicon glyphicon-circle-arrow-right"></span>
					        			</a>
						        		
						        	<% } 
						        	
						        	else{ %>
						        		<div style="cursor: default;background-image: none;opacity: 0.65;filter: alpha(opacity=65);-webkit-box-shadow: none;-moz-box-shadow: none;color: #333;">
							        		<a href = "../EnterpriseArchTool/WebPages/cell11.jsp">
							        			<span class="glyphicon glyphicon-circle-arrow-right"></span>
							        		</a>
					        			</div>
						        	<%} %>
        					</div>
						</td>
						<td>
							CONTROL STRUCTURE:<br/>
							<div id = "forward_arrow" style = "margin-left: 10px;margin-top:20px;">
				        		<% 
									String c45 = session.getAttribute("roleName").toString();
									
									if(c45.equalsIgnoreCase("Builder")) {%>
									
						        		<a href = "../EnterpriseArchTool/WebPages/cell11.jsp">
					        				<span class="glyphicon glyphicon-circle-arrow-right"></span>
					        			</a>
						        		
						        	<% } 
						        	
						        	else{ %>
						        		<div style="cursor: default;background-image: none;opacity: 0.65;filter: alpha(opacity=65);-webkit-box-shadow: none;-moz-box-shadow: none;color: #333;">
							        		<a href = "../EnterpriseArchTool/WebPages/cell11.jsp">
							        			<span class="glyphicon glyphicon-circle-arrow-right"></span>
							        		</a>
					        			</div>
						        	<%} %>
        					</div>
						</td>
						<td>
							IMPLEMENTATION:<br/>
							<div id = "forward_arrow" style = "margin-left: 10px;margin-top:40px;">
				        		<% 
									String c46 = session.getAttribute("roleName").toString();
									
									if(c46.equalsIgnoreCase("Builder")) {%>
									
						        		<a href = "../EnterpriseArchTool/WebPages/cell11.jsp">
					        				<span class="glyphicon glyphicon-circle-arrow-right"></span>
					        			</a>
						        		
						        	<% } 
						        	
						        	else{ %>
						        		<div style="cursor: default;background-image: none;opacity: 0.65;filter: alpha(opacity=65);-webkit-box-shadow: none;-moz-box-shadow: none;color: #333;">
							        		<a href = "../EnterpriseArchTool/WebPages/cell11.jsp">
							        			<span class="glyphicon glyphicon-circle-arrow-right"></span>
							        		</a>
					        			</div>
						        	<%} %>
        					</div>
						</td>
					</tr>
					      
					<tr>
						<th>PROGRAMMER</th>
						<td>
							DEPLOYMENT FILES:<br/>
							<div id = "forward_arrow" style = "margin-left: 10px;margin-top:0px;">
								<% 
								String c51 = session.getAttribute("roleName").toString(); 
								
								if(c51.equalsIgnoreCase("Programmer")) {%>
									
					        		<a href = "../EnterpriseArchTool/WebPages/cell11.jsp">
					        			<span class="glyphicon glyphicon-circle-arrow-right"></span>
					        		</a>
					        	<% } 
					        	
					        	else{ %>
					        	
					        		<div style="cursor: default;background-image: none;opacity: 0.65;filter: alpha(opacity=65);-webkit-box-shadow: none;-moz-box-shadow: none;color: #333;">
						        		<a href = "../EnterpriseArchTool/WebPages/cell11.jsp">
						        			<span class="glyphicon glyphicon-circle-arrow-right"></span>
						        		</a>
					        		</div>
					        	<%} %>
        					</div>
						</td>
						<td>
							PROGAM DESIGN:<br/>
							<div id = "forward_arrow" style = "margin-left: 10px;margin-top:0px;">
					        	<% 
									String c52 = session.getAttribute("roleName").toString();
									
									if(c52.equalsIgnoreCase("Programmer")) {%>
									
						        		<a href = "../EnterpriseArchTool/WebPages/cell11.jsp">
					        				<span class="glyphicon glyphicon-circle-arrow-right"></span>
					        			</a>
						        		
						        	<% } 
						        	
						        	else{ %>
						        		<div style="cursor: default;background-image: none;opacity: 0.65;filter: alpha(opacity=65);-webkit-box-shadow: none;-moz-box-shadow: none;color: #333;">
							        		<a href = "../EnterpriseArchTool/WebPages/cell11.jsp">
							        			<span class="glyphicon glyphicon-circle-arrow-right"></span>
							        		</a>
					        			</div>
						        	<%} %>
        					</div>
						</td>
						<td>
							COMMUNICATION FACILITIES:<br/>
							<div id = "forward_arrow" style = "margin-left: 10px;margin-top:0px;">
				        		<% 
									String c53 = session.getAttribute("roleName").toString();
									
									if(c53.equalsIgnoreCase("Programmer")) {%>
									
						        		<a href = "../EnterpriseArchTool/WebPages/cell11.jsp">
					        				<span class="glyphicon glyphicon-circle-arrow-right"></span>
					        			</a>
						        		
						        	<% } 
						        	
						        	else{ %>
						        		<div style="cursor: default;background-image: none;opacity: 0.65;filter: alpha(opacity=65);-webkit-box-shadow: none;-moz-box-shadow: none;color: #333;">
							        		<a href = "../EnterpriseArchTool/WebPages/cell11.jsp">
							        			<span class="glyphicon glyphicon-circle-arrow-right"></span>
							        		</a>
					        			</div>
						        	<%} %>
        					</div>
						</td>
						<td>
							SECURITY CODE:<br/>
							<div id = "forward_arrow" style = "margin-left: 10px;margin-top:0px;">
				        		<% 
									String c54 = session.getAttribute("roleName").toString();
									
									if(c54.equalsIgnoreCase("Programmer")) {%>
									
						        		<a href = "../EnterpriseArchTool/WebPages/cell11.jsp">
					        				<span class="glyphicon glyphicon-circle-arrow-right"></span>
					        			</a>
						        		
						        	<% } 
						        	
						        	else{ %>
						        		<div style="cursor: default;background-image: none;opacity: 0.65;filter: alpha(opacity=65);-webkit-box-shadow: none;-moz-box-shadow: none;color: #333;">
							        		<a href = "../EnterpriseArchTool/WebPages/cell11.jsp">
							        			<span class="glyphicon glyphicon-circle-arrow-right"></span>
							        		</a>
					        			</div>
						        	<%} %>
        					</div>
						</td>
						<td>
							TIMING DEFINITION:<br/>
							<div id = "forward_arrow" style = "margin-left: 10px;margin-top:0px;">
				        		<% 
									String c55 = session.getAttribute("roleName").toString();
									
									if(c55.equalsIgnoreCase("Programmer")) {%>
									
						        		<a href = "../EnterpriseArchTool/WebPages/cell11.jsp">
					        				<span class="glyphicon glyphicon-circle-arrow-right"></span>
					        			</a>
						        		
						        	<% } 
						        	
						        	else{ %>
						        		<div style="cursor: default;background-image: none;opacity: 0.65;filter: alpha(opacity=65);-webkit-box-shadow: none;-moz-box-shadow: none;color: #333;">
							        		<a href = "../EnterpriseArchTool/WebPages/cell11.jsp">
							        			<span class="glyphicon glyphicon-circle-arrow-right"></span>
							        		</a>
					        			</div>
						        	<%} %>
        					</div>
						</td>
						<td>
							DEPLOYMENT FILES:<br/>
							<div id = "forward_arrow" style = "margin-left: 10px;margin-top:0px;">
				        		<% 
									String c56 = session.getAttribute("roleName").toString();
									
									if(c56.equalsIgnoreCase("Programmer")) {%>
									
						        		<a href = "../EnterpriseArchTool/WebPages/cell11.jsp">
					        				<span class="glyphicon glyphicon-circle-arrow-right"></span>
					        			</a>
						        		
						        	<% } 
						        	
						        	else{ %>
						        		<div style="cursor: default;background-image: none;opacity: 0.65;filter: alpha(opacity=65);-webkit-box-shadow: none;-moz-box-shadow: none;color: #333;">
							        		<a href = "../EnterpriseArchTool/WebPages/cell11.jsp">
							        			<span class="glyphicon glyphicon-circle-arrow-right"></span>
							        		</a>
					        			</div>
						        	<%} %>
        					</div>
						</td>
					</tr>
					
					<tr>
						<th>USER</th>
						<td>
							POST DEPLOYMENT:<br/>
							<div id = "forward_arrow" style = "margin-left: 10px;margin-top:0px;">
				        		<% 
									String c61 = session.getAttribute("roleName").toString();
									
									if(c61.equalsIgnoreCase("User")) {%>
									
						        		<a href = "../EnterpriseArchTool/WebPages/cell11.jsp">
					        				<span class="glyphicon glyphicon-circle-arrow-right"></span>
					        			</a>
						        		
						        	<% } 
						        	
						        	else{ %>
						        		<div style="cursor: default;background-image: none;opacity: 0.65;filter: alpha(opacity=65);-webkit-box-shadow: none;-moz-box-shadow: none;color: #333;">
							        		<a href = "../EnterpriseArchTool/WebPages/cell11.jsp">
							        			<span class="glyphicon glyphicon-circle-arrow-right"></span>
							        		</a>
					        			</div>
						        	<%} %>
        					</div>
						</td>
						<td>
							POST DEPLOYMENT:<br/>
							<div id = "forward_arrow" style = "margin-left: 10px;margin-top:0px;">
				        		<% 
									String c62 = session.getAttribute("roleName").toString();
									
									if(c62.equalsIgnoreCase("User")) {%>
									
						        		<a href = "../EnterpriseArchTool/WebPages/cell11.jsp">
					        				<span class="glyphicon glyphicon-circle-arrow-right"></span>
					        			</a>
						        		
						        	<% } 
						        	
						        	else{ %>
								        <div style="cursor: default;background-image: none;opacity: 0.65;filter: alpha(opacity=65);-webkit-box-shadow: none;-moz-box-shadow: none;color: #333;">
							        		<a href = "../EnterpriseArchTool/WebPages/cell11.jsp">
							        			<span class="glyphicon glyphicon-circle-arrow-right"></span>
							        		</a>
						        		</div>
						        	<%} %>
        					</div>
						</td>
						<td>
							POST DEPLOYMENT:<br/>
							<div id = "forward_arrow" style = "margin-left: 10px;margin-top:0px;">
				        		<% 
									String c63 = session.getAttribute("roleName").toString();
									
									if(c63.equalsIgnoreCase("User")) {%>
									
						        		<a href = "../EnterpriseArchTool/WebPages/cell11.jsp">
					        				<span class="glyphicon glyphicon-circle-arrow-right"></span>
					        			</a>
						        		
						        	<% } 
						        	
						        	else{ %>
						        		<div style="cursor: default;background-image: none;opacity: 0.65;filter: alpha(opacity=65);-webkit-box-shadow: none;-moz-box-shadow: none;color: #333;">
							        		<a href = "../EnterpriseArchTool/WebPages/cell11.jsp">
							        			<span class="glyphicon glyphicon-circle-arrow-right"></span>
							        		</a>
					        			</div>
						        	<%} %>
        					</div>
						</td>
						<td>
							POST DEPLOYMENT:<br/>
							<div id = "forward_arrow" style = "margin-left: 10px;margin-top:0px;">
				        		<% 
									String c64 = session.getAttribute("roleName").toString();
									
									if(c64.equalsIgnoreCase("User")) {%>
									
						        		<a href = "../EnterpriseArchTool/WebPages/cell11.jsp">
					        				<span class="glyphicon glyphicon-circle-arrow-right"></span>
					        			</a>
						        		
						        	<% } 
						        	
						        	else{ %>
						        		<div style="cursor: default;background-image: none;opacity: 0.65;filter: alpha(opacity=65);-webkit-box-shadow: none;-moz-box-shadow: none;color: #333;">
							        		<a href = "../EnterpriseArchTool/WebPages/cell11.jsp">
							        			<span class="glyphicon glyphicon-circle-arrow-right"></span>
							        		</a>
					        			</div>
						        	<%} %>
        					</div>
						</td>
						<td>
							POST DEPLOYMENT:<br/>
							<div id = "forward_arrow" style = "margin-left: 10px;margin-top:0px;">
				        		<% 
									String c65 = session.getAttribute("roleName").toString();
									
									if(c65.equalsIgnoreCase("User")) {%>
									
						        		<a href = "../EnterpriseArchTool/WebPages/cell11.jsp">
					        				<span class="glyphicon glyphicon-circle-arrow-right"></span>
					        			</a>
						        		
						        	<% } 
						        	
						        	else{ %>
						        		<div style="cursor: default;background-image: none;opacity: 0.65;filter: alpha(opacity=65);-webkit-box-shadow: none;-moz-box-shadow: none;color: #333;">
							        		<a href = "../EnterpriseArchTool/WebPages/cell11.jsp">
							        			<span class="glyphicon glyphicon-circle-arrow-right"></span>
							        		</a>
					        			</div>
						        	<%} %>
        					</div>
						</td>
						<td>
							POST DEPLOYMENT:<br/>
							<div id = "forward_arrow" style = "margin-left: 10px;margin-top:0px;">
				        		<% 
									String c66 = session.getAttribute("roleName").toString();
									
									if(c66.equalsIgnoreCase("User")) {%>
									
						        		<a href = "../EnterpriseArchTool/WebPages/cell11.jsp">
					        				<span class="glyphicon glyphicon-circle-arrow-right"></span>
					        			</a>
						        		
						        	<% } 
						        	
						        	else{ %>
						        		<div style="cursor: default;background-image: none;opacity: 0.65;filter: alpha(opacity=65);-webkit-box-shadow: none;-moz-box-shadow: none;color: #333;">
							        		<a href = "../EnterpriseArchTool/WebPages/cell11.jsp">
							        			<span class="glyphicon glyphicon-circle-arrow-right"></span>
							        		</a>
					        			</div>
						        	<%} %>
        					</div>
						</td>
					</tr>
			
			    </tbody>
			  </table>
		    </div>
		    </div>
		</form>
	