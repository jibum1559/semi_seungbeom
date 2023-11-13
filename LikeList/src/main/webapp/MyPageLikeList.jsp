<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>    
<%@ page import ="com.kh.semi.likeList.LikeRealestate" %>
<%@ page import ="com.kh.semi.likeList.LikeListDAO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>���������� ���� �Ź�</title>
<link rel="stylesheet" type="text/css" link href="LikeList.css">
</head>
<body>
	        <header>
            <div class="use_list_box">
                <div class="use_list">
                    <p>
                        <a href="������������ �̵�" class="use_main" onclik>
                            <span><img src="./img/�ΰ�.png" class="logo"></span>
                        </a>
                    </p>
                    <ul class="use">
                        <li>
                            <a href="������������ �̵�" class="use_logout" title="�α׾ƿ�" onclik>
                                <span><img src="./img/logout.png" class="logout"><br>LOGOUT</span>
                            </a>
                        </li>
                        <li>
                            <a href="������������ �̵�" class="use_mypage" title="����������" onclik>
                                <span><img src="./img/����.png" class="user"><br>MY</span>
                            </a>
                        </li>
                        <li>
                            <a href="�� �Ź� ��ȸ�� �̵�" class="use_likelist" title="��Ź�" onclik>
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
                    <li>������</li>
                    <li style="color: #6190E8;"><a href="MyPageLikeList.jsp">���� �Ź�</a></li>
                    <li>�� ���ǳ���</li>
                    <li>�߰��� ���</li>
                    <li>ȸ��Ż��</li>
                </ul>
                <hr>
            </nav>
            <article class="main">
                <h1 class="LikeList">���� �Ź�</h1><br>
                <hr style="width: 96%;">
                

                <div class="type_box">
                    <div class="type_list">
                        <ul class="type">
                            <li style="color: #6190E8;"><a href="MyPageLikeList.jsp">��ü�Ź�</a></li>
                            <li><a href="ApartmentType.jsp">����Ʈ</a></li>
                            <li><a href="VillaType.jsp">����</a></li>
                            <li><a href="OfficetelType.jsp">���ǽ���</a></li>
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
	    List<LikeRealestate> LikeRealestates = likelistDAO.getAllLikeRealestates();
	    
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
    </div>
</body>
</html>