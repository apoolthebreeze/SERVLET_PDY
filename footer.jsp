<%@ page contentType = "text/html; charset=utf-8" %>
<%@ page import="example.*" %>

<footer class="container">
    <p> <br> &copy;PsickU 이사장: 박다영. 고유번호: 20210983, 연락처: dayoung4821@naver.com<br>
        <% 
        ShopTime time= new ShopTime();
        %>
        오늘 날짜와 시간: <%=time.timenow() %>
    </p>
</footer>