<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<%@include file="valida.jsp" %>
<%@include  file="conn.jsp" %>
<%


String sql = "SELECT * FROM 790_joias "
        + " LEFT OUTER JOIN 790_tipojoia ON 790_joias.fk_tipojoia = 790_tipojoia.id_tipojoia "
        + " LEFT OUTER JOIN 790_aderecojoia ON 790_joias.fk_aderecojoia = 790_aderecojoia.id_aderecojoia "
        + " ORDER BY ds_nome";
Statement ps = conn.createStatement();

ResultSet rs = ps.executeQuery(sql);
    
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Jóias - Listagem</h1>
        <table align="center" width="650">
        	<tr><td align="right"><a href="joias_inc.jsp" >Incluir</a></td></tr>
        </table>
        <table align="center" width="650" border="1">
        <tr> 
        	<td>Nomes</td><td>Preço</td><td>Tipo</td><td>Adereço</td>
        </tr>
<%
while(rs.next()) {
%>
        <tr> 
            <td><a href="<%= application.getContextPath() %>/g790_Facade.jsp?acao=joias_alt&cod=<%= rs.getInt("id_joia") %>" ><%=rs.getString("ds_nome") %></a></td>
            <td><%=rs.getDouble("vl_preco") %></td>
            <td><%=rs.getString("ds_tipojoia") %></td>
            <td><%=rs.getString("ds_aderecojoia") %></td>
        </tr>
<%
}
%>
        </table>
    </body>
</html>
<%
rs.close();
conn.close();
%>