<%
    session.invalidate();
    response.sendRedirect("login.jsp");
%>
<style>
.welcome-container {
  text-align: right;
  margin: 10px 30px 0 0;
  font-size: 1em;
}
.welcome-container button {
  margin-left: 15px;
  background: #007bff;
  color: #fff;
  border: none;
  border-radius: 5px;
  padding: 5px 15px;
  cursor: pointer;
  font-size: 1em;
}
.welcome-container button:hover {
  background: #0056b3;
}
</style>