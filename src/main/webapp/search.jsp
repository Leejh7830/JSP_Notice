<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width", initial-scale="1">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/custom.css">
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="js/bootstrap.js"></script>

<title>대구도서관</title>
</head>
<body>
	<%
		String userID = null;
		if (session.getAttribute("userID") != null) {
			userID = (String) session.getAttribute("userID");
		}
		
		int pageNumber = 1;
		
		if (request.getParameter("pageNumber") != null) {
			pageNumber = Integer.parseInt(request.getParameter("pageNumber"));
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
        		<li><a href="main.jsp">메인</a></li>
        		<li><a href="bbs.jsp">게시판</a></li>
        		<li class="active"><a href="search.jsp">제목검색</a>
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
	
	<div class="container">
		<div class="jumbotron">
			<div class="container">
				<h2>책 제목으로 검색</h2>
				<form class="form-inline">
					<div class="form-group-lg">
					    <input type="text" class="form-control" id="InputTitle" placeholder="제목을 입력하세요." style="width: 500px;">
					    <input type="submit" class="btn btn-primary form-control" value="검색" style="width: 70px;">
				  	</div>
			  	</form>
			</div>
		</div>
	</div>
</body>
</html>