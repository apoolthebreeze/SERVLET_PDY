<%@ page contentType = "text/html; charset=utf-8"%>
<%@ page import="java.sql.*"%>
<%@ include file="../db/db_conn.jsp" %>

<%
    // 앞에서 받아온 id
    String id = request.getParameter("id");
    
    // db 연동
    String sql = "select * from member"; // sql문 -- 전체 조회
	pstmt = conn.prepareStatement(sql); //객체생성
	rs = pstmt.executeQuery(); //쿼리문실행

    while (rs.next()) {
        String test = rs.getString("id");
          
        if (conn == null) {
        // 적절한 오류 처리
        out.println("데이터베이스 연결에 실패했습니다.");
    } else {
        String sql1 = "delete from member where id = ?";
        pstmt = conn.prepareStatement(sql1);
        pstmt.setString(1, id);
              
     
            
        }
    }
    response.sendRedirect("member_view.jsp?edit=m_delete");
%>