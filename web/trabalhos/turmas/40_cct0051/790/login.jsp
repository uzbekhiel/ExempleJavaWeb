<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<%
session.removeAttribute("logado");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Jóias</title>
    </head>
    <body>
        <h1>Jóias</h1>
        <p>&nbsp;</p>
        <form name="form1" method="post" action="login_ok.jsp">
        <table width="400" border="0" align="center" cellpadding="0" cellspacing="0">
          <tr>
            <td>Login
            </td>
            <td><input type="text" name="login" id="login"></td>
          </tr>
          <tr>
            <td>Senha</td>
            <td>
            <input type="password" name="senha" id="senha"></td>
          </tr>
          <tr>
            <td colspan="2" align="center"><input type="submit" name="btn_enviar" id="btn_enviar" value="Enviar"></td>
          </tr>
        </table>

    </form>
<p>&nbsp;</p>
        
    </body>
</html>
