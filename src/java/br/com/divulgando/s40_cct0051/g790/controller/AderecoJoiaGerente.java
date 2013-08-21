/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.divulgando.s40_cct0051.g790.controller;

import br.com.divulgando.s40_cct0051.g790.model.AderecoJoia;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Collection;


/**
 *
 * @author Alexandre
 */
public class AderecoJoiaGerente {
    /**
     * @param conn
     * @return
     * @throws SQLException
     */
    public static Collection<AderecoJoia> getAderecosJoia( Connection conn) throws SQLException{
        Collection<AderecoJoia> aderecosjoia = new ArrayList<AderecoJoia>();
        String sql = "SELECT * FROM 790_aderecojoia ";
        Statement st = conn.createStatement();
        ResultSet rs = st.executeQuery(sql);
        while (rs.next()){
            aderecosjoia.add(new AderecoJoia(
                                    rs.getInt("id_aderecojoia"),
                                    rs.getString("ds_aderecojoia")
                                    ));
        }
        return aderecosjoia;
    }

}
