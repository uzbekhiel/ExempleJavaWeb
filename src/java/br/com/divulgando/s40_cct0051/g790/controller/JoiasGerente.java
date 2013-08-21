/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.divulgando.s40_cct0051.g790.controller;

import br.com.divulgando.s40_cct0051.g790.model.Joias;
import java.sql.*;
import java.util.ArrayList;
import java.util.Collection;



/**
 *
 * @author Alexandre
 */
public class JoiasGerente {
    /**
     * @param conn
     * @return
     * @throws SQLException
     */
    public static Collection<Joias> getJoias( Connection conn) throws SQLException{
        Collection<Joias> joias = new ArrayList<Joias>();
        String sql = "SELECT * FROM 790_joias ";
        Statement st = conn.createStatement();
        ResultSet rs = st.executeQuery(sql);
        while (rs.next()){
            joias.add(new Joias(
                                    rs.getInt("id_joia"),
                                    rs.getString("ds_nome"),
                                    rs.getDouble("vl_preco"),
                                    rs.getDate("dt_inclusao"),
                                    rs.getInt("fk_tipojoia"),
                                    rs.getInt("fk_aderecojoia")
                                    ));
        }
        return joias;
    }

    static Joias getJoias(Connection conn, int id) throws SQLException {
        Joias joias = null;

        String sql = "SELECT * FROM 790_joias WHERE id_joia = ?";
        PreparedStatement st = conn.prepareStatement(sql);
        st.setInt(1, id);
        ResultSet rs = st.executeQuery();
        if (rs.next()) {
            joias = new Joias(
                                rs.getInt("id_joia"),
                                rs.getString("ds_nome"),
                                rs.getDouble("vl_preco"),
                                rs.getDate("dt_inclusao"),
                                rs.getInt("fk_tipojoia"),
                                rs.getInt("fk_aderecojoia")                                
                        );
        }
        
        return joias;
    }
    
}
