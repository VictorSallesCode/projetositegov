<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<%
    String mensagem = "";
    boolean podeAlterar = false;
    String email = request.getParameter("email");
    String nome = request.getParameter("nome");
    String dataNascimento = request.getParameter("data_nascimento");

    if ("POST".equalsIgnoreCase(request.getMethod()) && request.getParameter("nova_senha") == null) {
        // Primeira etapa: validação dos dados
        if (email != null && nome != null && dataNascimento != null) {
            Connection conn = null;
            PreparedStatement stmt = null;
            ResultSet rs = null;
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                conn = DriverManager.getConnection("jdbc:mysql://localhost/vacina", "root", "");
                String sql = "SELECT * FROM usuario WHERE email = ? AND nome = ? AND data_nascimento = ?";
                stmt = conn.prepareStatement(sql);
                stmt.setString(1, email);
                stmt.setString(2, nome);
                stmt.setDate(3, java.sql.Date.valueOf(dataNascimento));
                rs = stmt.executeQuery();
                if (rs.next()) {
                    podeAlterar = true;
                } else {
                    mensagem = "Dados não encontrados. Verifique as informações.";
                }
            } catch(Exception e) {
                mensagem = "Erro ao conectar ao banco de dados: " + e.getMessage();
            } finally {
                try { if(rs != null) rs.close(); } catch(Exception e) {}
                try { if(stmt != null) stmt.close(); } catch(Exception e) {}
                try { if(conn != null) conn.close(); } catch(Exception e) {}
            }
        } else {
            mensagem = "Preencha todos os campos.";
        }
    } else if ("POST".equalsIgnoreCase(request.getMethod()) && request.getParameter("nova_senha") != null) {
        // Segunda etapa: alteração da senha
        String novaSenha = request.getParameter("nova_senha");
        email = request.getParameter("email");
        nome = request.getParameter("nome");
        dataNascimento = request.getParameter("data_nascimento");
        if (novaSenha != null && email != null && nome != null && dataNascimento != null) {
            Connection conn = null;
            PreparedStatement stmt = null;
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                conn = DriverManager.getConnection("jdbc:mysql://localhost/vacina", "root", "");
                String sql = "UPDATE usuario SET senha = ? WHERE email = ? AND nome = ? AND data_nascimento = ?";
                stmt = conn.prepareStatement(sql);
                stmt.setString(1, novaSenha);
                stmt.setString(2, email);
                stmt.setString(3, nome);
                stmt.setDate(4, java.sql.Date.valueOf(dataNascimento));
                int rows = stmt.executeUpdate();
                if (rows > 0) {
                    mensagem = "Senha alterada com sucesso! <a href='login.jsp'>Ir para o login</a>";
                } else {
                    mensagem = "Não foi possível alterar a senha. Verifique os dados.";
                }
            } catch(Exception e) {
                mensagem = "Erro ao conectar ao banco de dados: " + e.getMessage();
            } finally {
                try { if(stmt != null) stmt.close(); } catch(Exception e) {}
                try { if(conn != null) conn.close(); } catch(Exception e) {}
            }
        } else {
            mensagem = "Preencha todos os campos.";
        }
    }
%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>Recuperar Senha</title>
    <link rel="stylesheet" href="style/styleteste.css">
</head>
<body>
<%@ include file="include/header.jsp" %>
<main class="form-main">
    <div class="form-container">
        <h1>Recuperar Senha</h1>
        <% if(!mensagem.isEmpty()) { %>
            <div class="error-message"><%= mensagem %></div>
        <% } %>
        <% if(!podeAlterar && (mensagem.isEmpty() || mensagem.contains("Erro") || mensagem.contains("não encontrados"))) { %>
        <!-- Formulário de validação de dados -->
        <form action="recuperarSenha.jsp" method="post" class="recuperar-form">
            <label for="email">E-mail cadastrado:</label>
            <input type="email" id="email" name="email" required value="<%= email != null ? email : "" %>">

            <label for="nome">Nome:</label>
            <input type="text" id="nome" name="nome" required value="<%= nome != null ? nome : "" %>">

            <label for="data_nascimento">Data de nascimento:</label>
            <input type="date" id="data_nascimento" name="data_nascimento" required value="<%= dataNascimento != null ? dataNascimento : "" %>">

            <div class="form-buttons">
                <input type="submit" value="Validar Dados">
                <a href="login.jsp">Voltar ao Login</a>
                <% if(mensagem.contains("não encontrados")) { %>
                    <button type="button" onclick="window.location.href='recuperarSenha.jsp'">Tentar Novamente</button>
                <% } %>
            </div>
        </form>
        <% } else if(podeAlterar) { %>
        <!-- Formulário de alteração de senha -->
        <form action="recuperarSenha.jsp" method="post" class="recuperar-form">
            <input type="hidden" name="email" value="<%= email %>">
            <input type="hidden" name="nome" value="<%= nome %>">
            <input type="hidden" name="data_nascimento" value="<%= dataNascimento %>">

            <label for="nova_senha">Nova senha:</label>
            <input type="password" id="nova_senha" name="nova_senha" required>

            <div class="form-buttons">
                <input type="submit" value="Alterar Senha">
                <a href="login.jsp">Voltar ao Login</a>
            </div>
        </form>
        <% } %>
    </div>
</main>
<%@ include file="include/footer.jsp" %>
</body>
</html>