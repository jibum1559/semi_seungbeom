<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>    
<%@ page import ="com.kh.sammi.LikeRealestate" %>
<%@ page import ="com.kh.sammi.LikeListDAO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>마이페이지 찜한 매물</title>
<link rel="stylesheet" type="text/css" href="./css/LikeList.css">
</head>
<body>
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
                    <li><a href="IdCheck.jsp">내정보</a></li>
                    <li style="color: #5887d6;"><a href="MyPageLikeList.jsp">찜한 매물</a></li>
                    <li>내 문의내역</li>
                    <li>중개인 등록</li>
                    <li>회원탈퇴</li>
                </ul>
                <hr>
            </nav>
		</section>
            <article class="main">
                <h1 class="LikeList">찜한 매물</h1><br>
                <hr style="width: 96%;">
                

                <div class="type_box">
                    <div class="type_list">
                        <ul class="type">
                            <li><a href="MyPageLikeList.jsp">전체매물</a></li>
                            <li><a href="ApartmentType.jsp">아파트</a></li>
                            <li><a href="VillaType.jsp">빌라</a></li>
                            <li style="color: #5887d6;"><a href="OfficetelType.jsp">오피스텔</a></li>
                            <li><a href="StudioType.jsp">원룸</a></li>
                            <li><a href="HouseType.jsp">주택</a></li>
                        </ul>
                        <hr style="width: 96%;">
                    </div>
                </div>
                
                <div class="realestate_area">
                    <div class="realestate_box">
                        <div class="realestate_list">
                            <ul class="realestate">
    <% 
	    LikeListDAO likelistDAO = new LikeListDAO();
	    List<LikeRealestate> LikeRealestates = likelistDAO.getOfficetelType();
	    
	    for(LikeRealestate l : LikeRealestates) {
	%>                  
					        <li>
					        <a href="매물 상세정보로 전환">
								    <%= l.getRealestateName() %><br>
								    <%= l.getRealestateType() %><br>
								    <%= l.getRealestateCondition() %><br>
								    <%= l.getRealestateSaleprice() %><br>
								    <%= l.getRealestateMonthly() %><br>
								    <%= l.getRealestateArea() %><br>
								    <%= l.getFloors() %><br><br>
					        </a>
					        </li>                   
	<% 
	    }
	%>
                            </ul>
                        </div>
                    </div>
                </div>
            </article>
</body>
</html>