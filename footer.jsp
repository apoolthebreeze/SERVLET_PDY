<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="example.*" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.TimeZone" %>
<%@ page import="java.util.Date" %>

<footer class="container text-center">
    <p style="color: gray;">
        <a href="#">이용약관</a> | <a href="#">유료이용안내</a> | <a href="#">개인정보처리방침</a> | <a href="#">기업고객</a> | <a href="#">문의하기</a> |<a href="#">공정위사업자정보</a>
    </p>
    <p style="color: gray;">&copy;
        (주) 코코아 <br>
        코코아 이모티콘샵에서 판매되는 콘텐츠의 저작권은 콘텐츠 제공자에게 있으며, 이를 무단 이용하는 경우 저작권법 등에 따라 처벌될 수 있습니다.
    </p>
    
    <p style="color: gray;">
        대표: 박다영 사업자등록번호: 20-21-0983 통신판매업신고번호: 제2021-0983호 <br>
        주소: 코코아특별자치도 코코시 코코로 242(코코동) 코코아사업자 (주)코코아고객센터 2021-0983 메일: dayoung4821@naver.com
    </p>
    <p style="color: gray;">
        <%
            ShopTime time = new ShopTime();
            Date now = new Date();
            SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            dateFormat.setTimeZone(TimeZone.getTimeZone("Asia/Seoul"));
            String koreanTime = dateFormat.format(now);
        %>
        오늘 한국 시간: <%= koreanTime %>
    </p>
</footer>


