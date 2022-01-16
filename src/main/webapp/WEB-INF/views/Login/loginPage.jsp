<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<script>
/*
	$(document).ready(function(){

		$('#f').on('click', function(){
//			let regId = /^[a-z]{1,10}$/;  // 실제 서비스는 수정해서 사용
//			let regPw = /^[0-9]{1,10}$/;  // 실제 서비스는 수정해서 사용
			if ( $('#id').val()  != '${Login.id}' ||  $('pw').val()  != '${Login.pw}' ) {
				alert('아이디와 비밀번호를 확인하세요.');
				return;
			} else{
				
			}
			
			alert('성공!');	
			$('#f').attr('action', '/portfolio/login/submitLogin');
			$('#f').submit();
		});
	});
*/	

</script>
</head>
<body>

	<h1>Login Page</h1>
	
	<form id="f" method="post" action="/portfolio/login/submitLogin">
		<table border="1">
			<tbody>
				<tr>
					<td>ID</td>
					<td><input type="text" id="id" name="id" placeholder="ID"></td>
				</tr>
				<tr>
					<td>PASSWORD</td>
					<td><input type="password" id="pw" name="pw" placeholder="PASSWORD"></td>
				</tr>
			</tbody>
			<tfoot>
				<tr>
					<td colspan="2"><button id="login_btn">Login</button></td>
				</tr>
			</tfoot>		
		</table>
	</form>
	
<!-- 
	<div>
		<a href="/ex13/member/findIdPage">아이디</a> /
		<a href="/ex13/member/findPwPage">비밀번호</a> 찾기
	</div>

 -->
	

</body>
</html>