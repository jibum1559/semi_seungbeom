<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 페이지</title>
<link rel="stylesheet" type="text/css" href="./CSS/styles2.css">
</head>
<body id="loginBody">
	<header>
		<div class="use_list_box">
			<div class="use_list">
				<p>
					<a href="Main.jsp" class="use_main" onclik>
						<span><img src="./img/로고.png" class="logo"></span>
					</a>
				</p>
				                  
				<ul class="use">
					<li>
					<%
					  if (session.getAttribute("ID") != null) {
					 %>
					
	
						<a href="logout.jsp" id="use_logout" title="로그아웃" onclick="logout()">
							<span><img src="./img/logout.png" class="logout"><br>LOGOUT</span>
						</a>
						<% 
					  }else{
						%>
						<a href="login.jsp" class="use_logout" title="로그인" >
							<span><img src="./img/login.png" class="logout"><br>LOGIN</span>
						</a>
						<%
					  }
						%>
					</li>
					<li>
						<a href="MyPage.jsp" class="use_mypage" title="마이페이지">
							<span><img src="./img/유저.png" class="user"><br>MY</span>
						</a>
					</li>
					<li>
						<a href="" class="use_likelist" title="찜매물">
							<span><img src="./img/찜.png" class="like"><br>찜</span>
						</a>
					</li>
				</ul>
			</div>
		</div>
	</header>
<section class="transparent-section">	
<div>
	 <h1>로그인</h1>
	<form action ="LoginServlet" method="post">
	
		<div id="loginDiv">
			<div id="loginId">
			<label for="ID">ID :</label>
			<input type="text" id="ID" name="ID" placeholder="아이디를 입력하세요." required><br>
			</div>
			<br>
			<div id="loginPw">
			<label for="PASSWORD">PASSWORD :</label>
			<input type="password" id="PASSWORD" name="PASSWORD" placeholder="비밀번호를 입력하세요." required><br>
			</div>
			<input type="submit" value="로그인" id="loginButton"> <input type="button" value="회원가입" id="createButton" onclick="registerButton()">
		</div>

	</form>
</div>
</section>
<section id="loginFoot">
	
</section>
<script>
	function registerButton(){
		window.location.href="register.jsp";
	}
	

</script>
</body>
</html>