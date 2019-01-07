<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>password change</title>
<!--Oswald Font -->
<link href='http://fonts.googleapis.com/css?family=Oswald:400,300,700'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet" type="text/css" href="css/tooltipster.css" />
<!-- Font Awesome -->
<link href="css/font-awesome.min.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet" media="screen">
<link href="css/viewpost.css" rel="stylesheet" media="screen">
</head>
<body>
<div id="header">
	<%@include file="blogHeader.jsp"%>
</div>

<div>
<form action="PasswordChangeServlet" method="post">
		<fieldset style="width: 300px">
			<legend> <b>Password Change Request</b> </legend>
			<table>
				<tr>
					<td>User ID</td>
					<td><input type="text" name="username" required="required" /></td>
				</tr>
				<tr>
					<td>Old password</td>
					<td><input type="password" name="userpass" required="required" /></td>
				</tr>
				<tr>
					<td>New password</td>
					<td><input type="password" name="newuserpass" required="required" /></td>
				</tr>
				<tr>
					<td>
			
				<input type="submit" value="Change Now" /> 
		
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