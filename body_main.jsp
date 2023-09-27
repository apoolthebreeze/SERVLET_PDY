<%@ page contentType = "text/html; charset=utf-8" %>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Product"%>
<jsp:useBean id="productDAO" class="dao.ProductRepository" scope="session" />

<%! String greeting = "다양한 이모티콘샵, 코코아 이모티콘샵";
        String tagline = "하단 페이지: 확인";%>
<div class="container">
    <div class="jumbotron">
        <div class="container">
            <h3 class="display-4">
                <%=greeting%>
            </h3>
        </div>
    </div>
    <%
    ArrayList<Product> listOfProducts = productDAO.getAllProducts();
    %>
</div>

<div class="container">
    <div class="row" align="center">
        <%
            for (int i = 0; i < listOfProducts.size(); i++){
                Product product = listOfProducts.get(i);
        %>
        <div class="col-md-4">
            <h3><%=product.getPname()%></h3>
            <p><%=product.getDescription()%>
            <p><%=product.getUnitPrice()%>원
        </div>
        <%
            }
        %>
    </div>
    <hr>
</div>

<div class="jumbotron">
    <div class="container">
        <h1 class="display-3">
            <%=greeting%>
        </h1>
    </div>
</div>


<div class="container">
    <div class="text-center">
        <h3>
            <%=tagline%>
        </h3>
    </div>
    <hr>
</div>

<div class="card bg-dark text-white">
    <img src="image/PsickOver.jpg" class="card-img" alt="...">
    <div class="card-img-overlay">
        <h5 class="card-title">‘피식대학’, 웹 예능으로 백상을 거머쥐다</h5>
        <p class="card-text">출처: [뉴스를 만나다] [9시 뉴스] / KBS 2023.05.07.</p>
    </div>
</div>

<div class="list-group">
    <a href="#" class="list-group-item list-group-item-action active" aria-current="true">05학번이즈백^^</a>
    <a href="#" class="list-group-item list-group-item-action active" aria-current="true">05학번이즈히어🌆</a>
    <a href="#" class="list-group-item list-group-item-action active" aria-current="true">The PSICK SHOW🌎</a>
    <a href="#" class="list-group-item list-group-item-action active" aria-current="true">한사랑산악회⛰</a>
    <a href="#" class="list-group-item list-group-item-action active" aria-current="true">한사랑음악회🎷</a>
</div>