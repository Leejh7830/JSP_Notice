<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width", inital-scale="1">
<link rel="stylesheet" href="css/bootstrap.css">
<title>게시판</title>

</head>
<body>
	<%
		String userID = null;
		if (session.getAttribute("userID") != null) {
			userID = (String) session.getAttribute("userID");
		}
	%>
	<nav class="navbar navbar-default">
        <div class="navbar-header">
             <button type="button" class="navbar-toggle collapsed"
	             data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
	             aria-expanded="false">
	             <span class="icon-bar"></span>
	             <span class="icon-bar"></span>
	             <span class="icon-bar"></span>
             </button>
             <a class="navbar-brand" href="#">
      			<img src="images/book_icon.png" alt="" width="40" height="30">
    		</a>
             <a class="navbar-brand" href="main.jsp">대구도서관</a>
        </div>
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
        	<ul class="nav navbar-nav">
        		<li class="active"><a href="main.jsp">메인</a></li>
        		<li><a href="bbs.jsp">게시판</a></li>
        		<li><a href="search.jsp">제목검색</a>
        	</ul>
        	<%
        		if (userID == null) {
        	%>
        	<ul class="nav navbar-nav navbar-right">
        		<li class="dropdown">
        			<a href="#" class="dropdown-toggle"
        				data-toggle="dropdown" role="button" aria-haspopup="true"
        				aria-expanded="false">접속하기<span class="caret"></span></a>
        			<ul class="dropdown-menu">
        				<li><a href="login.jsp">로그인</a></li>
        				<li><a href="join.jsp">회원가입</a></li>
        			</ul>
        		</li>
        	</ul>	
        	<%
        		} else {
        	%>
        	<ul class="nav navbar-nav navbar-right">
        		<li class="dropdown">
        			<a href="#" class="dropdown-toggle"
        				data-toggle="dropdown" role="button" aria-haspopup="true"
        				aria-expanded="false">회원정보<span class="caret"></span></a>
        			<ul class="dropdown-menu">
        				<li><a href="logoutAction.jsp">로그아웃</a></li>
        			</ul>
        		</li>
        	</ul>	
        	<%
        		}
        	%>
        </div>
	</nav>
	<div>
		<a class="main_img" href="#">
   			<img src="images/main_img1.png" alt="" width="620" height="600">
   			<img src="images/main_img2.png" alt="" width="620" height="600">
   			<img src="images/main_img3.png" alt="" width="620" height="600">
   		</a>
	</div>
	<div>
		<a class="main_bottom" href="#">
   			<img src="images/main_img4.png" alt="" width="930" height="200">
   			<img src="images/main_img5.png" alt="" width="930" height="200">
		</a>
	</div>
   	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>