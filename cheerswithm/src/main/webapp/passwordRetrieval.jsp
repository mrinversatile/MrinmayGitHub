<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Password Recovery!!</title>
<!--Oswald Font -->
<link href='http://fonts.googleapis.com/css?family=Oswald:400,300,700'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet" type="text/css" href="css/tooltipster.css" />
<!-- Font Awesome -->
<link href="css/font-awesome.min.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet" media="screen">
<link href="css/viewpost.css" rel="stylesheet" media="screen">
<link rel="shortcut icon" href="assets/images/ico/favicon.png">
<link rel="apple-touch-icon-precomposed" sizes="144x144"
	href="assets/images/ico/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114"
	href="assets/images/ico/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="assets/images/ico/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed"
	href="assets/images/ico/apple-touch-icon-57-precomposed.png">
</head>
<body>
<section id="header_area">
			<div class="wrap header">
				<div class="clearfix header_top">
					<div class="clearfix logo floatleft">
						<a href="index.jsp"><h1><span>Blog</span> It!!</h1></a>
					</div>

				</div> 
									</div>
									
									
								</section>
<div>
<form action="PasswordServlet" method="post">
		<fieldset style="width: 300px">
			<legend> Password Recovery </legend>
			<table>
				<tr>
					<td>User ID</td>
					<td><input type="text" name="username" required="required" /></td>
				</tr>
				<tr>
					<td>Email Id</td>
					<td><input type="text" name="useremail" required="required" /></td>
				</tr>
				<tr>
					<td>
			
				<input type="submit" value=" Recover" /> 
		
                   </td>	
				</tr>
			</table>
		</fieldset>
	</form>
	
</div>
<footer class="site-footer">
  <%@include file="blogFooter.jsp"%>
</footer>
</body>
</html>