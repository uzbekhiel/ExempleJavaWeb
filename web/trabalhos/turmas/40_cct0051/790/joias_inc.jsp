<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<%@include file="valida.jsp" %>
<%@include file="conn.jsp" %>
<%

String sql = "SELECT * FROM 790_tipojoia ";
Statement stTipoJoia = conn.createStatement();
ResultSet rsTipoJoia =  stTipoJoia.executeQuery(sql);

sql = "SELECT * FROM 790_aderecojoia ";
Statement stAderecoJoia = conn.createStatement();
ResultSet rsAderecoJoia = stAderecoJoia.executeQuery(sql);

%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Jóias Incluir</title>
    </head>
    <body>
        <h1>Jóias - Incluir</h1>
        <table align="center" width="650">
            <tr><td><%
if ( request.getParameter("incluida")!= null) { 
    if ( request.getParameter("incluida").equals("sim")) { 
        out.print("Incluído");
    } else { 
        out.print("Problema na Inclusão");
    }
}
    %></td><td align="right"><a href="joias.jsp" >Voltar</a></td></tr>
        </table>

        <form name="form1" method="get" action="joias_inc_ok.jsp">
          <table width="400" border="0" align="center" cellpadding="5" cellspacing="0">
            <tr>
              <td>Nome</td>
              <td><label for="ds_nome"></label>
              <input name="ds_nome" type="text" id="ds_nome" size="10" maxlength="6"></td>
            </tr>
            <tr>
              <td>Preço</td>
              <td><label for="vl_preco"></label>
              <input name="vl_preco" type="text" id="vl_preco" size="5" maxlength="4"></td>
            </tr>
            <tr>
              <td>Tipo de jóia</td>
              <td><label for="fk_tipojoia"></label>
                <select name="fk_tipojoia" id="fk_tipojoia">
<%
while (rsTipoJoia.next()) {
%>
                    <option value="<%=rsTipoJoia.getInt("id_tipojoia") %>"><%= rsTipoJoia.getString("ds_tipojoia") %></option>
<%
}
%>
              </select></td>
            </tr>
            <tr>
              <td>fundo</td>
              <td><label for="fk_aderecojoia"></label>
                <select name="fk_aderecojoia" id="fk_aderecojoia">
<%
while (rsAderecoJoia.next()) {
%>
                  <option value="<%=rsAderecoJoia.getInt("id_aderecojoia") %>"><%=rsAderecoJoia.getString("ds_aderecojoia") %></option>
<%
}
%>
              </select></td>
            </tr>
            <tr>
              <td>data inclus&atilde;o</td>
              <td><label for="dt_inclusao"></label>
              <input name="dt_inclusao" type="text" id="dt_inclusao" size="13" maxlength="10"></td>
            </tr>
            <tr>
              <td colspan="2" align="center"><input type="submit" name="button" id="button" value="Enviar"></td>
            </tr>
          </table>
        </form>
    </body>
</html>
<%
rsTipoJoia.close();
rsAderecoJoia.close();
conn.close();
%>