<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.io.*,java.util.*, javax.servlet.*"%>
<!DOCTYPE >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
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
 					<div class="clearfix search floatright">
						<form action="BlogSearchEngineServlet" method="get">
							<input name ="search" type="text" placeholder="Search the blog"/>
							<input type="submit" />
						</form>
					</div> 
					<div class="welcome " >
					<h4>Welcome,   
					<%if(session.getAttribute("name")!=null) { 
						String n=session.getAttribute("name").toString();
						out.println(n);}else out.println("Guest"); %></h4>
					<a href="logoutServlet" style="color:white;">Logout</a>
					</div>
				</div> 
				<div class="header_bottom">
					<nav>
						<ul id="nav">
							<li><a href="index.jsp">Home</a></li>
													<li id="dropdown"><a href="index.jsp">Blogging	</a>
														<ul>
															<li><a href="CreatePost.jsp">Create new post</a></li>
															<!-- <li><a href="">Comment on a post</a></li> -->
														</ul>
													</li>
													<li id="dropdown"><a href="index.jsp">User settings	</a>
														<ul>
															<li><a href="passwordChange.jsp">Change Password</a></li>
															<li><a href="delete.jsp">Delete User</a></li>
														</ul>
													</li>
												</ul>
											</nav>
										</div>
									</div>
									
									
								</section>
</body>
</html>