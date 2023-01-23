<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./resources/css/member/join.css">
<script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body style="height:1200px;">
	<%@include file="../include/header.jsp" %> 
	
	<div class="container">
		<h1 class="join_title">회원가입</h1>	
	</div>
	
	<div class="wrapper">	
	<form id="join_form" method="post">

		<!-- 아이디 입력 칸 -->
		<div class="join_id">
			<label class="id_title">아이디</label>
			<div class="id_comment">영문, 숫자를 포함한 8자 이상의 아이디를 입력해주세요.</div>
			<label>
				<input type="text" class="id_input" name="memberId" placeholder="아이디" id="id">
			</label>
			<span class="final_id_ck">잘못된 조합 입니다.</span>  
				<span class="id_input_re_1">사용 가능한 아이디입니다.</span>
		      <span class="id_input_re_2">아이디가 이미 존재합니다.</span>
		</div>
		<!-- 아이디 입력 종료 -->
		

		<!-- 비밀번호 입력 칸 -->
		<div class="join_password">
			<label class="password_title">비밀번호</label>
			<div class="password_comment">영문,숫자,특수문자를 포함한 8자 이상의 비밀번호를 입력해주세요.</div>
			<label>
				<input type="password" class="password_input" name="memberPw" placeholder="비밀번호" id="pw">
			</label>
		</div>
		<!-- 비밀번호 입력 종료 -->


		<!-- 비밀번호 확인 입력 칸 -->
			<div class="join_password_ck">
				<label class="password_ck_title">비밀번호 확인</label>
				<label>
					<input type="password" class="password_ck_input" name="passwordCk" placeholder="비밀번호 확인" id="pwck">
				</label>
				  <span class="final_pwck_ck">비밀번호 확인을 입력해주세요.</span>
			       <span class="pwck_input_re_1">비밀번호가 일치합니다.</span>
			      <span class="pwck_input_re_2">비밀번호가 일치하지 않습니다.</span>
			</div>
		<!-- 비밀번호 확인 입력칸 종료 -->


		<!-- 이름 입력 칸-->
		<div class="join_name">
			<label class="name_title">이름</label>
			<label>
				<input type="text" class="name_input" name="memberName" placeholder="이름">
			</label>
		</div>
        <!-- 닉네임 입력 칸 종료-->

		<!-- 닉네임 입력 칸-->
		   <div class="join_nickname">
			<label class="nickname_title">닉네임</label>
			<div class="nickname_comment">다른 유저와 겹치지 않도록 입력해주세요(2~15자)</div>
			<label>
				<input type="text" class="nickname_input" name="memberNickName" placeholder="별명 (2~15자)">
			</label>
		</div>
        <!-- 닉네임 입력 칸 종료-->



		<!-- 이메일 입력 칸 -->
		<div class="join_email">
			<label class="email_title">이메일</label>
			<div class="email_input">
				<span class="email_input_local">
					<label>
						<input type="text" class="form-control" placeholder="이메일" name="memberEmail" id="user_email">
					</label>
				</span>
				<span class="emial_input_separator">@</span>
				<span class="email_input_domain">
					<label>
						<select class="form_control_empty">
							<option value="선택">선택</option>
							<option value="naver.com">naver.com</option>
							<option value="daum.net">daum.net</option>
						</select>
					</label>
				</span>
			</div>
			<input type="hidden" id="totalemail" name="mail" value="">
		</div>
			<div class="email_button">
			<button class="email_submit" type="button">이메일 인증하기</button>
			</div>
		<!-- 이메일 입력칸 종료 -->
		
		<button class="join_submit" type="submit">회원가입하기</button>
	</form>
	
	</div>
	
	
	
		<script>
		
		var idCheck = false;
		var idckCheck = false;
		var pwCheck = false;
		var pwckCheck = false;
		var nameCheck = false;
		var nickNameCheck = false;
		var emailCheck = false;
		let id_regex = /^[a-z0-9]{6,12}$/;
		let pw_regex = /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,16}$/;
		
			
			/* 회원가입 유효성 검사 */
			$(document).ready(function(){
				$(".join_submit").click(function(){
					
					var id = $('#id').val();
					var pw = $('#pw').val();
					var pwck = $('#pwck').val();
					
					
					
					
					
					if(!id_regex.test(id)){
						$('.final_id_ck').css('display','block');
						idCheck = false;
					}else{
						$('.final_id_ck').css('display','none');
						idCheck = true;
					}
					
					
					if(!pw_regex.test(pw) || pw == ""){
						alert("비밀번호는 영문,숫자,특수기호로 구성된 8자리 이상 16자리 이내로 작성하세요");
						pwCheck = false;
					}else{
						pwCheck = true;
					}
					
					if(pwck == ""){
						$('.final_pwck_ck').css('display','block');
						pwckheck = false;
					}else{
						$('.final_pwck_ck').css('display','none');
						pwckCheck = true;
					}
					
					
					
					if(idCheck&&pwCheck&&idckCheck){
					$("#join_form").attr("action","/join");
					$("#join_form").submit();
				}
					
					return false;
				});
			});
			
			
			/* 이메일 컬럼 합치기 */
			$("#user_email").blur(function(){
				email();
			});
			
			$(".form_control_empty").change(function(){
				email();
			});
			
			function email(){
				const email = $("#user_email").val();
				const middle = $(".emial_input_separator").text();
				const address = $(".form_control_empty").val();
				if(email != "" && address != ""){
					$("#totalemail").val(email+middle+address);
				}
			}; /* 이메일 컬럼 합치기 종료 */
			
			
			/* 비밀번호 일치 여부 체크 */
			$("#pwck").on("propertychange change keyup paste input",function(){
				
				var pw = $('#pw').val();
				var pwck = $('#pwck').val();
				$('.final_pwck_ck').css('display','none');
				
				if(pw == pwck){
					$('.pwck_input_re_1').css('display','block');
					$('.pwck_input_re_2').css('display','none');
					pwckCheck = true;
				}else{
					$('.pwck_input_re_1').css('display','none');
					$('.pwck_input_re_2').css('display','block');
					pwckCheck = false;
				}
			});
			
			/* 아이디 중복검사 */
			$("#id").on("propertychange change keyup paste input",function(){
				
				var memberId = $('#id').val();
				var data = {memberId : memberId};
				
				$.ajax({
					type:"post",
					url:"/memberIdChk",
					data:data,
					success:function(result){
						if(result != 'fail'){
							$('.id_input_re_1').css('display','none');
							$('.id_input_re_2').css('display','none');
							idckCheck = true;
						}else{
							$('.id_input_re_1').css('display','none');
							$('.id_input_re_2').css('display','inline-block');
							idckCheck = false;
						}
					}
				});
			});
			
		
			
			
		
		</script>
	
</body>
</html>