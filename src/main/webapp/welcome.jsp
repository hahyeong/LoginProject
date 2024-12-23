<%@ page import="kr.bit.bean.MemberDAO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<! DOCTYPE html>
<html>
<head>
</head>
<body>
<div class="container">
    <div id="welcome-msg">
        <%=request.getParameter("id")%>님, 환영합니다.
    </div>
</div>
</body>
</html>