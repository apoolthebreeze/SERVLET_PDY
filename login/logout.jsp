<%@ page contentType="text/html; charset=utf-8"%>

<%
	session.invalidate(); // 로그아웃 버튼 누르면 현재 세션 객체 전체 삭제함
	response.sendRedirect("../admin/index_ad.jsp"); //다시 이 주소에 로그인 하라는 거임
%>
