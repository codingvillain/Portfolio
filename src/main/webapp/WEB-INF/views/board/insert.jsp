<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<style type="text/css">
		html, body{padding:0;margin:0;width:100%;height:100%;overflow:hidden;}

		#wrap1{background-color:yellow; position:relative;width:100%;height:100%;  }
		
		/* table */
		
		tbody th{padding:10px;vertical-align:middle;font-family:'malgunbd';color:#333;border-right:0px solid #c9c9c9;border-bottom:0px solid #c9c9c9;background:#ececec}
		tbody td{padding:5px;vertical-align:middles;background:#fafafa;border-bottom:1px solid #c9c9c9}
		/* button */
		button {margin-top:50px;}
		button {font-family:'malgunbd';display:inline-block;padding:3px 20px 6px 20px;margin:0;border:1px solid #aaa;cursor:pointer;color:#333;border-radius:2px;vertical-align:middle;font-size:13px;letter-spacing:-1px;line-height:normal;background-color:#feffff;text-decoration:none;}
		button {border-color:#191919;color:#fff;background-color:#333;text-decoration:none;}
		#button {font-family:'malgunbd';display:inline-block;padding:3px 20px 6px 20px;margin:0;border:1px solid #aaa;cursor:pointer;color:#333;border-radius:2px;vertical-align:middle;font-size:13px;letter-spacing:-1px;line-height:normal;background-color:#feffff;text-decoration:none;}
		#button {border-color:#191919;color:#fff;background-color:#333;text-decoration:none;}

</style>
<script type="text/javascript">
	$(document).ready(function(){
		fnCheckBoard();
	});
	
	function fnCheckBoard(){
		$("#submit").on('click', function(){
			
		var title = $("#title").val();
		var content = $("#content").val();
				
			 if(title == ""){
				alert("Check the Subject");
				$("#title").focus();
				return;
			} else if(content == ""){
				alert("Check the Content");
				$("#content").focus();
				return;
			} 
				alert("Success Board Submit");
		});
	} // end fnCheckBoard
	
</script>
</head>
<body>
	<div id="wrap1">
		<div id="container">
			<h1>New Board !!</h1> <br><br>
			<form id="f" method="post" action="/portfolio/board/insertBoard">
				<table border="1" >
					<thead>
						<tr>
							<td colspan="2"><span style="color: red">해당 작성란은 모두 필수입력입니다.</span></td>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>Subject</td>
							<td><input type="text" name="title" id="title" placeholder="Please enter the subject."></td>
						</tr>
						<tr>
							<td>Content</td>
							<td><textarea rows="7" cols="30" name="content" id="content" placeholder="Please enter the content."></textarea></td>
						</tr>
					</tbody>
				</table>
		 		<button id="submit">작성 완료</button> 
			<input type="button" id="button" value="목록" onclick="location.href='/portfolio/board/selectBoardList'">
			</form>
		</div>
	</div>	
	
	
	
</body>
</html>