<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <title>마이페이지 내 정보 ID 확인화면</title> 
        <meta charset="UTF-8">
        <link rel="stylesheet" type="text/css" href="./css/Idcheck.css">

    </head>
    <body>
    <script>
    	window.onload = function() {
    		var isError = <%=request.getParameter("error") %>;
    		console.log(isError);
    		if(isError) {
    			alert("아이디 또는 비밀번호가 일치하지 않습니다.");
    		}
    	}
    </script>
    <form action="UserIdCheckServlet" method="post">
        <header>
            <div class="use_list_box">
                <div class="use_list">
                    <p>
                        <a href="메인페이지로 이동" class="use_main">
                            <span><img src="./img/로고.png" class="logo"></span>
                        </a>
                    </p>
                    <ul class="use">
                        <li>
                            <a href="메인페이지로 이동" class="use_logout" title="로그아웃">
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
                <h1 class="myinfo">내 정보</h1><br>
                <hr style="width: 96%;">
                
                <div class="info_box">
                    <img src="./img/아이디확인.png" alt="확인이미지">
                    <div class="user_info">
                        <div class="user_check">
                            <label for="userid">아이디 :</label>
                            <input type="text" id="userid" name="userid" placeholder=" 아이디 입력해주세요." required><br>
                            <label for="password">비밀번호 :</label>
                            <input type="password" id="password" name="password" placeholder=" 비밀번호 입력해주세요." required><br><br>
                            <button type="submit" id="usercheck">확 인</button>                      
                            <!--<input type="submit" id="usercheck" value="확인"> -->                  
                           	   
                           
                        </div>
                    </div>
                </div>
            </article>
            </form>
    </body>
</html>