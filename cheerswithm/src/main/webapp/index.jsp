<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.util.*, javax.servlet.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html >
<html>

<head>
<title>Blog It !!</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!--Oswald Font -->
<link href='http://fonts.googleapis.com/css?family=Oswald:400,300,700'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet" type="text/css" href="css/tooltipster.css" />
<!-- Font Awesome -->
<link href="css/font-awesome.min.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet" media="screen">
<link href="css/responsive.css" rel="stylesheet" media="screen">
<link href="css/view-post-table.css" rel="stylesheet" media="screen">
<script type="text/javascript" src="js/paging.js"></script>

</head>
<body>
	<sql:setDataSource var="myDS" driver="com.mysql.jdbc.Driver"
		url="jdbc:mysql://127.10.140.130:3306/blog_development"
		user="adminTu7eE3C" password="6l-a3zAc3w5m" />

	<sql:query var="listPosts" dataSource="${myDS}">
		Select id,name,title,content,created_at,updated_at,category from posts order by updated_at desc;
    </sql:query>

	<div id="header">
		<%@include file="blogHeader.jsp"%>
	</div>
	<div class="content_title">

		<img src="images/latest_post_bg.png" alt="X" />

		<h2>Latest Blog Post</h2>

	</div>


	<div id="wrapper">
		<table id="blog">
			<thead>
				<tr>
					<th><span>Title</span></th>
					<th><span>Content</span></th>
					<th><span>Created at</span></th>
					<th><span>Updated at</span></th>
					<th><span>Author</span></th>
					<th><span>Category</span></th>
					<th><span>Comments</span></th>
					<th><span></span></th>
				</tr>
			</thead>

			<c:forEach var="post" items="${listPosts.rows}">

				<sql:query var="noOfComments" dataSource="${myDS}">
        									Select count(*) as count from comments where post_id=${post.id};
    									</sql:query>
				<c:forEach var="comments" items="${noOfComments.rows}">
					<c:set var="content" value="${post.content}" />
					<c:set var="title" value="${post.title}" />
					<tbody>
						<tr>
							<td><c:out value="${post.title}" /></td>
							<td><c:out value="${fn:substring(content, 0, 10)}" /></td>
							<td><c:out value="${post.created_at}" /></td>
							<td><c:out value="${post.updated_at}" /></td>
							<td><c:out value="${post.name}" /></td>
							<td><c:out value="${post.category}" /></td>
							<td><c:out value="${comments.count}" /></td>
							<td><a
								href="<%=request.getContextPath()%>/ViewPostServlet?id=<c:out value="${post.id}" />">
									<span style="color: blue" style="font-family: sans-serif;">
										Read the full article</span>
							</a></td>

						</tr>

					</tbody>
				</c:forEach>
			</c:forEach>
		</table>

		<div id="pageNavPosition"></div>

	</div>

	<footer class="site-footer2">
		<%@include file="blogFooter.jsp"%>
	</footer>
	<script>
  function preventBack(){window.history.forward();}
  setTimeout("preventBack()", 0);
  window.onunload=function(){null};
</script>
	<script type="text/javascript">
        var pager = new Pager('blog', 6); 
        pager.init(); 
        pager.showPageNav('pager', 'pageNavPosition'); 
        pager.showPage(1);
    </script>
	<script type="text/javascript"
		src="js/jquery-3.0.0.min.js"></script>
	<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-79825890-1', 'auto');
  ga('send', 'pageview');

</script>
</body>
</html>