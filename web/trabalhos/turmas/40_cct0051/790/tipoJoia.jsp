
<%@page import="br.com.divulgando.s40_cct0051.g790.model.TipoJoia"%>
<%@page import="java.util.Collection"%>
<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<%@include file="valida.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Tipos de Jóias</title>
    </head>
    <body>
        <h1>Tipos de Jóias</h1>
        <p >&nbsp;</p>
        <table align="center" width="400" border="1">
        <tr> 
        	<td>Tipos de Jóias</td>
        </tr>
<%
    
try {
    Collection<TipoJoia> tiposJoia = (Collection<TipoJoia>)request.getAttribute("tipojoia");
    for (TipoJoia tipojoia : tiposJoia){
%>
        <tr> 
        	<td><%=tipojoia.getDs_tipojoia()%></td>
        </tr>
<%
    }
} catch (Exception e) {
    out.print(e.getMessage());
%>
Problema na recuperação dos Tipos
<%
}
%>
        </table>
        
    </body>
</html>
