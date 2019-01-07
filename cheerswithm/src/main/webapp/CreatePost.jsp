<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>New post</title>
<!--Oswald Font -->
<link href='http://fonts.googleapis.com/css?family=Oswald:400,300,700'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet" type="text/css" href="css/tooltipster.css" />
<!-- Font Awesome -->
<link href="css/font-awesome.min.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet" media="screen">
<link href="css/responsive.css" rel="stylesheet" media="screen">
<link href="css/viewpost.css" rel="stylesheet" media="screen">
<SCRIPT type="text/javascript">
	window.history.forward();
	function noBack() { window.history.forward(); }
</SCRIPT>
</head>
<body onload="noBack();" 
	onpageshow="if (event.persisted) noBack();" onunload="">
<div id="header">
	<%@include file="blogHeader.jsp"%>
</div>
<%
		HttpSession session3 = request.getSession();
		String sessionuser=session3.getAttribute("name").toString();
	%>
<div class="wrapper">
<div id="postcreation">
<img id="postimg" src="images/dash.png" alt="X" />
		<h1>Create a New Post</h1>
		<img id="postimg" src="images/dash.png" alt="X" />
		<form action="CreatePostServlet?name=<%out.println(sessionuser);%>" method="post">
			Title<br><input type='text' name='title' id='title' size="90" maxlength="120" placeholder="Only 120 letters" required/><br><br>
			Category<br><br>
			<select name="category">
			  <option value="Technology">Technology</option>
			  <option value="Science">Science</option>
			  <option value="Sports">Sports</option>
			  <option value="Politics">Politics</option>
			  <option value="Comedy">Comedy</option>
			  <option value="Defence">Defence</option>
			  <option value="Television">Television</option>
			  <option value="Automobiles">Automobiles</option>
			  <option value="Gyaan">Gyaan</option>
			  <option value="Gadgets">Gadgets</option>
			  <option value="Books">Books</option>
			  <option value="Movies">Movies</option>
			  <option value="Programming">Programming</option>
			  <option value="LatestNews">LatestNews</option>
			  <option value="Offers">Offers</option>
			  <option value="Others">Others</option>
			</select><br><br>
			Post<br>
			<textarea name="post" id="post" style="width: 60%; height: 90px; padding: 2%; font-size: 1.2em; font-color:black ;" placeholder="Hey...Let your fingers bang the keyboard!!" required></textarea>
			<br> <input type="submit" value="Create Post">
		</form>

</div>
</div>
<footer class="site-footer">
  <%@include file="blogFooter.jsp"%>
</footer>
</body>
</html>