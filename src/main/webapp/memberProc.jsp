<%@ page import="kr.bit.bean.MemberDAO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<! DOCTYPE html>
<html>
<head>
</head>
<body>
<%
    request.setCharacterEncoding("UTF-8");

    String[] hobby = request.getParameterValues("hobby");
    String str = "";
    for (int i = 0; i < hobby.length; i++) {
        str += hobby[i] + " ";
    }
%>
<jsp:useBean id="mbean" class="kr.bit.bean.MemberBean">
    <jsp:setProperty name="mbean" property="*"/>
</jsp:useBean>
<%
    mbean.setHobby(str);

    MemberDAO memberDAO = new MemberDAO();
    memberDAO.insertMember(mbean);

    response.sendRedirect("login.jsp");
%>
</body>
</head>
</html>