<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<head>

</head>
<body>
<link rel="stylesheet" href="style/style.css" />
<%
    String usuario = (String) session.getAttribute("usuario");
    if (usuario != null) {
%>
    <div class="status-usuario-box">
        <div class="welcome-container-esquerda">
            <span>Bem-vindo, <strong><%= usuario %></strong>!</span>
            <form action="logout.jsp" method="post" style="display:inline;">
                <button type="submit" class="logout-btn">Sair</button>
            </form>
        </div>
        <div class="botao-login botao-login1">
            <a href="alertas.jsp">Alertas de Vacinação</a>
            <a href="historico.jsp">Histórico de Vacinação</a>
        </div>
    </div>
<%
    }
%>
</body>