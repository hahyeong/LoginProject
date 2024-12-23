<%@ page import="kr.bit.bean.MemberDAO" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%
    request.setCharacterEncoding("utf-8");
    MemberDAO mdao = new MemberDAO();
    String id = request.getParameter("id");
    boolean check = mdao.idCheck(id);
    response.setContentType("text/plain");
    response.getWriter().write(check ? "true" : "false");
%>