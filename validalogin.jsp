<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<%
    String email = request.getParameter("email");
    String senha = request.getParameter("senha");
    String mensagem = "";

    if(email != null && senha != null) {
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost/vacina", "root", "");
            String sql = "SELECT * FROM usuario WHERE email = ? AND senha = ?";
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, email);
            stmt.setString(2, senha);
            rs = stmt.executeQuery();
            if(rs.next()) {
                session.setAttribute("usuario", rs.getString("nome"));
                response.sendRedirect("home.jsp");
                return;
            } else {
                mensagem = "Email ou senha inválidos.";
            }
        } catch(Exception e) {
            mensagem = "Erro ao conectar ao banco de dados: " + e.getMessage();
        } finally {
            try { if(rs != null) rs.close(); } catch(Exception e) {}
            try { if(stmt != null) stmt.close(); } catch(Exception e) {}
            try { if(conn != null) conn.close(); } catch(Exception e) {}
        }
    }
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login do Alerta de Vacina</title>
     <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
      font-family: Arial, Helvetica, sans-serif;
    }

    body {
      background-color: #f9f9f9;
      min-height: 100vh;
    }

    header {
      width: 100%;
      height: 120px;
      display: flex;
      justify-content: space-between;
      align-items: center;
      background: linear-gradient(90deg, #007bff, #0056b3);
      padding: 20px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
    }

    .logo h1 {
      color: #fff;
      text-transform: uppercase;
    }

    nav ul {
      list-style: none;
      display: flex;
      gap: 20px;
    }

    nav ul li a {
      color: #fff;
      text-decoration: none;
      font-weight: bold;
      text-transform: uppercase;
      padding: 5px 12px;
      border-radius: 5px;
      transition: background 0.3s;
    }

    nav ul li a:hover {
      background: rgba(255, 255, 255, 0.2);
    }

    main {
      display: flex;
      justify-content: center;
      align-items: flex-start;
      padding-top: 50px;
    }

    .login-container {
      background-color: white;
      padding: 30px;
      border-radius: 10px;
      box-shadow: 0px 0px 10px rgba(0,0,0,0.1);
      width: 300px;
    }

    fieldset {
      border: none;
    }

    legend {
      font-weight: bold;
      margin-bottom: 10px;
    }

    label {
      display: block;
      margin-top: 10px;
    }

    input[type="text"],
    input[type="password"] {
      width: 100%;
      padding: 8px;
      margin-top: 5px;
    }

    .buttons {
      margin-top: 20px;
      display: flex;
      flex-direction: column;
      gap: 10px;
    }

    .buttons input,
    .buttons a {
      padding: 10px;
      text-align: center;
      text-decoration: none;
      color: white;
      background-color: #007bff;
      border: none;
      border-radius: 5px;
      cursor: pointer;
    }

    .buttons a {
      background-color: #28a745;
    }

    .buttons .recover {
      background-color: #ffc107;
      color: black;
    }

    .error-message {
      color: red;
      margin-bottom: 15px;
      text-align: center;
      font-weight: bold;
    }
  </style>
</head>
<body>

  <header>
    <div class="logo">
      <h1>GovVacinas</h1>
    </div>

    <nav>
      <ul>
        <li><a href="home.jsp">Início</a></li>
        <li><a href="cadastro.jsp">Cadastro</a></li>  
        <li><a href="login.jsp">Entrar</a></li>
      </ul>
    </nav>
  </header>

  <main>
    <div class="login-container">
      <form action="validalogin.jsp" method="post">
        <fieldset>
          <legend>Login</legend>

          <div id="error-display" class="error-message"></div>

          <label for="email">Usuário:</label>
          <input type="text" id="email" name="email" required>

          <label for="senha">Senha:</label>
          <input type="password" id="senha" name="senha" required>

          <div class="buttons">
            <input type="submit" value="Entrar">
            <a href="cadastro.jsp">Criar Cadastro</a>
            <a href="recuperarSenha.jsp" class="recover">Recuperar Senha</a>
          </div>
        </fieldset>
      </form>
    </div>
  </main>
<% if(!mensagem.isEmpty()) { %>
    <div class="error-message">
        O usuário ou a senha estão incorretos. Por favor, digite novamente seus dados de acesso.
    </div>
<% } %>

<%@ include file="include/footer.jsp" %>
</body>
</html>