/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.divulgando.s40_cct0051.g790.controller;

import java.io.IOException;
import java.sql.Connection;
import java.util.Collection;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import br.com.divulgando.s40_cct0051.g790.controller.pool.Conn;
import br.com.divulgando.s40_cct0051.g790.model.TipoJoia;
import br.com.divulgando.s40_cct0051.g790.model.Joias;
import br.com.divulgando.s40_cct0051.g790.model.AderecoJoia;

/**
 *
 * @author Alexandre
 */
@WebServlet(urlPatterns = {"/g790_Facade.jsp"})
public class Facade extends HttpServlet {

    /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, 
                                    HttpServletResponse response)
            throws ServletException, IOException {
        Connection conn;

        // define a estrutura das pastas
        // no site do Divulgando
        String contextPath = request.getContextPath();

        
        String grupo = "/trabalhos/turmas/40_cct0051/" + "790/";
        
        // Atributo de erro, usado para informar problemas
        request.removeAttribute("erro");
        request.removeAttribute("mensagem");
        
        // permite que se use o ambiente do NetBeans
        // e a Web, informando qual é o Facade e
        // diferenciando se está local ou na Web.
        String baseLink = request.getContextPath() + 
                            request.getServletPath();
        String baseGrupo = request.getContextPath() + grupo;

        //Variavel de sessao
        HttpSession session = request.getSession(); 
        
        // Página padrão
        String pagina = "meio.jsp";

        //Variável de controle 
        String acao = request.getParameter("acao");
        
        if( acao != null ) {
            acao = request.getParameter("acao");
            if (acao.equals("tipojoia")) {
                pagina = "tipoJoia.jsp";
                conn = Conn.getConnection();
                try {
                    Collection<TipoJoia> tipojoia = 
                                        TipoJoiaGerente.getTiposJoia(conn);
                    request.setAttribute("tipojoia", tipojoia);
                } catch (Exception e) {
                    request.setAttribute("erro", e.getMessage());
                }
                
            } else if (acao.equals("aderecojoia")){

                pagina = "aderecoJoia.jsp";
                conn = Conn.getConnection();
                try {
                    Collection<AderecoJoia> aderecojoia = 
                                        AderecoJoiaGerente.getAderecosJoia(conn);
                    request.setAttribute("aderecojoia", aderecojoia);
                } catch (Exception e) {
                    request.setAttribute("erro", e.getMessage());
                }
                
            } else if(acao.equals("joias_alt")){
                pagina = "joias_alt.jsp";
                StringBuilder erro = new StringBuilder();
                
                conn = Conn.getConnection();
                try {
                    int id = Integer.parseInt(request.getParameter("cod"));
                    Joias joias = JoiasGerente.getJoias(conn, id);
                    request.setAttribute("joias", joias);
                } catch (Exception e) {
                    erro.append( e.getMessage() );
                    erro.append("<br />");
                }
                try {
                    Collection<TipoJoia> tiposJoia = 
                                        TipoJoiaGerente.getTiposJoia(conn);
                    request.setAttribute("tipojoia", tiposJoia);
                } catch (Exception e) {
                    erro.append( e.getMessage() );
                    erro.append("<br />");
                }
                try {
                    Collection<AderecoJoia> aderecosJoia = 
                                        AderecoJoiaGerente.getAderecosJoia(conn);
                    request.setAttribute("aderecojoia", aderecosJoia);
                } catch (Exception e) {
                    erro.append( e.getMessage() );
                    erro.append("<br />");
                }
                if( erro.length() > 0) {
                    request.setAttribute("erro", erro);
                }
                
            }
        }
        
        RequestDispatcher rd = 
                            request.getRequestDispatcher(grupo + pagina);

        request.setAttribute("link", baseLink);
        request.setAttribute("baseHtml", baseGrupo);

        rd.forward(request, response);
        
        //response.sendRedirect(request.getContextPath() + grupo + pagina);
    }


    /**
     * Handles the HTTP
     * <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, 
                        HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP
     * <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, 
                        HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
