<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<%
    String mensagem = "";
    if("POST".equalsIgnoreCase(request.getMethod())) {
        String nome = request.getParameter("nome");
        String idadeStr = request.getParameter("idade");
        String email = request.getParameter("email");
        String sexo = request.getParameter("sexo");
        String dataNascimento = request.getParameter("data_nascimento");
        String cadastroAlerta = request.getParameter("cadastro_alerta");
        String senha = request.getParameter("senha");

        if(nome != null && idadeStr != null && email != null && sexo != null && dataNascimento != null && senha != null) {
            Connection conn = null;
            PreparedStatement stmt = null;
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                conn = DriverManager.getConnection("jdbc:mysql://localhost/vacina", "root", "");
                String sql = "INSERT INTO usuario (nome, idade, email, sexo, data_nascimento, cadastro_alerta, senha) VALUES (?, ?, ?, ?, ?, ?, ?)";
                stmt = conn.prepareStatement(sql);
                stmt.setString(1, nome);
                stmt.setInt(2, Integer.parseInt(idadeStr));
                stmt.setString(3, email);
                stmt.setString(4, sexo);
                stmt.setDate(5, java.sql.Date.valueOf(dataNascimento));
                stmt.setBoolean(6, cadastroAlerta != null && cadastroAlerta.equals("on"));
                stmt.setString(7, senha);
                stmt.executeUpdate();
                mensagem = "Cadastro realizado com sucesso!";
            } catch(Exception e) {
                mensagem = "Erro ao cadastrar: " + e.getMessage();
            } finally {
                try { if(stmt != null) stmt.close(); } catch(Exception e) {}
                try { if(conn != null) conn.close(); } catch(Exception e) {}
            }
        } else {
            mensagem = "Preencha todos os campos obrigatórios.";
        }
    }
%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>Cadastro de Usuário</title>
    <link rel="stylesheet" href="style/styleteste.css">
</head>
 <%@ include file="include/header.jsp" %>
<body>


    <main class="cadastro-main">
        <div class="cadastro-container">
            <h1>Cadastro de Usuário</h1>
            <% if(!mensagem.isEmpty()) { %>
                <div class="mensagem-cadastro"><%= mensagem %></div>
            <% } %>
            <form action="cadastro.jsp" method="post" class="cadastro-form">
                <label for="nome">Nome completo:</label>
                <input type="text" id="nome" name="nome" required>

                    <label for="idade">Idade:</label>
                <input type="number" id="idade" name="idade" min="0" required>

                    <label for="email">Login será seu E-mail:</label>
                <input type="email" id="email" name="email" required>

                 <label for="senha">Senha:</label>
                <input type="password" id="senha" name="senha" required>

                    <label for="sexo">Sexo:</label>
                <select id="sexo" name="sexo" required>
                    <option value="">Selecione</option>
                    <option value="Masculino">Masculino</option>
                    <option value="Feminino">Feminino</option>
                    <option value="Outro">Outro</option>
                </select>

                    <label for="data_nascimento">Data de Nascimento:</label>
                <input type="date" id="data_nascimento" name="data_nascimento" required>

                    <label class="checkbox-label">
                    <input type="checkbox" id="cadastro_alerta" name="cadastro_alerta">
                    Desejo receber alertas de vacinação ?
                </label>

                   

                    <div class="cadastro-buttons">
                    <input type="submit" value="Cadastrar">
                    <a href="login.jsp" class="voltar-btn">Voltar ao Login</a>
                </div>
            </form>
        </div>
    </main>
    <%@ include file="include/footer.jsp" %>
</body>
</html>