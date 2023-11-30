<%@ page contentType = "text/html; charset=utf-8" %>


<nav class="navbar navbar-expand-lg bg-brown">
    <div class="dropdown">
        <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="background-color: transparent;">
            카테고리
        </button>
        <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
            <a class="navbar-brand" href="./index.jsp" style="color: brown;">Home</a>
            <a class="dropdown-item" href="#">로그인</a>
            <a class="dropdown-item" href="#">구매내역</a>
            <a class="dropdown-item" href="#">선물함</a>
            <a class="dropdown-item" href="#">쿠폰함</a>
            <a class="dropdown-item" href="#">좋아요</a>
        </div>
    </div>

    <div>
        <img src="image\C.gif" class="img-fluid" alt="main_image" style="margin-left: 100px;">
    </div>

    <div class="container">
        <div class="navbar-header">
            <a class="navbar-brand" href="../index.jsp" style="color: white;"> 홈 </a>
           <a style="color:white;" class="navbar-brand" href="https://jsp-main--sfgdd.run.goorm.site/member/member_view.jsp?edit=m_view">회원보기</a>
            <a style="color:white;" class="navbar-brand" href="https://jsp-main--sfgdd.run.goorm.site/member/member_update.jsp?edit=m_update">회원수정</a>
            <a style="color:white;" class="navbar-brand" href="https://jsp-main--sfgdd.run.goorm.site/member/member_delete_process.jsp?edit=m_delete">회원삭제</a>
            <a class="navbar-brand" href="index_ad.jsp" style="color: white;"> 상품 보기 </a>
            <a class="navbar-brand" href="product_add.jsp" style="color: white;"> 상품 등록 </a>
            <a class="navbar-brand" href="product_edit.jsp?edit=update" style="color: white;"> 상품 수정 </a>
            <a class="navbar-brand" href="product_edit.jsp?edit=delete" style="color: white;"> 상품 삭제 </a>
            <a class="navbar-brand" href="../index.jsp" style="color: white;"> 일반모드 </a>
            <a href="../login/logout.jsp" class="btn btn-sm btn-success pull-right">로그아웃</a>

        </div>
    </div>
</nav>