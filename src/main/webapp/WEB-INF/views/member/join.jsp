<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./resources/css/member/join.css">
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body style="height:1000px">
	<%@include file="../include/header.jsp" %> 
	
	<div class="container">
		<h1 class="join_title">회원가입</h1>	
	</div>
	
	<div class="wrapper">	
	<form>
		<!-- 이메일 입력 칸 -->
		<div class="join_email">
			<label class="email_title">이메일</label>
			<div class="email_input">
				<span class="email_input_local">
					<label>
						<input class="form-control" placeholder="이메일">
					</label>
				</span>
				<span class="emial_input_separator">@</span>
				<span class="email_input_domain">
					<label>
						<select class="form_control_empty">
							<option>선택</option>
							<option value="naver.com">naver.com</option>
							<option value="hanmail.net">hanmail.net</option>
							<option value="daum.net">daum.net</option>
							<option value="gmail.com">gmail.com</option>
							<option value="nate.com">nate.com</option>
							<option value="hotmail.com">hotmail.com</option>
							<option value="outlook.com">outlook.com</option>
							<option value="icloud.com">icloud.com</option>
							<option value="_manual">직접입력</option>
						</select>
					</label>
				</span>
			</div>
		</div>
			<div class="email_button">
			<button class="email_submit" type="button">이메일 인증하기</button>
			</div>
		<!-- 이메일 입력칸 종료 -->
		
		<!-- 비밀번호 입력 칸 -->
		<div class="join_password">
			<label class="password_title">비밀번호</label>
			<div class="password_comment">영문, 숫자를 포함한 8자 이상의 비밀번호를 입력해주세요.</div>
			<label>
				<input type="password" class="password_input" name="password" placeholder="비밀번호">
			</label>
		</div>
		<!-- 비밀번호 입력 종료 -->
		
		<!-- 비밀번호 확인 입력 칸 -->
		<div class="join_password_ck">
			<label class="password_ck_title">비밀번호 확인</label>
			<label>
				<input type="password" class="password_ck_input" name="passwordCk" placeholder="비밀번호 확인">
			</label>
		</div>
		<!-- 비밀번호 확인 입력칸 종료 -->
		

        <!-- 닉네임 입력 칸-->
		<div class="join_nickname">
			<label class="nickname_title">닉네임</label>
			<div class="nickname_comment">다른 유저와 겹치지 않도록 입력해주세요(2~15자)</div>
			<label>
				<input type="text" class="nickname_input" name="nickname" placeholder="별명 (2~15자)">
			</label>
		</div>
        <!-- 닉네임 입력 칸 종료-->
		
		<button class="join_submit" type="submit">회원가입하기</button>
	</form>
	
	</div>
	
</body>
</html>