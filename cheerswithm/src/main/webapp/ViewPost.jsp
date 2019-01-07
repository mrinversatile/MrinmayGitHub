<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.util.*, javax.servlet.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<!DOCTYPE html>
<html>
<head>
<title>view post!!</title>
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
<link href="css/viewpost.css" rel="stylesheet" media="screen">
<link href='http://fonts.googleapis.com/css?family=Lobster+Two'
	rel='stylesheet' type='text/css'>
<link href="css/comment.min.css" rel="stylesheet">
<link href='http://fonts.googleapis.com/css?family=Pacifico'
	rel='stylesheet' type='text/css'>

<!-- Linkify -->
<script src="js/jquery-3.0.0.min.js"></script>
<script src="js/linkify/linkify.js"></script>
<script src="js/linkify/linkify-string.js"></script>
<script src="js/linkify/linkify-jquery.js"></script>	

	
<script type="text/javascript">
	window.history.forward();
	function noBack() {
		window.history.forward();
	}
</script>

<style>
.container {
  margin: 5px auto;
  max-width: 220px;
}
</style>
</head>
<body onload="init();" onpageshow="if (event.persisted) noBack();"
	onunload="">
	<sql:setDataSource var="myDS" driver="com.mysql.jdbc.Driver"
		url="jdbc:mysql://127.10.140.130:3306/blog_development" user="adminTu7eE3C"
		password="6l-a3zAc3w5m" />
	<div id="header">
		<%@include file="blogHeader.jsp"%>
	</div>

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
	<form>
		<input type="hidden" id="value1" value="<%out.println(sessionuser);%>">
		<input type="hidden" id="value2" value="<%out.println(author);%>">
	</form>

	<form
		action="DeletePostServlet?pid=<%out.println(post_id);%>&username=<%out.println(sessionuser);%>"
		method="post">
			<p id="title1"><%out.println(title);%></p>
			<p style="color: blue; font-family: cursive; font-weight: bold;">
				<b>by</b>
				<%
									out.println(author);
								%>
				<b>, Created on</b>
				<% 
									out.println(created_at);
								%>
				<b>, Category</b>
				<% 
									out.println(category);
								%>
			</p>

			<p id="myPost">		 
			<%out.println(post);%>
			</p>
			
			<br>

 			<button id="submit-data" type="submit" disabled>Delete Post</button> 
			<button id="myButton" type="button" onclick="validate();">Edit
				Post</button>
	</form>
	
	<br>
	<iframe src="http://www.facebook.com/plugins/like.php?href=http%3A%2F%2Fwww.mrinmay.com&amp;layout=standard&amp;show_faces=true&amp;action=like&amp;colorscheme=light&amp" style="overflow:hidden;width:16%;height:20px; border:0px ; "><a id="plugin-fb" href="http://wordpress-themes.org" class="facebook-get-code">wordpress themes</a></iframe>

<br>
<sql:query var="listPosts" dataSource="${myDS}">
		Select postlike,postdislike from posts where id=<%out.println(post_id);%>;
    </sql:query>

<c:forEach var="post" items="${listPosts.rows}">    
<!-- LikeBtn.com BEGIN -->

<input type="image" id="submit" src="images/like.png" width="25" height="25" value="${post.postlike}"/>
<div id="likecount">${post.postlike}</div>
<input type="image" id="submit2"  src="images/dislike.png" width= "25" height="25" value="${post.postdislike}"/>
<div id="dislikecount">${post.postdislike}</div>

<!-- LikeBtn.com END -->
</c:forEach>
	<img id="postimg" src="images/dash.png" alt="X" />
	<h3 style="color: green;">COMMENTS</h3>
	<img id="postimg" src="images/dash.png" alt="X" />
	<div id="comments">


		<sql:query var="listComments" dataSource="${myDS}">
        Select * from comments where post_id=<%
					out.println(post_id);
				%> order by updated_at desc;
    </sql:query>
		<c:forEach var="comment" items="${listComments.rows}">
			<div id="w">
				<div id="container">
					<ul id="comments">
						<li class="cmmnt">
							<div class="cmmnt-content">
								<header>
									<h3 style="color: #8904B1;">
										<c:out value="${comment.commenter}" />
									</h3>
									- <span class="pubdate">posted on <c:out
											value="${comment.created_at}" /></span>
								</header>
								<p
									style="color: #FF335E; font-family: Comic Sans, Comic Sans MS, cursive; background-color: #9BF3EF;">
									<c:out value="${comment.body}" />
								</p>
							</div>
						</li>
					</ul>
				</div>
			</div>
			<br>
		</c:forEach>
	</div>
	<img id="postimg" src="images/dash.png" alt="X" />
	<h1>Leave a Comment</h1>
	<img id="postimg" src="images/dash.png" alt="X" />
	<form
		action="CreateCommentServlet?pid=<%out.println(post_id);%>&name=<%out.println(sessionuser);%>"
		method="post">
		<b>Comment</b><br>
		<textarea name="comments" id="comments"
			style="width: 60%; height: 90px; padding: 2%; font-size: 1.2em;" placeholder="Hey...say something!" 
			required></textarea>
		<br> <input type="submit" value="Post Comment">
	</form>

	<footer class="site-footer">
		<%@include file="blogFooter.jsp"%>
	</footer>
	<script>
function validate() {
	var su = document.getElementById("value1").value;
	var a = document.getElementById("value2").value;
	 if ( su === a) {
		window.location.href="editandsave.jsp";
	} else{
		 alert('Invalid User!! Try editing your own!!');
		}
}
</script>
	<script>
function deletepost() {
	var su = document.getElementById("value1").value;
	var a = document.getElementById("value2").value;
	 if ( su === a) {
		 document.getElementById("submit-data").disabled = false; 
	} 
}
</script>
	<script>
function init() {
	deletepost();
	noBack() ;
}
</script>
<script>
            $(document).ready(function() {                        
                $('#submit').click(function(event) {  
                    var likes=$('#submit').val();
                 $.post('PostLikeServlet',{like:likes},function(responseText) { 
                                                    $('#likecount').text(responseText);         
     
                    });
                });
            });
</script>
 <script>
$(document).ready(function() {                        
	                $('#submit2').click(function(event) {  
	                    var dislikes=$('#submit2').val();
	                 $.post('PostDislikeServlet',{dislike:dislikes},function(responseText) { 
	                               $('#dislikecount').text(responseText);   
	                    });
	                });
	            });
        </script> 
<!-- this script is for pictures -->
<script>
var photoRegex = /(\b(https?|ftp|file):\/\/[-A-Z0-9+&@#\/%?=~_|!:,.;]*[-A-Z0-9+&@#\/%=~_|]).(?:jpg|gif|png)/ig;
var url_photo= $('#myPost').html().match(photoRegex);
$.each( url_photo, function(i,value){
    var convert_photo='<img src="'+url_photo[i]+'" width="450" height="450" alt="Nba">';
    $('#myPost').append(convert_photo);
});
</script>
<!-- this script is for you tube videos only -->
<script>
var youtubePattern = /https?:\/\/(?:[0-9A-Z-]+\.)?(?:youtu\.be\/|youtube\.com(?:\/embed\/|\/v\/|\/watch\?v=|\/ytscreeningroom\?v=|\/feeds\/api\/videos\/|\/user\S*[^\w\-\s]|\S*[^\w\-\s]))([\w\-]{11})[?=&+%\w-]*/ig;

var url_video= $('#myPost').html().match(youtubePattern);
//document.getElementById("demo").innerHTML =url_video.length;

// Extract the YouTube ID 
function linkifyYouTubeURLs(text) {
    return text.replace(youtubePattern, '$1');
}

for(i=0; i < url_video.length; i++) {
//document.getElementById("demo1").innerHTML =linkifyYouTubeURLs(url_video[i]);
//document.getElementById("demo").innerHTML =linkifyYouTubeURLs(url_video[1]);
var convert_video='<iframe src="http://www.youtube.com/embed/'+linkifyYouTubeURLs(url_video[i])+'?autoplay=0" width="420" height="315"></iframe>';
        $('#myPost').append(convert_video);
}

</script>

 <script type="text/javascript">
$('p').linkify();
$('#sidebar').linkify({
    target: "_blank"
});
</script>  

<!-- this also create hyperlink from text but linkify library is tested widely. -->  
<!-- <script>
    // Get each div
    $('#thispost').each(function(){
        // Get the content
        var str = $(this).html();
        // Set the regex string
        var regex = /(https?:\/\/([-\w\.]+)+(:\d+)?(\/([\w\/_\.]*(\?\S+)?)?)?)/ig
        // Replace plain text links by hyperlinks
        var replaced_text = str.replace(regex, "<a href='$1' target='_blank'>$1</a>");
        // Echo link
        $(this).html(replaced_text);
    });
</script> -->

</body>
</html>