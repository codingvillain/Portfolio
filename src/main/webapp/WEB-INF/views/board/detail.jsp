<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
		width: 100px; 
		margin: 0 auto;
	    border-top: 1px solid #444444;
	    border-collapse: collapse;
	  }
      thead {
      	font-weight: 900;
      }
	  td {
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
  	  #btn{
	    width: 80%;
  	  	margin-top: 20px;
		display: flex;
		justify-content: right;
		align-items: center;
  	  }
</style>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		// 수정
		$('#update_btn').on('click', function(){
			if('${board.title}' == $('#title').val() && 
				'${board.content}' == $('#content').val()){
				alert("There is no modification.");
				return;
			}
			alert('수정 성공!');
			$('#f').attr('action', '/portfolio/board/updateBoard');
			$('#f').submit();
		});
		// 삭제 
		$('#delete_btn').on('click', function(){
			if(confirm('Should I delete it?')){
				$('#f').attr('action', '/portfolio/board/deleteBoard');
				$('#f').submit();
			}			
		});
	});

</script>
</head>
<body>

	<h1 id="title">Detail Page :)</h1>

	<form id="f" >
		<table>
			<thead>
				<tr>
					<td></td>
					<td>No ${board.no}</td>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>Subject</td>
					<td><input type="text" name="title" id="title" value="${board.title}"></td>
				</tr>
				<tr>
					<td>Content</td>
					<td><textarea rows="8" cols="30" name="content" id="content">${board.content}</textarea></td>
				</tr>			
			</tbody>
		</table>
		<div id="btn">
			<input type="button" value="update" id="update_btn">&nbsp;&nbsp;
			<input type="button" value="delete" id="delete_btn">&nbsp;&nbsp;
			<input type="button" value="list" onclick="location.href='/portfolio/board/selectBoardList'">
		</div>
		
	   	<input type="hidden" name="no" value="${board.no}">
	   	<input type="hidden" name="created" value="${board.created}">
	   	<input type="hidden" name="lastModified" value="${board.lastModified}">

	</form>









</body>
</html>