<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="restaurante.restauranteDao" %>
<%
    String nome = request.getParameter("nome");
    restauranteDao restauranteDao = new restauranteDao();
    boolean excluidoComSucesso = false;

    if (nome != null && !nome.isEmpty()) {
        excluidoComSucesso = restauranteDao.excluir(nome);
    }

    if (excluidoComSucesso) {
        response.sendRedirect("listar.jsp"); 
    } else {
        response.sendRedirect("erroExclusao.jsp"); 
    }
%>