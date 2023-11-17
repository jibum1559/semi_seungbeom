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
<title>���������� ���� �Ź�</title>
<link rel="stylesheet" type="text/css" href="./css/LikeList.css">
</head>
<body>
	        <header>
            <div class="use_list_box">
                <div class="use_list">
                    <p>
                        <a href="Main.jsp" class="use_main">
                            <span><img src="./img/�ΰ�.png" class="logo"></span>
                        </a>
                    </p>
                    <ul class="use">
                        <li>
                            <a href="logout.jsp" class="use_logout" title="�α׾ƿ�">
                                <span><img src="./img/logout.png" class="logout"><br>LOGOUT</span>
                            </a>
                        </li>
                        <li>
                           <a href="MyPage.jsp" class="use_mypage" title="����������">
                                <span><img src="./img/����.png" class="user"><br>MY</span>
                            </a>
                        </li>
                        <li>
                            <a href="MyPageLikeList.jsp" class="use_likelist" title="��Ź�">
                                <span><img src="./img/��.png" class="like"><br>��</span>
                            </a>
                        </li>
                    </ul>

                </div>

            </div>
        </header>
        <section>
            <nav class="left_category">
                <ul>
                    <li class="mypage" ><img src="./img/����������_������.png" alt="���������� ������">
                        ����������</li>
                    <li><a href="IdCheck.jsp">������</a></li>
                    <li style="color: #5887d6;"><a href="MyPageLikeList.jsp">���� �Ź�</a></li>
                    <li>�� ���ǳ���</li>
                    <li>�߰��� ���</li>
                    <li>ȸ��Ż��</li>
                </ul>
                <hr>
            </nav>
		</section>
            <article class="main">
                <h1 class="LikeList">���� �Ź�</h1><br>
                <hr style="width: 96%;">
                

                <div class="type_box">
                    <div class="type_list">
                        <ul class="type">
                            <li><a href="MyPageLikeList.jsp">��ü�Ź�</a></li>
                            <li><a href="ApartmentType.jsp">����Ʈ</a></li>
                            <li><a href="VillaType.jsp">����</a></li>
                            <li style="color: #5887d6;"><a href="OfficetelType.jsp">���ǽ���</a></li>
                            <li><a href="StudioType.jsp">����</a></li>
                            <li><a href="HouseType.jsp">����</a></li>
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
					        <a href="�Ź� �������� ��ȯ">
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