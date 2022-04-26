<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="user.UserDAO" %>
<%@ page import="java.io.PrintWriter" %>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="user" class="user.User" scope="page" />
<jsp:setProperty name="user" property="userID" />
<jsp:setProperty name="user" property="userPassword" />
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>대구도서관</title>
</head>
<body>
 	<%
 		// 재로그인 방지
 		String userID = null;
	 	if (session.getAttribute("userID") != null) {
	 		userID = (String) session.getAttribute("userID");
	 	}
	 	if (userID != null) {
	 		PrintWriter script = response.getWriter();
	 		script.println("<script>");
 			script.println("alert('이미 로그인되어 있습니다.')");
 			script.println("location.href ='main.jsp'");
 			script.println("</script>");
	 	}
	 	
 		UserDAO userDAO = new UserDAO();
 		int result = userDAO.login(user.getUserID(), user.getUserPassword());
 		if (result == 1) {
 			session.setAttribute("userID", user.getUserID());
 			PrintWriter script = response.getWriter();
 			script.println("<script>");
 			script.println("location.href = 'main.jsp'");
 			script.println("</script>");
 		}
 		else if (result == 0) {
 			PrintWriter script = response.getWriter();
 			script.println("<script>");
 			script.println("alert('비밀번호가 틀렸습니다.')");
 			script.println("history.back()");
 			script.println("</script>");
 		}
 		else if (result == -1) {
 			PrintWriter script = response.getWriter();
 			script.println("<script>");
 			script.println("alert('아이디가 존재하지 않습니다.')");
 			script.println("history.back()");
 			script.println("</script>");
 		}
 		else if (result == -2) {
 			PrintWriter script = response.getWriter();
 			script.println("<script>");
 			script.println("alert('데이터베이스 오류 발생.')");
 			script.println("history.back()");
 			script.println("</script>");
 		}
 	%>
</body>
</html>