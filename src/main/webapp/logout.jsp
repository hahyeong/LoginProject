<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>logout</title>
</head>
<body>
    <%
        session.invalidate();
    %>
</body>
    <script>
        alert("Logout Successfully!");
        location.href = "login.jsp";
    </script>
</html>