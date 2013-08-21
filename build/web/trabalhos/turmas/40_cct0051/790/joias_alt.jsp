<%@page import="br.com.divulgando.s40_cct0051.g790.model.AderecoJoia"%>
<%@page import="java.util.Collection"%>
<%@page import="br.com.divulgando.s40_cct0051.g790.model.TipoJoia"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="javax.swing.text.DateFormatter"%>
<%@page import="br.com.divulgando.s40_cct0051.g790.model.Joias"%>
<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Jóias Alterar</title>
    </head>
    <body>
        <h1>Jóias - Alterar</h1>
        <table align="center" width="650">
            <tr><td><%
if ( request.getParameter("alterado")!= null) { 
    if ( request.getParameter("incluida").equals("sim")) { 
        out.print("Alterado");
    } else { 
        out.print("Problema na Inclusão");
    }
}

if ( request.getParameter("erro")!= null) {
    out.print(request.getParameter("erro"));
}

%></td><td align="right"><a href="<%=request.getAttribute("baseHtml")%>/joias.jsp" >Voltar</a></td></tr>
        </table>
<%
    
    Joias joias = (Joias)request.getAttribute("joias");
    if( joias != null){
    
%>
        <form name="form1" method="get" action="<%= application.getContextPath() %>/g790_Facade.jsp?acao=joias_alt">
          <table width="400" border="0" align="center" cellpadding="5" cellspacing="0">
            <tr>
              <td>nome</td>
              <td><label for="ds_nome"></label>
                  <input name="ds_nome" type="text" id="ds_nome" size="10" 
                         maxlength="6" value="<%=joias.getDs_nome()%>"></td>
            </tr>
            <tr>
              <td>preço</td>
              <td><label for="vl_preco"></label>
              <input name="vl_preco" type="text" id="vl_preco" size="5" 
                     maxlength="4" value="<%=
                             Double.toString(joias.getVl_preco()).replace(".", ",") %>" ></td>
            </tr>
            <tr>
              <td>tipo jóia</td>
              <td><label for="fk_tipojoia"></label>
              <select name="fk_tipojoia" id="fk_tipojoia">
<%
try {
    Collection<TipoJoia> tiposjoia = (Collection<TipoJoia>)request.getAttribute("joias");
    for (TipoJoia tipoJoia : tiposjoia){
%>
                <option value="<%=tipoJoia.getId_tipojoia()%>" <%
                    if( tipoJoia.getId_tipojoia()== joias.getFk_tipojoia()){
                    %>selected="selected"<%
                    }
                    %> ><%= tipoJoia.getDs_tipojoia()%></option>

<%
    }
} catch (Exception e) {
    
%>
<option value="0" >Problema na recuperação dos Tipos</option>
<%
}
%>
              </select></td>

            </tr>
            <tr>
              <td>adereço jóia</td>
              <td><label for="fk_aderecojoia"></label>
                <select name="fk_aderecojoia" id="fk_aderecojoia">
<%
try {
    Collection<AderecoJoia> aderecosjoia = (Collection<AderecoJoia>)request.getAttribute("aderecojoia");
    for (AderecoJoia aderecojoia : aderecosjoia){
%>
                <option value="<%=aderecojoia.getId_adereco()%>" <%
                    if( aderecojoia.getId_adereco()== joias.getFk_aderecojoia()){
                    %>selected="selected"<%
                    }
                    %> ><%= aderecojoia.getDs_adereco()%></option>

<%
    }
} catch (Exception e) {
    
%>
<option value="0" >Problema na recuperação dos Adereços</option>
<%
}
%>
              </select></td>
            </tr>
            <tr>
              <td>data inclus&atilde;o</td>
              <td><label for="data_inclusao"></label>
              <input name="data_inclusao" type="text" id="dt_inclusao" 
                     size="13" maxlength="10" 
                     value="<%
                     DateFormat df = new SimpleDateFormat("dd/MM/yyyy");
                     String inclusao = df.format(joias.getDt_inclusao());
                     out.print(inclusao);
                     %>" ></td>
            </tr>
            <tr>
              <td colspan="2" align="center">
                  <input type="submit" name="button" id="button" value="Enviar">
                  <input type="hidden" name="cod" value="<%=joias.getId_joia()%>"
              </td>
            </tr>
          </table>
        </form>
<%
    }
%>
    </body>
</html>
