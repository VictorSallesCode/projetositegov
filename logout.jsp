<%
    session.invalidate();
    response.sendRedirect("login.jsp");
%>
<form action="<%= request.getContextPath() %>/logout.jsp" method="post" style="display:inline;">