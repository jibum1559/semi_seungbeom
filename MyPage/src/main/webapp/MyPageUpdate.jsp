<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>���������� ����ȭ��</title>
<link rel="stylesheet" type="text/css" href="./css/MyPageMain.css">
</head>
<body>
       <header>
            <div class="use_list_box">
                <div class="use_list">
                    <p>
                        <a href="������������ �̵�" class="use_main">
                            <span><img src="./img/�ΰ�.png" class="logo"></span>
                        </a>
                    </p>
                    <ul class="use">
                        <li>
                            <a href="������������ �̵�" class="use_logout" title="�α׾ƿ�">
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
                    <li><a href="MyPageLikeList.jsp">���� �Ź�</a></li>
                    <li>�� ���ǳ���</li>
                    <li>�߰��� ���</li>
                    <li>ȸ��Ż��</li>
                </ul>
                <hr>
            </nav>
        </section>
            <article class="main">
                <h1 class="recent">�ֱ� �� �Ź�</h1><br>
                <hr style="width: 96%;">
                
                <div class="realestate_area">
                    <div class="realestate_box">
                        <div class="realestate_list">
                          <ul class="realestate">
                                <li>
                                <a href="�Ź� �������� ��ȯ">
                                �ֱ� �� �Ź� ����
                                </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </article>
</body>
</html>