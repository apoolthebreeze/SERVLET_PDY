<%@ page contentType = "text/html; charset=utf-8" %>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Product"%>
<%@ page import="dao.ProductRepository"%>
<%@ page import="java.sql.*"%>
<%@ include file="db/db_conn.jsp"%>

<div class="card bg-white text-brown">
    <img src="image/newbanner.png" class="card-img" alt="..." width="2000" height="300">
    <div class="card-img-overlay">
        <h5 class="card-title" style="color: white; padding: 5px;">신박템은 여기! 따끈따끈 신상 이모티콘</h5>
        <p class="card-text" style="color: white; padding: 3px;">출처: 카카오 이모티콘샵</p>
    </div>
</div>
<br><br>
<%! String greeting = "신규 이모티콘";
        String tagline = "하단 페이지: 확인";%>
<div class="container">
    <div class="jumbotron" style="background-color: #FFF170; padding: 5px;">
        <div class="container">
            <h3 class="display-4 text-center" style="background-color: #FFF170; padding: 5px;">
                <%=greeting%>
            </h3>
        </div>
    </div>
</div>
<div class="container">
    <div class="row" align="center">
        <%
      String sql = "select * from product"; 
      pstmt = conn.prepareStatement(sql); 
      rs = pstmt.executeQuery(); 
      while (rs.next()) { 
   %>

        <div class="col-md-4">
            <div class="card bg-white text-white">
                <img src="image/product/<%=rs.getString("p_fileName")%>" class="card-img" alt="...">
                <div class="card-img-overlay">
                <h5 class="card-title" style="font-size: 15px;">이모티콘 이미지 샘플</h5>
                <p class="card-text" style="font-size: 10px;">출처: 카카오이모티콘샵</p>
            </div>
        </div>
            <h3><%=rs.getString("p_name")%></h3>
            <p><%=rs.getString("p_description")%>
            <p><%=rs.getString("p_UnitPrice")%>원
            <p><a href="product_detail.jsp?id=<%=rs.getString("p_id")%>" class="btn btn-secondary" role="button"> 상세 정보 &raquo;></a>
        </div>
        <%
         } // 반복문 끝난 이후 db 연결 종료   
      if (rs != null)
         rs.close();
       if (pstmt != null)
          pstmt.close();
       if (conn != null)
         conn.close();
   %>
    </div>
    <hr>
</div>

<div class="container">
    <div class="text-center">
        <h3>
            <%=tagline%>
        </h3>
    </div>
    <hr>
</div>



<div class="list-group">
    <a href="#" class="list-group-item list-group-item-action active" aria-current="true">신규 이모티콘 ></a>
    <a href="#" class="list-group-item list-group-item-action active" aria-current="true">인기 이모티콘 ></a>
    <a href="#" class="list-group-item list-group-item-action active" aria-current="true">스타일 ></a>
</div>