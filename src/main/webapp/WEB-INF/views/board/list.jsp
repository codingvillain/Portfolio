<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	  #title {
	  	text-align: center;
	  }
      table {
	    width: 100%;
	    border-top: 1px solid #444444;
	    border-collapse: collapse;
	  }
      thead {
      	font-weight: 900;
      }
	  th, td {
	    border-bottom: 1px solid #444444;
	    padding: 10px;
	    text-align: center;
	  }
	  thead tr {
	    background-color: #0d47a1;
	    color: #ffffff;
	  }
	  tbody tr:nth-child(2n) {
	    background-color: #bbdefb;
	  }
	  tbody tr:nth-child(2n+1) {
	    background-color: #e3f2fd;
	  }
</style>
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
</head>
<body>
	<h1 id="title">Board list</h1>
	
	<button onclick="location.href='/portfolio/board/insertPage'">New Board</button>&nbsp;
	<hr>
	
	<table border="1">
		<thead>
			<tr>
				<td>NO</td>
				<td>TITLE</td>
				<td>CREATED</td>
			</tr>
		</thead>
		<tbody>
			<c:if test="${empty list}">
			
				<tr>
					<td colspan="4">Please write a board :)</td>
				</tr>
			</c:if>
			<c:if test="${not empty list}">
				<c:forEach var="list" items="${list}">
					<tr>
						<td>${list.no}</td>
						<td><a href="/portfolio/board/selectBoardByNo?no=${list.no}">${list.title}</a></td>
						<td>${list.lastModified}</td>
					</tr>
				</c:forEach>
			</c:if>
		</tbody>
		<c:if test="${not empty paging}">
			<tfoot>
				<tr>
					<td colspan="9">${paging}</td>
				</tr>
			</tfoot>
		</c:if>
	</table>
	
	
</body>
</html>