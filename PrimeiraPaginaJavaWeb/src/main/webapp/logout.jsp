<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
    // Encerra a sessão do usuário
    request.getSession().invalidate();
    // Redireciona para a página de login ou outra página desejada após o logout
    response.sendRedirect("./login.jsp");
%>