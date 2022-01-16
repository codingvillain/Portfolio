<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	
</style>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
</head>
<body>
	<h1>홈페이지 메인화면</h1>

	<c:if test="${loginUser == null}">
		<a href="/portfolio/login/loginPage">Login</a>&nbsp;&nbsp;&nbsp;
		<a href="/portfolio/login/joinPage">Join</a>&nbsp;&nbsp;&nbsp;
		<h1><a href="/portfolio/board/selectBoardList">Board List</a></h1>
	</c:if>
	
	<c:if test="${loginUser != null}">
		HELLO! ${loginUser.name} :) <br>
		<a href="/portfolio/login/myPage">MyPage</a>&nbsp;&nbsp;&nbsp;
		<a href="/portfolio/login/logout">Logout</a>&nbsp;&nbsp;&nbsp;
	</c:if>
	
</body>
</html>