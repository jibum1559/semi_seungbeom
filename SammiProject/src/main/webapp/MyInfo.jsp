<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>마이페이지 메인화면</title> <!-- mypage_main.html -->
        <meta charset="UTF-8">
        <link rel="stylesheet" type="text/css" href="./css/MyInfo.css">
    </head>
    <body>
    <form action="UserInfoUpdateServlet" method="post">
			<script>
				window.onload = function() {
					var isSuccess = <%=request.getParameter("success") %>;
					console.log(isSuccess);
					if(isSuccess) {
						alert("수정이 완료되었습니다.")
					}
				}
			</script>
        <header>
            <div class="use_list_box">
                <div class="use_list">
                    <p>
                        <a href="Main.jsp" class="use_main">
                            <span><img src="./img/로고.png" class="logo"></span>
                        </a>
                    </p>
                    <ul class="use">
                        <li>
                            <a href="logout.jsp" class="use_logout" title="로그아웃">
                                <span><img src="./img/logout.png" class="logout"><br>LOGOUT</span>
                            </a>
                        </li>
                        <li>
                            <a href="MyPage.jsp" class="use_mypage" title="마이페이지">
                                <span><img src="./img/유저.png" class="user"><br>MY</span>
                            </a>
                        </li>
                        <li>
                            <a href="MyPageLikeList.jsp" class="use_likelist" title="찜매물">
                                <span><img src="./img/찜.png" class="like"><br>찜</span>
                            </a>
                        </li>
                    </ul>

                </div>

            </div>
        </header>
        <section>
            <nav class="left_category">
                <ul>
                    <li class="mypage" ><img src="./img/마이페이지_아이콘.png" alt="마이페이지 아이콘">
                        마이페이지</li>
                    <li style="color: #5887d6;"><a href="IdCheck.jsp">내정보</a></li>
                    <li><a href="MyPageLikeList.jsp">찜한 매물</a></li>
                    <li>내 문의내역</li>
                    <li>중개인 등록</li>
                    <li>회원탈퇴</li>
                </ul>
                <hr>
            </nav>
		</section>
            <article class="main">
                <h1 class="myinfo">내 정보</h1><h class="annotation">수정할 정보 입력 후 하단의 수정하기를 눌러주세요.</h><br>
                <hr style="width: 96%;">
                
                <!-- 아이디/비번 확인 후 불러올 정보출력 -->
               	<% String id = (String) session.getAttribute("userid"); %>
               	<% String phone_number = (String) session.getAttribute("phonenumber"); %>
               	<% String EMAIL = (String) session.getAttribute("email"); %>
               	<% String ADDRESS = (String) session.getAttribute("address"); %>
                

                
                <div class="info_box">
                    <img src="./img/수정.png" alt="수정이미지">
                    <div class="user_info">
                        <div class="user_check">
                            <label for="userid">아이디 :</label>
                            <input type="text" id="userid" name="userid" value="<%=id %>" readonly><br>

                            <label for="password">비밀번호 :</label>
                            <input type="password" id="password" name="password" placeholder=" 변경할 비밀번호를 입력해주세요." required><br>
                            <!-- 예외 처리 -->
                            <label for="confirmpassword">비밀번호 확인:</label>
                            <input type="password" id="confirmpassword" name="confirmpassword" placeholder=" 변경할 비밀번호를 입력해주세요." required><br>
                            <!-- 비밀번호가 같지 않을 경우 예외처리 -->

                            <label for="phonenumber">휴대폰 번호 :</label>
                            <input type="text" id="phonenumber" name="phonenumber" value="<%=phone_number %>" required><br>
                            
                            <label for="email">이메일 :</label>
                            <input type="email" id="email" name="email" value="<%=EMAIL %>" required><br>

                            <label for="address">주소 :</label>
                            <input type="address" id="address" name="address" value="<%=ADDRESS %>" required><br>

                            <button type="submit" id="infomodify">수정하기</button>                                
                            <button type="submit" id="withdraw">회원탈퇴</button>                                
                               
                        </div>
                    </div>
                </div>
            </article>
    </form>
    </body>
</html>