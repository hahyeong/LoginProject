<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%@ page import="kr.bit.bean.MemberDAO"%>
<%@ page import="java.net.URLEncoder" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Checking..</title>
</head>
<body>

    <%
        request.setCharacterEncoding("UTF-8");

        String id = request.getParameter("id");
        String pass = request.getParameter("pass");

        session.setAttribute("id", id);
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        Date loginTime = new Date();
        String formattedTime = sdf.format(loginTime);
        session.setAttribute("formattedTime", formattedTime);
        session.setMaxInactiveInterval(1800);

        MemberDAO mdao = new MemberDAO();

        boolean check = mdao.loginCheck(id,pass);

        if (check) {
    %>
            <script>
                alert("로그인에 성공하였습니다.");
                // response.sendRedirect("welcome.jsp");
            </script>
    <%
        response.sendRedirect("welcome.jsp?id=" + URLEncoder.encode(id, "UTF-8"));

        } else {

            session.removeAttribute("id");

    %>
            <script>
                alert("아이디 또는 비밀번호가 일치하지 않습니다.");
                history.back();
            </script>
    <%
        }
    %>

</body>
</html>