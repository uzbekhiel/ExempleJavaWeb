<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<%@include file="valida.jsp" %>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.GregorianCalendar" %>


<%@include  file="conn.jsp" %>
<%
String ds_nome = request.getParameter( "ds_nome" );
double vl_preco = 0.0;
try {
    String sVl_Preco = request.getParameter( "vl_preco" ).replace(",", ".");
    vl_preco = Double.parseDouble( sVl_Preco );
} catch ( Exception e ) {
}
int fk_tipojoia = 0;
try {
    fk_tipojoia = Integer.parseInt(request.getParameter( "fk_tipojoia" ));
} catch ( Exception e ) {
}
int fk_aderecojoia = 0;
try {
    fk_aderecojoia = Integer.parseInt(request.getParameter( "fk_aderecojoia" ));
} catch ( Exception e ) {
}

GregorianCalendar calendar = new GregorianCalendar();  
java.util.Date dataBase = calendar.getTime();
java.sql.Date dt_Inclusao = new java.sql.Date(dataBase.getTime());
String resposta = "";
try {
    String partes[] = request.getParameter( "dt_inclusao" ).split("/");
    DateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
    dataBase = formatter.parse( partes[2]+ "-" + partes[1] + "-" + partes[0] );
    dt_Inclusao = new java.sql.Date(dataBase.getTime());
} catch ( Exception e ) {
    resposta = e.getMessage();
}


String sql = "INSERT INTO 790_joias ( ds_nome, vl_preco,dt_inclusao,fk_tipojoia, fk_aderecojoia ) " +
					"VALUES (?, ?, ?, ?, ?)";
PreparedStatement ps = conn.prepareStatement(sql);

ps.setString( 1, ds_nome);
ps.setDouble(2, vl_preco);
ps.setDate(3, dt_Inclusao);
ps.setInt(4, fk_tipojoia);
ps.setInt(5, fk_aderecojoia);
int ret = ps.executeUpdate();

if ( ret == 1 ){
        response.sendRedirect("joias_inc.jsp?incluida=sim&resp=" + resposta);
} else {
        response.sendRedirect("joias_inc.jsp?incluida=nao");
}
    
%>