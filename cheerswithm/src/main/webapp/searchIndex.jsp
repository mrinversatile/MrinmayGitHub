<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.util.*, javax.servlet.*,com.blog.model.Posts"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
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
<link href="css/view-post-table.css" rel="stylesheet"
	media="screen">
<script type="text/javascript" src="js/paging.js"></script>

</head>
<body>
	<div id="header">
		<%@include file="blogHeader.jsp"%>
	</div>
	<div class="content_title">

		<img src="images/latest_post_bg.png" alt="X" />

		<h2>Latest Blog Post</h2>

	</div>


	<section id="content_area">
		<div class="clearfix content">
			<section id="table">
				<div class="wrapper">
					<table id="blog" >
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
<%
        ArrayList<Posts> posts=(ArrayList)request.getAttribute("postlist");
        Iterator<Posts> it=posts.iterator();
        while(it.hasNext())
        {
            Posts po=(Posts)it.next();
 %>
								<tbody>
									<tr>
										<td><%=po.getTitle()%></td>
										<td><%=po.getContent()%></td>
										<td><%=po.getCreated_at()%></td>
										<td><%=po.getUpdated_at()%></td>
										<td><%=po.getName()%></td>
										<td><%=po.getCategory()%></td>
										<td><%=po.getCount()%></td>
										<td><a
											href="<%=request.getContextPath()%>/ViewPostServlet?id=<%=po.getId()%>">
												<span style="color: blue" style="font-family: sans-serif;">
													Read the full article</span>
										</a></td>

									</tr>

								</tbody>
								<%
            
            }
   									 %>
					</table>
				</div>
			</section>

			<div id="pageNavPosition"></div>
		</div>
	</section>

	<footer class="site-footer">
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
		src="http://code.jquery.com/jquery-1.7.0.min.js"></script>
</body>
</html>