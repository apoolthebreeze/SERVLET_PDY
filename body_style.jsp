<%@ page contentType = "text/html; charset=utf-8" %>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Product"%>
<%@ page import="dao.ProductRepository"%>
<%@ page import="java.sql.*"%>
<%@ include file="db/db_conn.jsp"%>

<div class="card bg-white text-brown">
    <img src="image/stylebanner.png" class="card-img" alt="..." width="2000" height="300">
    <div class="card-img-overlay">
        <h5 class="card-title" style="color: white; padding: 5px;">취향저격템은 여기! 내 맘에 쏙 이모티콘 스타일</h5>
        <p class="card-text" style="color: white; padding: 3px;">출처: 카카오 이모티콘샵</p>
    </div>
</div>
<br><br>
<%! String greeting = "신규 이모티콘";%>
<div class="container">
    <div class="jumbotron" style="background-color: #FE8048; padding: 5px;">
        <div class="container">
            <h3 class="display-4 text-center" style="background-color: #FE8048; padding: 5px;">
                <%=greeting%>
            </h3>
        </div>
    </div>
</div>

<div class="list-group">
    <a href="#" class="list-group-item list-group-item-action active border" aria-current="true" style="background-color: #FE8048; color: white;">#MD 추천 ></a>
    <img src="image/style/1.png" class="card-img" alt="..." width="1204" height="324">
    <a href="#" class="list-group-item list-group-item-action active border" aria-current="true" style="background-color: #FE8048; color: white;">#인기 이모티콘 시리즈 ></a>
    <img src="image/style/3.png" class="card-img" alt="..." width="1204" height="324">
    <a href="#" class="list-group-item list-group-item-action active border" aria-current="true" style="background-color: #FE8048; color: white;">#선물하기 좋은 ></a>
    <img src="image/style/4.png" class="card-img" alt="..." width="1204" height="324">
    <a href="#" class="list-group-item list-group-item-action active border" aria-current="true" style="background-color: #FE8048; color: white;">#재밌는 ></a>
    <img src="image/style/5.png" class="card-img" alt="..." width="1204" height="324">
    <a href="#" class="list-group-item list-group-item-action active border" aria-current="true" style="background-color: #FE8048; color: white;">#귀여운 ></a>
    <img src="image/style/6.png" class="card-img" alt="..." width="1204" height="324">
</div>