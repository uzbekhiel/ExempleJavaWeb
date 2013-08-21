<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<%@include  file="conn.jsp" %>
<%
String login = request.getParameter( "login" );
String senha = request.getParameter( "senha" );


String sql = "SELECT * FROM 790_usuario WHERE ds_usuario = ? AND ds_senha = MD5(?)";
PreparedStatement ps = conn.prepareStatement(sql);

ps.setString(1, login);
ps.setString(2, senha);


ResultSet rs = ps.executeQuery();
if (rs.next()){
    session.setAttribute("logado", "sim");
    response.sendRedirect("gerente.jsp");
} else {
    session.removeAttribute("logado");
    response.sendRedirect("login.jsp");
}

    
%>