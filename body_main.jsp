<%@ page contentType = "text/html; charset=utf-8" %>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Product"%>
<jsp:useBean id="productDAO" class="dao.ProductRepository" scope="session" />

<br><br>
<%! String greeting = "다양한 이모티콘샵, 코코아 이모티콘샵";
        String tagline = "하단 페이지: 확인";%>
<div class="container">
    <div class="jumbotron" style="background-color: #C8B099; padding: 5px;">
        <div class="container">
            <h3 class="display-4 text-center" style="background-color: #C8B099; padding: 5px;">
                <%=greeting%>
            </h3>
        </div>
    </div>
    <%ArrayList<Product> listOfProducts = productDAO.getAllProducts();%>
</div>

<div class="container">
    <div class="row" align="center">
        <%
            for (int i = 0; i < listOfProducts.size(); i++){
                Product product = listOfProducts.get(i);
        %>
        <div class="col-md-4">
            <div class="card bg-white text-white">
                <img src="image/product/<%=product.getProductId()%>.png" class="card-img" alt="...">
                <div class="card-img-overlay">
                    <h5 class="card-title" style="font-size: 15px;">이모티콘 이미지 샘플</h5>
                    <p class="card-text" style="font-size: 10px;">출처: 카카오이모티콘샵</p>
                </div>
            </div>

            <h3><%=product.getPname()%></h3>
            <p><%=product.getDescription()%>
                <p><%=product.getUnitPrice()%>원
                    <p><a href="product_detail.jsp?id=<%=product.getProductId()%>" class="btn btn-secondary" role="button"> 상품 상세 정보 &raquo;</a>

        </div>
        <%
            }
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

<div class="card bg-white text-brown">
    <img src="image/cardimg.png" class="card-img" alt="..." width="800" height="600">
    <div class="card-img-overlay">
        <h5 class="card-title">사랑하는 마음 플러스로 센스 있게 전하세요</h5>
        <p class="card-text">출처: 카카오 이모티콘샵</p>
    </div>
</div>

<div class="list-group">
    <a href="#" class="list-group-item list-group-item-action active" aria-current="true">신규 이모티콘 ></a>
    <a href="#" class="list-group-item list-group-item-action active" aria-current="true">인기 이모티콘 ></a>
    <a href="#" class="list-group-item list-group-item-action active" aria-current="true">스타일 ></a>
</div>