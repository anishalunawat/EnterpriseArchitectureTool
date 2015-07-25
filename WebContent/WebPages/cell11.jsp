<%@ include file="master.jsp" %>
<html>
<head>
 <link rel="stylesheet" href="../css/sidebar-wrapper.css">
 <script> 
 $(function(){
 $('#dropdown').change(function() 
{
 	if($(this).val() == "one")
		 { $('#upload').hide();
		   $('#up').hide();
		   $('#save').hide();
		 }
 	if($(this).val() == "two")
		 { $('#upload').show();
		   $('#up').show();
		   $('#save').show();
		 }
 	if($(this).val() == "three")
	 	{ $('#upload').show();
	 	  $('#up').show();
		  $('#save').show();
	 	}
 	if($(this).val() == "four")
	 	{ $('#upload').show();
	 	  $('#up').show();
		  $('#save').show();
	 	}
 
})
})
 </script>
 </head>
 <body>
<div id = "rightpane" style="background:#F0F0F0;">
	<div style="position:fixed;margin-top:20px">
		 <div class="form-group" style = "width:300px;margin-left:320px;text-align:center">
						<label for="roles">ARTIFACTS:</label>
						<a href="#upload"> </a>
						<select class="form-control" id="dropdown">
							<option value="one" selected>----Select One Document -----</option>
							<option value="two">Text Document</option>
							<option value="three">UML Diagram</option>
							<option value="four">Tree</option>
						</select>
						<input type = "hidden" id = "dval" name = "dval" value = "getValue();"/>
		</div>
	</div>
		<div id="upload">
		<form action="UploadDownloadFileServlet" method="post" enctype="multipart/form-data">
			<div id="icon-pane">
					<button id="btn1" type="button" class="btn btn-default btn-sm margin-left-1">
     				 <span  style="font-size:2em; position:relative" class="glyphicon glyphicon-file"></span>
     	   		 	</button>
     	   		 	<a href="http://localhost:8080/UploadDownloadFileServlet">
     	   		 	<button id="btn2" type="button" class="btn btn-default btn-sm margin-left-1">  
     	   		 	<span  style="font-size:2em; position:relative" class="glyphicon glyphicon-upload"></span> </button></a>  			
     				<button id="btn3" type="button" class="btn btn-default btn-sm margin-left-1">
     				 <span  style="font-size:2em; position:relative" class="glyphicon glyphicon-trash"></span>
					</button>
			</div>
			<br><br><br>
		    <div class="col-md-3"></div> Select file to upload: <input type = "file" name = "fileName">
		       <br><br><br><br><br><br>
			<div class="col-md-2"></div><input type="submit" class="btn btn-primary" value="Upload">

		</form>
		</div>
		<div id="save">
			<button type="button" class="btn btn-primary">Save</button>
		</div>
</div>
</body>
</html>
