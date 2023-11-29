<%@ page contentType = "text/html; charset=utf-8" %>
<nav class="navbar navbar-expand-lg bg-brown">
    <div class="dropdown">
        <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="background-color: transparent;">
            카테고리
        </button>
        <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
            <a class="navbar-brand" href="index.jsp" style="color: brown;">HOME</a>
            <a href= "../login/memberlogin.jsp" class= "dropdown-item">로그인</a>
            <a class="dropdown-item" href="#">구매내역</a>
            <a class="dropdown-item" href="#">선물함</a>
            <a class="dropdown-item" href="#">쿠폰함</a>
            <a class="dropdown-item" href="#">좋아요</a>
        </div>
    </div>

    <!--
    <div>
        <img src="image\cacao.png" class="img-fluid" alt="main_image" width="150" height="100" style="margin: 10 auto;">
    </div>
-->
    <div>
        <img src="image\C.gif" class="img-fluid" alt="main_image" style="margin-left: 100px;">
    </div>

    <div class="container">
        <div class="navbar-header">
            <a class="navbar-brand" href="./index.jsp" style="color: white;"> 상품 목록(기본 홈)</a>
            <a class="navbar-brand" href="./index.jsp" style="color: white;">신규</a>
            <a class="navbar-brand" href="./index.jsp" style="color: white;">인기</a>
            <a class="navbar-brand" href="./index.jsp" style="color: white;">스타일</a>
            <a class="navbar-brand" href="/BoardListAction.do?pageNum=1" style="color: white;">게시판(고객센터)</a>
            <a class="navbar-brand" href="admin/index_ad.jsp" style="color: white;">관리자모드</a>
        </div>
    </div>
</nav>