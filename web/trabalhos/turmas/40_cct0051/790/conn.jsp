<%@page import="java.sql.*" %>
<%
    
    Class.forName("com.mysql.jdbc.Driver");
/*
    Connection conn = DriverManager.getConnection(
            "jdbc:mysql://localhost:3306/divulgando05",
            "divulgando05", "cct0051");
*/
    Connection conn = DriverManager.getConnection(
            "jdbc:mysql://mysql.divulgando.com.br/divulgando05",
            "divulgando05", "cct0051");

%>