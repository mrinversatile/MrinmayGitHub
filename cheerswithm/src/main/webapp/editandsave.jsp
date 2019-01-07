<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>editAndsave</title>
<!--Oswald Font -->
<link href='http://fonts.googleapis.com/css?family=Oswald:400,300,700'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet" type="text/css" href="css/tooltipster.css" />
<!-- Font Awesome -->
<link href="css/font-awesome.min.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet" media="screen">
<link href="css/responsive.css" rel="stylesheet" media="screen">
<link href="css/viewpost.css" rel="stylesheet" media="screen">



<link href='http://fonts.googleapis.com/css?family=Lobster+Two'
	rel='stylesheet' type='text/css'>
<link href="css/comment.min.css" rel="stylesheet">
<link href='http://fonts.googleapis.com/css?family=Pacifico'
	rel='stylesheet' type='text/css'>
</head>
<body>
<%
		HttpSession session3 = request.getSession();
		String post_id = session3.getAttribute("id").toString();
		String post = "";
		if (session3.getAttribute("post") != null) {
			post = session3.getAttribute("post").toString();
		}
		String sessionuser = session3.getAttribute("name").toString();
		String author = session3.getAttribute("author").toString();
		String title  = session3.getAttribute("title").toString();
		String created_at =  session3.getAttribute("created_at").toString();
		String category =  session3.getAttribute("category").toString();
	%>
<div id="header">
	<%@include file="blogHeader.jsp"%>
</div>
<div id="wrapper">
<form id="form1" 
				action="SavePostServlet?pid=<%out.println(post_id);%>&username=<%out.println(sessionuser);%>" method="post" >
<!-- 				<fieldset style="width:1270px ;  height:300px;" > -->

					<ol>
						<li>
							<p id="title1">
								<%
										
										out.println(title);
									%>
							</p>
							<p style="color: blue; font-family: cursive; font-weight: bold;">
								by
								<%
									out.println(author);
								%>
								, Created on
								<% 
									out.println(created_at);
								%>
								, Category
								<% 
									out.println(category);
								%>
							</p>
							<br>
						</li>
						<li>
<!-- 								<p id="myPost"> -->
									<textarea name="posttext" rows="30" cols="250"><%out.println(post);%></textarea>
<!-- 								</p> -->
								<br><br><br><br>
								
						</li>
					</ol>
	

		
					<button id="submit-data"  type="submit" >Save Changes</button>

<!-- 				</fieldset> -->
			</form>
			</div>
<footer class="site-footer2">
  <%@include file="blogFooter.jsp"%>
</footer>
</body>
</html>