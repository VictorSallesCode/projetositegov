<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="pt-br">
<head>
  <meta charset="utf-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <meta name="description" content="Sistema de controle de vacinas" />
  <title>Login do Alerta de Vacina</title>
  <link rel="stylesheet" href="style/styleteste.css" />
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
      padding: 15px;
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
<%@ include file="include/header.jsp" %>

  <main class="form-main">
    <div class="form-container">
      <form action="validalogin.jsp" method="post">
        <fieldset>
          <h1>Login</h1>

          <div id="error-display" class="error-message"></div>

          <label for="email">Usuário:</label>
          <input type="text" id="email" name="email" required>

          <label for="senha">Senha:</label>
          <input type="password" id="senha" name="senha" required>

          <div class="form-buttons">
            <input type="submit" value="Entrar">
            <a href="cadastro.jsp">Criar Cadastro</a>
            <a href="recuperarSenha.jsp" class="recover">Recuperar Senha</a>
          </div>
        </fieldset>
      </form>
    </div>
  </main>
  
<%@ include file="include/footer.jsp" %>
</body>
</html>