<%

if (session.getAttribute("logado") != null) {
    session.setAttribute("logado", "sim");
} else {
    response.sendRedirect(request.getContextPath() + "/trabalhos/turmas/40_cct0051/767/limpa.html");    
}
%>