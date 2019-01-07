<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Application</title>
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
	<form action="deleteServlet" method="post">
		<fieldset style="width: 300px">
			<legend> <b>Delete User</b> </legend>
			<table>
				<tr>
					<td>User ID</td>
					<td><input type="text" name="usernamedelete" required="required" /></td>
				</tr>
				<tr>
					<td>Password</td>
					<td><input type="text" name="userpassdelete" required="required" /></td>
				</tr>
				<tr>
					<td>Email</td>
					<td><input type="text" name="useremail" required="required" /></td>
				</tr>
				<tr>
					<td><input type="submit" value="Delete" /></td>
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