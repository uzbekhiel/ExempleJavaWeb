<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<%@include file="valida.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>J�ias</title>
    </head>
    <body>
        <table width="200"> 
        <tr >
          <td><a href="joias.jsp" target="meio">J�ias</a></td>
          <td><a 
             href="<%= application.getContextPath() %>/g790_Facade.jsp?acao=tipojoia" 
           target="meio">Tipos</a></td>
           <td><a 
             href="<%= application.getContextPath() %>/g790_Facade.jsp?acao=aderecojoia" 
          target="meio">Adere�os</a></td>
           <td><a 
             href="limpa.html" 
          target="meio">Sair</a></td></tr>
        </table>
    </body>
</html>
