<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<body>
<%
    String usuario = (String) session.getAttribute("usuario");
    if (usuario != null) {
%>
    <div class="welcome-container" style="text-align:right; margin: 10px 30px 0 0;">
        <span>Bem-vindo, <strong><%= nome %></strong>!</span>
        <form action="logout.jsp" method="post" style="display:inline;">
            <button type="submit" style="margin-left:15px; background:#007bff; color:#fff; border:none; border-radius:5px; padding:5px 15px; cursor:pointer;">Sair</button>
        </form>
    </div>
<%
    }
%>
    <div class="container">
        <div class="card-vacinas-disponiveis">
            <h2>Vacinas Disponíveis</h2>
        </div>
        <div class="card-largo card-com-link">
            <a href="vacinas.jsp">Ver Vacinas</a>
        </div>
        <div class="card-largo card-com-link-multiplo">
            <a href="alertas.jsp">Alertas de Vacinação</a>
            <a href="historico.jsp">Histórico de Vacinação</a>
        </div>
    </div>