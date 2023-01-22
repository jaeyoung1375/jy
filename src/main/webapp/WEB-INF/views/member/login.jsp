<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/resources/css/member/login.css">
<link rel="stylesheet" href="./resources/css/main.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
<meta charset="UTF-8">
<title>Insert title here</title>
<script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>
</head>
<body>


<%@include file="../include/header.jsp" %>

		<div class="wrapper">
			<form method="post" class="loginForm">
			
			 <h2>로그인</h2>
			 
			 <div class="textForm">
       			 <input name="memberId" type="text" class="id" placeholder="아이디" value="${cookie.id.value}">
    	     </div>
    	     <div class="textForm">
       			 <input name="memberPw" type="password" class="pw" placeholder="비밀번호">
    	     </div>
			<label><input type="checkbox" name="rememberId" ${empty cookie.id.value ? "" : "checked"}> 아이디 기억</label> 
			 <input type="button" class="btn" id="login_button" value="L O G I N"/>
			</form>
		</div>
		
		<script>
		
		$(document).ready(function(){
			
			$('#login_button').click(function(){
				$('.loginForm').attr('action','/login');
				$('.loginForm').submit();
			});
		});
		
		</script>

</body>
</html>