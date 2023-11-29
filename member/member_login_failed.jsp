<%
	response.sendRedirect("memberlogin.jsp?error=1");
%>

<!-- 리퀘스트 객체를 공유해서 쓰면 안됨. 그래서 foward가 아닌 sendRedirect를 사용해서 정보를 분리해줌 -->