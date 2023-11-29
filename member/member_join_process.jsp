<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*, java.util.Date, java.text.SimpleDateFormat"%>
<%@ page import="dto.Member"%>
<%@ page import="dao.MemberRepository"%>
<%@ page import="javax.servlet.http.HttpSession"%>
<%@ include file="../db/db_conn.jsp" %>

<%
    request.setCharacterEncoding("UTF-8");

    // 회원가입 정보 받기
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    String confirmPassword = request.getParameter("confirmPassword");
    String name = request.getParameter("name");
    String gender = request.getParameter("gender");
    String email = request.getParameter("email");
    String phone = request.getParameter("phone");
    String address = request.getParameter("address");

    // 현재 날짜/시간 구하기
    Date now = new Date();
    SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    String registrationDate = dateFormat.format(now);

    // 데이터베이스 연동 및 회원 정보 삽입
    Connection conn = null;
    PreparedStatement pstmt = null;

    try {
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/your_database_name", "your_username", "your_password");

        // 회원 정보 삽입 쿼리
        String insertQuery = "INSERT INTO member (username, password, name, gender, email, phone, address, registration_date) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
        pstmt = conn.prepareStatement(insertQuery);
        pstmt.setString(1, username);
        pstmt.setString(2, password);
        pstmt.setString(3, name);
        pstmt.setString(4, gender);
        pstmt.setString(5, email);
        pstmt.setString(6, phone);
        pstmt.setString(7, address);
        pstmt.setString(8, registrationDate);

        // 쿼리 실행
        pstmt.executeUpdate();
    } catch (SQLException e) {
        e.printStackTrace();
    } finally {
        // 연결 및 자원 해제
        if (pstmt != null) {
            try {
                pstmt.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        if (conn != null) {
            try {
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

    // 세션 체크 후 전체 삭제
    HttpSession session = request.getSession(false);
    if (session != null) {
        session.invalidate();
    }

    // Index.jsp로 Redirect
    response.sendRedirect("Index.jsp");
%>
