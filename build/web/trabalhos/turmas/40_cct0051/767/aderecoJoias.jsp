
<%@page import="br.com.divulgando.s40_cct0051.g767.model.AderecoJoia"%>
<%@page import="java.util.Collection"%>
<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<%@include file="valida.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Adereços de Jóias</title>
    </head>
    <body>
        <h1>Adereços de Jóias</h1>
        <p >&nbsp;</p>
        <table align="center" width="400" border="1">
        <tr> 
        	<td>Adereços de Jóias</td>
        </tr>
<%
    
try {
    Collection<AderecoJoia> aderecosJoia = (Collection<AderecoJoia>)request.getAttribute("aderecojoia");
    for (AderecoJoia aderecojoia : aderecosJoia){
%>
        <tr> 
        	<td><%=aderecojoia.getDs_adereco()%></td>
        </tr>
<%
    }
} catch (Exception e) {
    
%>
Problema na recuperação dos Adereços
<%
}
%>
        </table>
        
    </body>
</html>
