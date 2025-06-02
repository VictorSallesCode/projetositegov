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
    <title>Login - VacinaGov</title>
</head>
<body>
    <h2>Login</h2>
    <form method="post" action="validalogin.jsp">
        <label>Email:</label>
        <input type="text" name="email" required><br>
        <label>Senha:</label>
        <input type="password" name="senha" required><br>
        <input type="submit" value="Entrar">
    </form>
    <p style="color:red;"><%= mensagem %></p>
    <%@ include file="include/footer.jsp" %>
</body>
</html>