/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.divulgando.s40_cct0051.g790.controller;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Collection;
import br.com.divulgando.s40_cct0051.g790.model.TipoJoia;

/**
 *
 * @author Alexandre
 */
public class TipoJoiaGerente {
    /**
     * @param conn
     * @return
     * @throws SQLException
     */
    public static Collection<TipoJoia> getTiposJoia( Connection conn) throws SQLException{
        Collection<TipoJoia> tiposjoia = new ArrayList<TipoJoia>();
        String sql = "SELECT * FROM 790_tipojoia ";
        Statement st = conn.createStatement();
        ResultSet rs = st.executeQuery(sql);
        while (rs.next()){
            tiposjoia.add(new TipoJoia(
                                    rs.getInt("id_tipojoia"),
                                    rs.getString("ds_tipojoia")
                                    ));
        }
        return tiposjoia;
    }
}
